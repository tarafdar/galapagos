import sys
import os
import inspect
from mpi import mpiRank
import numpy as np
import math    
import struct
import json
import binascii


def make_dummy_test(weights_file, input_file):
    
    ifm_sw = np.array([1] * 288)
    weights_sw = np.array([1] * 64)
    i = open(input_file, "w")
    for ifm in ifm_sw:
        i.write(str(ifm) + ' ')
    
    w = open(weight_file, "w")
    for weight in weights_sw:
        w.write(str(weight) + ' ')



#from stackoverflow: https://stackoverflow.com/questions/23624212/how-to-convert-a-float-into-hex
def float_to_hex(f):
    
    f = float(f)
    b = bytearray(struct.pack("!f", f))
    return b

class Telepathy(mpiRank):
    def __init__(self, jsonFile):


        self.cmd = None

        with open(jsonFile) as f:
            data = json.load(f)
       
        self.parameters = {"name": {"output": data['comm']['ports']['output'], "input": data['comm']['ports']['input']},
                           "mac_table": data['comm']['mac_table'],
                           "comm": data['comm']['protocol'],
                           "rank": data['comm']['src_rank'],
                           "config_hardware": data['config_hardware'],
                           "neural_net" : data['neural_net'],
                           "dst_ranks": data['comm']['dst_ranks'],
                }
        mpiRank.__init__(self, self.parameters)
        mpiRank.start(self) 
        self._declareRankIndexedArrays()

        for rank_id, rank in enumerate(self.parameters['neural_net']):
            
            self._initRankIndexedArrays(rank_id)

            #the first four bytes is the number of commands per rank

            for cmdIdx, cmd in enumerate(rank):
                rank[cmdIdx] = self._setBiasWeightAddr(rank_id, cmdIdx, cmd)
        
        
                    
                    
            self.parameters['dma_baseaddr'] = self.biases_weights_addr
            for cmdIdx, cmd in enumerate(rank):
                rank[cmdIdx] = self._createDict(rank_id, cmdIdx, cmd)
                self._serializeDMA(rank_id, cmd)
                self._serializeCmd(rank_id, cmd, cmdIdx)
                self. _getInputOutputAddressesPerRank(rank_id, cmd, cmdIdx, len(rank))

            
            self._sendParametersCommand(rank_id)


    def _declareRankIndexedArrays(self):
        self.dma_mem_info = []
        self.parameterBuffer = []
        self.configDMA = []
        self.biases_weights_addr = []
        self.configParameters = []
        self.cmd = []

    def _initRankIndexedArrays(self, rank_id):
        self.dma_mem_info.append(float_to_hex(0))
        self.parameterBuffer.append([])
        self.configDMA.append(bytes(b''))
        self.biases_weights_addr.append(0)
        self.configParameters.append(bytes(b''))
        self.cmd.append(float_to_hex(1))




    def _readAsciiFile(self, fileName):
        
        with open(fileName, 'r') as fobj:
           ascii_array = [[int(num) for num in line.split()] for line in fobj]
        return np.array(ascii_array, dtype="int16")




    def _getInputOutputAddressesPerRank(self, rank_id, cmd, cmdIdx, totalCmd):
                
        #first cmd in rank get input dma info


        if cmdIdx == 0:
            self.dma_mem_info[rank_id] = float_to_hex(self.parameters['dma_baseaddr'][rank_id])
            self.dma_mem_info[rank_id] = bytearray(self.dma_mem_info[rank_id] + float_to_hex(cmd['ifm_width'] * cmd['ifm_height'] * cmd['ifm_depth']))
        #last cmd in rank get output dma info
        elif cmdIdx == totalCmd:    
            self.dma_mem_info[rank_id]= bytearray(self.dma_mem_info[rank_id] + float_to_hex(self.parameter['dma_baseaddr'][rank_id]))
            self.dma_mem_info[rank_id] = bytearray(self.dma_mem_info[rank_id] + float_to_hex(cmd['ofm_width'] * cmd['ofm_height'] * cmd['ofm_depth']))




    def _sendParametersCommand(self, rank_id, CONFIG_PARAMETER_MAX=(0x1000000-1)):
        
        dst_rank = self.parameters['dst_ranks'][rank_id]

        #send num commands
        self.mpi_send(float_to_hex(len(self.parameters['neural_net'][rank_id])), 'numCmds', dst_rank)
        #send command
        self.mpi_send(self.cmd[rank_id], 'sendCmd', dst_rank) 
        #send parameter dma info

        num_params = math.ceil(float(len(self.configParameters))/float(CONFIG_PARAMETER_MAX))

        self.mpi_send(float_to_hex(num_params), 'numTransactionsParameters', dst_rank)
        
        self.mpi_send(self.configDMA[rank_id], 'configureParameterAddress', dst_rank) 
        #dma parameters
       

        for buff in self.parameterBuffer[rank_id]:
            self.mpi_send(buff, 'dmaParameters', dst_rank) 

        self.mpi_send(self.dma_mem_info[rank_id], 'memInfo', dst_rank)

    def _serializeDMA(self, rank_id, cmd, CONFIG_PARAMETER_MAX=(0x1000000-1)):
        
        
        rank_base_addr = self.parameters['dma_baseaddr'][rank_id]
        num_params = math.ceil(float(len(self.configParameters))/float(CONFIG_PARAMETER_MAX))
        
        
        lenSent = 0
        self.configParameters[rank_id] = np.array(self.configParameters[rank_id]).tobytes()
        
        if num_params > 1:
            for i in range(0, len(self.configParameters[rank_id]), CONFIG_PARAMETER_MAX):
                self.configDMA[rank_id] = bytearray(self.configDMA[rank_id] + float_to_hex(rank_base_addr))
                self.configDMA[rank_id] = bytearray(self.configDMA[rank_id] + float_to_hex(CONFIG_PARAMETER_MAX))


                rank_base_addr = rank_base_addr + CONFIG_PARAMETER_MAX
            
            for i in range(0, len(self.configParameters[rank_id]), CONFIG_PARAMETER_MAX):
                self.parameterBuffer[rank_id].append(self.configParameters[rank_id][i:i+CONFIG_PARAMETER_MAX])
                lenSent = lenSent + CONFIG_PARAMETER_MAX


        self.configDMA[rank_id] = bytearray(self.configDMA[rank_id] + float_to_hex(rank_base_addr))
        self.configDMA[rank_id] = bytearray(self.configDMA[rank_id] + float_to_hex(len(self.configParameters[rank_id])-lenSent))

        self.parameterBuffer[rank_id].append(self.configParameters[rank_id][lenSent:len(self.configParameters[rank_id])])

        self.configDMA[rank_id] =  np.array(self.configDMA).tobytes()


    def _setBiasWeightAddr(self, rank_id, cmdIdx, cmd):
       
        cmd['biases_weights_baseaddr'] = self.biases_weights_addr[rank_id]
        cmd.update({"weights": self._readAsciiFile(cmd['weight_file'])})
        
        cmd.update({"weights_baseaddr": self.biases_weights_addr[rank_id]})

        if cmd['bias'] == 1:
            cmd.update({"biases": self._readAsciiFile(cmd['bias_file'])})
            cmd.update({"configParameters" :cmd['biases'].tobytes() + cmd['weights'].tobytes()})
            self.biases_weights_addr[rank_id] = self.biases_weights_addr[rank_id] + len(cmd['biases'].tobytes())  + len(cmd['weights'].tobytes()) 
        else:
            cmd.update({"configParameters" : cmd['weights'].tobytes()})
            self.biases_weights_addr[rank_id] = self.biases_weights_addr[rank_id] + len(cmd['weights'].tobytes()) 
      
        
        self.configParameters[rank_id] = bytearray(self.configParameters[rank_id] + cmd['configParameters'])


        return cmd



    def _createDict(self, rank_id, cmdIdx, cmd):
        cmd['ifm_baseaddr'] = self.parameters['dma_baseaddr'][rank_id]
        #print (self.parameters['dma_baseaddr'][rank_id])
        self.parameters['dma_baseaddr'][rank_id] = self.parameters['dma_baseaddr'][rank_id] + cmd['ifm_width'] * cmd['ifm_height'] * cmd['ifm_depth'] 
        cmd['ofm_baseaddr'] = self.parameters['dma_baseaddr'][rank_id]
        

        cmd.update({"ofm_height" : math.ceil((cmd['ifm_height'] + 2 * cmd['pad'] - cmd['kernel_height']) / cmd['stride'] + 1)})
        cmd.update({"ofm_width": math.ceil((cmd['ifm_width'] + 2 * cmd['pad'] - cmd['kernel_width']) /cmd['stride'] + 1)})
        cmd.update({"ifm_slices": math.ceil(cmd['ifm_depth'] / self.parameters['config_hardware']['C_NUM_OF_ROWS'])})
        cmd.update({"ofm_slices": math.ceil(cmd['output_channels'] / self.parameters['config_hardware']['C_NUM_OF_ROWS'])})
        cmd.update({"ifm_packet_length": cmd['ifm_width']*cmd['ifm_height']*cmd['ifm_slices']})
        cmd.update({"ifm_depth_offset": cmd['ifm_width']*cmd['ifm_height']*cmd['ifm_depth']})
        cmd.update({"weights_packet_length": cmd['kernel_height'] * cmd['kernel_width'] * cmd['ifm_depth']})
        cmd.update({"weight_depth_offset" : cmd['kernel_height'] * cmd['kernel_width'] * cmd['ifm_depth'] * self.parameters['config_hardware']['C_NUM_OF_COLS']}) 
        cmd.update({"pool_input_height" : cmd['ofm_height']})
        cmd.update({"pool_input_width"  : cmd['ofm_width']})
        cmd.update({"pool_input_height" : cmd['ofm_height']})
        cmd.update({"pool_input_width"  : cmd['ofm_width']})
        try:
            cmd.update({"pool_output_height" : math.ceil(
                ((cmd['pool_input_height'] - cmd['pool_kernel_height']) / 1.0) / cmd['pool_stride'] / 1.0 + 1)})
            cmd.update({"pool_output_width" : math.ceil(
                ((cmd['pool_input_width'] - cmd['pool_kernel_width']) / 1.0) / cmd['pool_stride'] / 1.0 + 1)})
        except ZeroDivisionError:
            cmd.update({"pool_output_height" : 0}) 
            cmd.update({"pool_output_width" : 0}) 
            # pool_stride has to be a multiple of 2
        if (cmd['pool_stride'] != 0 \
                and cmd['pool_output_height'] > 5 and cmd['pool_output_width'] > 5 \
                and cmd['pool_output_width'] * cmd['pool_kernel_width'] < 1 << 9 \
                and cmd['pool_output_width'] < 1 << 8):

            # WHEN MAXPOOL IS ENABLED, THE OUTPUT SIZE WILL BE SMALLER
            # THERFORE, THE OFM_PACKET_LENGTH HAS TO BE ADJUSTED ACCORDINGLY
            cmd.update({"ofm_packet_length": cmd['pool_output_height'] * cmd['pool_output_width'] * cmd['ofm_slices']})
        else:
            cmd['pool_output_height'] = 0
            cmd['pool_output_width'] = 0
            cmd['pool_kernel_height'] = 0
            cmd['pool_kernel_width'] = 0
            cmd['pool_stride'] = 0
            cmd.update({"ofm_packet_length": cmd['ofm_height'] * cmd['ofm_width'] * cmd['ofm_slices']})

        return cmd

    def _serializeCmd(self, rank_id, cmd, cmdIdx):
       
                

        cmd_conv = np.array([cmd['ifm_height'], 
                             cmd['ifm_width'], 
                             cmd['kernel_height'],
                             cmd['kernel_width'], 
                             cmd['stride'], 
                             cmd['pad'], 
                             cmd['ofm_height'],
                             cmd['ofm_width'], 
                             cmd['ifm_slices'], 
                             cmd['ofm_slices'],
                             cmd['ofm_fragments'], 
                             cmd['ifm_mem_fragments']
                             ],
                            dtype='uint16')
        cmd_addr = np.array([
                            cmd['ifm_baseaddr'], 
                            cmd['ifm_packet_length'],
                            cmd['ifm_depth_offset'], 
                            cmd['ifm_height_offset'],
                            cmd['ofm_baseaddr'], 
                            cmd['ofm_packet_length'],
                            cmd['weights_baseaddr'], 
                            cmd['weights_packet_length'],
                            cmd['weight_depth_offset']
                            ],
                            dtype='uint32')
        cmd_mode = np.array([0, 0], dtype='uint16')
        cmd_pool = np.array([0, 
                             1, 
                             cmd['pool_input_height'], 
                             cmd['pool_input_width'],
                             cmd['pool_kernel_height'], 
                             cmd['pool_kernel_width'],
                             cmd['pool_output_height'], 
                             cmd['pool_output_width'],
                             cmd['pool_stride'], 
                             0],
                            dtype='uint16')
        cmd_relu_bias = np.array([
                                cmd['relu'],
                                cmd['bias']
                                ],
                                dtype='uint8')
        cmd_bias_addr = np.array([
                                cmd['biases_weights_baseaddr']
                                ],
                                dtype='uint32'
                                )
        cmd_rsvd = np.zeros((11,), dtype='uint32')

        cmd_serial = cmd_conv.tobytes() + \
                 cmd_addr.tobytes() + \
                 cmd_mode.tobytes() + \
                 cmd_pool.tobytes() + \
                 cmd_rsvd.tobytes()

        cmd_serial = bytearray(cmd_serial)

        if cmdIdx == 0:
            if ('BATCH_SIZE' in self.parameters['config_hardware']): 
                self.cmd[rank_id] = float_to_hex(self.parameters['config_hardware']['BATCH_SIZE'])
            self.cmd[rank_id] = bytearray(self.cmd[rank_id] + float_to_hex(len(self.parameters['dst_ranks'])))


        self.cmd[rank_id] = bytearray(self.cmd[rank_id] + cmd_serial)
        

    def runDarius(self, cumulativeCycleCount, transName, input_file, rank_id):
        
        self.DMAIn(cumulativeCycleCount, transName, input_file, rank_id)
        self.DMAOut(transName, rank_id)


    def _getRankID(self, rank):
        
        rank_id = None
        for rank_idx, neural_net in enumerate(self.parameters['neural_net']):
            if rank == neural_net['dst_rank']:
                rank_id = rank_idx 
                break
        return rank_id

    def DMAIn(self, cumulativeCycleCount, transName, input_file, rank):
       
        rank_id = self._getRankID(rank)
        cumulativeCycleCountBin = float_to_hex(cumulativeCycleCount)
        self.mpi_send(cumulativeCycleCountBin, transName + '_CUMULATIVE_CYCLE_COUNT', self.parameters['neural_net'][rank_id]['dst_rank']) 
       
        dmaInput = None
        for cmd in self.parameters['neural_net'][rank_id]:
            with open(input_file[rank_id], 'r') as fobj:
                dmaInput = [[int(num) for num in line.split()] for line in fobj]
            if dmaInput == None:
                dmaInput = np.array(dmaInput, dtype="int16")
            else:
                dmaInput.extend(np.array(dmaInput, dtype="int16"))
        self.mpi_send(bytearray(dmaInput.tobytes()), transName + '_DMA_INPUT', self.parameters['neural_net'][rank_id]['dst_rank']) 
         
    def DMAOut(self, transName, rank_id):
        rank_id = self._getRankID(rank)

        recvLength = 0
        for cmd in self.parameters['neural_net'][rank_id]:
            recvLength = recvLength + cmd['ofm_packet_width']
        self.mpi_recv(recvLength, transName + '_DMA_OUTPUT', self.parameters['neural_net'][rank_id]['dst_rank'])
        

    def close(self):
        mpiRank.stop(self)


#test for this module
if __name__=="__main__":
    
  

    if len(sys.argv) == 1:
        rank0 = Telepathy('TinySenpai_sim.json')
    else:
        rank0 = Telepathy(sys.argv[1])
    
    rank0.close()
                            

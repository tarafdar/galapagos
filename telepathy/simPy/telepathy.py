import sys
import os
import math
import inspect
sys.path.append(os.environ['HMPI_PATH'] + '/simPy')
from mpi import mpiRank
import numpy as np
import math    
import struct
import json



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
    return bytearray.fromhex(hex(struct.unpack('<I', struct.pack('<f', f))[0])[2:])

class Telepathy(mpiRank):
    
    def __init__(self, jsonFile):

        with open(jsonFile) as f:
            data = json.load(f)
       
        self.parameters = {"name": {"output": data['comm']['ports']['output'], "input": data['comm']['ports']['input']},
                           "mac_table": data['comm']['mac_table'],
                           "rank": data['comm']['src_rank'],
                           "config_hardware": data['config_hardware'],
                           "neural_net" : data['neural_net']
                }
        mpiRank.__init__(self, data['comm']['protocol'], self.parameters)
       

        for rank_id, rank in enumerate(self.parameters['neural_net']): 
            self.parameters['neural_net'][rank_id]['ifm_baseaddr'] = int(self.parameters['neural_net'][rank_id]['ifm_baseaddr'], 16)
            self.parameters['neural_net'][rank_id]['ofm_baseaddr'] = int(self.parameters['neural_net'][rank_id]['ofm_baseaddr'], 16)
            self.parameters['neural_net'][rank_id]['biases_weights_baseaddr'] = int(self.parameters['neural_net'][rank_id]['biases_weights_baseaddr'], 16)
            
            with open(rank['weight_file'], 'r') as fobj:
               weights = [[int(num) for num in line.split()] for line in fobj]
            self.parameters['neural_net'][rank_id].update({"weights": np.array(weights, dtype="int16")})
            
            if self.parameters['neural_net'][rank_id]['bias'] == 1:
                with open(self.parameters['neural_net']['bias_file'], 'r') as fobj:
                   biases = [[int(num) for num in line.split()] for line in fobj]
                self.parameters['neural_net'][rank_id].update({"biases": np.array(biases, dtype="int16")})
                self.parameters['neural_net'][rank_id].update({"configParameters" :self.parameters['neural_net'][rank_id]['biases'].tobytes() + self.parameters['neural_net'][rank_id]['weights'].tobytes()})
                self.parameters['neural_net'][rank_id].update({"weights_baseaddr": self.parameters['neural_net'][rank_id]["biases_weights_baseaddr"] + len(self.parameters['neural_net'][rank_id]['biases'].tobytes())})
            else:
                self.parameters['neural_net'][rank_id].update({"configParameters" : self.parameters['neural_net'][rank_id]['weights'].tobytes()})
                self.parameters['neural_net'][rank_id].update({"weights_baseaddr": self.parameters['neural_net'][rank_id]["biases_weights_baseaddr"]})
            self.parameters['neural_net'][rank_id].update({"ofm_height" : math.ceil((self.parameters['neural_net'][rank_id]['ifm_height'] + 2 * self.parameters['neural_net'][rank_id]['pad'] - self.parameters['neural_net'][rank_id]['kernel_height']) / self.parameters['neural_net'][rank_id]['stride'] + 1)})
            self.parameters['neural_net'][rank_id].update({"ofm_width": math.ceil((self.parameters['neural_net'][rank_id]['ifm_width'] + 2 * self.parameters['neural_net'][rank_id]['pad'] - self.parameters['neural_net'][rank_id]['kernel_width']) / self.parameters['neural_net'][rank_id]['stride'] + 1)})
            self.parameters['neural_net'][rank_id].update({"ifm_slices": math.ceil(self.parameters['neural_net'][rank_id]['ifm_depth'] / self.parameters['config_hardware']['C_NUM_OF_ROWS'])})
            self.parameters['neural_net'][rank_id].update({"ofm_slices": math.ceil(self.parameters['neural_net'][rank_id]['output_channels'] / self.parameters['config_hardware']['C_NUM_OF_ROWS'])})
            self.parameters['neural_net'][rank_id].update({"ifm_packet_length": self.parameters['neural_net'][rank_id]['ifm_width']*self.parameters['neural_net'][rank_id]['ifm_height']*self.parameters['neural_net'][rank_id]['ifm_slices']})
            self.parameters['neural_net'][rank_id].update({"ifm_depth_offset": self.parameters['neural_net'][rank_id]['ifm_width']*self.parameters['neural_net'][rank_id]['ifm_height']*self.parameters['neural_net'][rank_id]['ifm_depth']})
            self.parameters['neural_net'][rank_id].update({"weights_packet_length": self.parameters['neural_net'][rank_id]['kernel_height'] * self.parameters['neural_net'][rank_id]['kernel_width'] * self.parameters['neural_net'][rank_id]['ifm_depth']})
            self.parameters['neural_net'][rank_id].update({"weight_depth_offset" : self.parameters['neural_net'][rank_id]['kernel_height'] * self.parameters['neural_net'][rank_id]['kernel_width'] * self.parameters['neural_net'][rank_id]['ifm_depth'] * self.parameters['config_hardware']['C_NUM_OF_COLS']}) 
            self.parameters['neural_net'][rank_id].update({"pool_input_height" : self.parameters['neural_net'][rank_id]['ofm_height']})
            self.parameters['neural_net'][rank_id].update({"pool_input_width" : self.parameters['neural_net'][rank_id]['ofm_width']})
            self.parameters['neural_net'][rank_id].update({"pool_input_height" : self.parameters['neural_net'][rank_id]['ofm_height']})
            self.parameters['neural_net'][rank_id].update({"pool_input_width" : self.parameters['neural_net'][rank_id]['ofm_width']})
            try:
                self.parameters['neural_net'][rank_id].update({"pool_output_height" : math.ceil(
                    ((self.parameters['neural_net'][rank_id]['pool_input_height'] - self.parameters['neural_net'][rank_id]['pool_kernel_height']) / 1.0) / self.parameters['neural_net'][rank_id]['pool_stride'] / 1.0 + 1)})
                self.parameters['neural_net'][rank_id].update({"pool_output_width" : math.ceil(
                    ((self.parameters['neural_net'][rank_id]['pool_input_width'] - self.parameters['neural_net'][rank_id]['pool_kernel_width']) / 1.0) / self.parameters['neural_net'][rank_id]['pool_stride'] / 1.0 + 1)})
            except ZeroDivisionError:
                self.parameters['neural_net'][rank_id].update({"pool_output_height" : 0}) 
                self.parameters['neural_net'][rank_id].update({"pool_output_width" : 0}) 
                # pool_stride has to be a multiple of 2
            if (self.parameters['neural_net'][rank_id]['pool_stride'] != 0 \
                    and self.parameters['neural_net'][rank_id]['pool_output_height'] > 5 and self.parameters['neural_net'][rank_id]['pool_output_width'] > 5 \
                    and self.parameters['neural_net'][rank_id]['pool_output_width'] * self.parameters['neural_net'][rank_id]['pool_kernel_width'] < 1 << 9 \
                    and self.parameters['neural_net'][rank_id]['pool_output_width'] < 1 << 8):

                # WHEN MAXPOOL IS ENABLED, THE OUTPUT SIZE WILL BE SMALLER
                # THERFORE, THE OFM_PACKET_LENGTH HAS TO BE ADJUSTED ACCORDINGLY
                self.parameters['neural_net'][rank_id].update({"ofm_packet_length": self.parameters['neural_net'][rank_id]['pool_output_height'] * self.parameters['neural_net'][rank_id]['pool_output_width'] * self.parameters['neural_net'][rank_id]['ofm_slices']})
            else:
                self.parameters['neural_net'][rank_id]['pool_output_height'] = 0
                self.parameters['neural_net'][rank_id]['pool_output_width'] = 0
                self.parameters['neural_net'][rank_id]['pool_kernel_height'] = 0
                self.parameters['neural_net'][rank_id]['pool_kernel_width'] = 0
                self.parameters['neural_net'][rank_id]['pool_stride'] = 0
                self.parameters['neural_net'][rank_id].update({"ofm_packet_length": self.parameters['neural_net'][rank_id]['ofm_height'] * self.parameters['neural_net'][rank_id]['ofm_width'] * self.parameters['neural_net'][rank_id]['ofm_slices']})
            
            
            
            self.configParametersFPGA(rank_id)
            self.configDMAFPGA(rank_id)
            self.configCmdFPGA(rank_id)

    def configParametersFPGA(self, rank_id):
        
        binToSend = float_to_hex(len(self.parameters['neural_net'][rank_id]['configParameters']))
        binToSend.extend(float_to_hex(self.parameters['neural_net'][rank_id]['biases_weights_baseaddr']))

        #send configuration parameters to all fpga_ranks
        self.mpi_send(binToSend, 'configureParameterAddress', self.parameters['neural_net'][rank_id]['dst_rank']) 
        self.mpi_send(self.parameters['neural_net'][rank_id]['configParameters'], 'DMAParameters', self.parameters['neural_net'][rank_id]['dst_rank']) 
    
    def configDMAFPGA(self, rank_id):
        
        binToSend = float_to_hex(self.parameters['neural_net'][rank_id]['ifm_packet_length'] * 2)
        binToSend.extend(float_to_hex(self.parameters['neural_net'][rank_id]['ifm_baseaddr']))
        binToSend.extend(float_to_hex(self.parameters['neural_net'][rank_id]['ofm_packet_length'] * 2))
        binToSend.extend(float_to_hex(self.parameters['neural_net'][rank_id]['ofm_baseaddr']))

    def configCmdFPGA(self, rank_id):
        cmd_conv = np.array([self.parameters['neural_net'][rank_id]['ifm_height'], 
                             self.parameters['neural_net'][rank_id]['ifm_width'], 
                             self.parameters['neural_net'][rank_id]['kernel_height'],
                             self.parameters['neural_net'][rank_id]['kernel_width'], 
                             self.parameters['neural_net'][rank_id]['stride'], 
                             self.parameters['neural_net'][rank_id]['pad'], 
                             self.parameters['neural_net'][rank_id]['ofm_height'],
                             self.parameters['neural_net'][rank_id]['ofm_width'], 
                             self.parameters['neural_net'][rank_id]['ifm_slices'], 
                             self.parameters['neural_net'][rank_id]['ofm_slices'],
                             self.parameters['neural_net'][rank_id]['ofm_fragments'], 
                             self.parameters['neural_net'][rank_id]['ifm_mem_fragments']
                             ],
                            dtype='uint16')
        cmd_addr = np.array([self.parameters['neural_net'][rank_id]['ifm_baseaddr'], 
                            self.parameters['neural_net'][rank_id]['ifm_packet_length'],
                            self.parameters['neural_net'][rank_id]['ifm_depth_offset'], 
                            self.parameters['neural_net'][rank_id]['ifm_height_offset'],
                            self.parameters['neural_net'][rank_id]['ofm_baseaddr'], 
                            self.parameters['neural_net'][rank_id]['ofm_packet_length'],
                            self.parameters['neural_net'][rank_id]['weights_baseaddr'], 
                            self.parameters['neural_net'][rank_id]['weights_packet_length'],
                            self.parameters['neural_net'][rank_id]['weight_depth_offset']
                            ],
                            dtype='uint32')
        cmd_mode = np.array([0, 0], dtype='uint16')
        cmd_pool = np.array([0, 
                             1, 
                             self.parameters['neural_net'][rank_id]['pool_input_height'], 
                             self.parameters['neural_net'][rank_id]['pool_input_width'],
                             self.parameters['neural_net'][rank_id]['pool_kernel_height'], 
                             self.parameters['neural_net'][rank_id]['pool_kernel_width'],
                             self.parameters['neural_net'][rank_id]['pool_output_height'], 
                             self.parameters['neural_net'][rank_id]['pool_output_width'],
                             self.parameters['neural_net'][rank_id]['pool_stride'], 
                             0],
                            dtype='uint16')
        cmd_relu_bias = np.array([
                                self.parameters['neural_net'][rank_id]['relu'],
                                self.parameters['neural_net'][rank_id]['bias']
                                ],
                                dtype='uint8')
        cmd_bias_addr = np.array([
                                self.parameters['neural_net'][rank_id]['biases_weights_baseaddr']
                                ],
                                dtype='uint32'
                                )
        cmd_rsvd = np.zeros((11,), dtype='uint32')
        self.cmd = cmd_conv.tobytes() + \
                 cmd_addr.tobytes() + \
                 cmd_mode.tobytes() + \
                 cmd_pool.tobytes() + \
                 cmd_rsvd.tobytes()



        self.cmd = bytearray(self.cmd)

        self.cmd.extend(float_to_hex(self.parameters['neural_net'][rank_id]['batch_size']))
        self.cmd.extend(float_to_hex(self.parameters['neural_net'][rank_id]['num_ranks']))
        self.mpi_send(self.cmd, 'sendCmd', self.parameters['neural_net'][rank_id]['dst_rank']) 


    def runDarius(self, cumulativeCycleCount, transName, input_file, rank_id):
        
        self.DMAIn(cumulativeCycleCount, transName, input_file, rank_id)
        self.DMAOut(transName, rank_id)


    def getRankID(self, rank):
        
        rank_id = None
        for rank_idx, neural_net in enumerate(self.parameters['neural_net']):
            if rank == neural_net['dst_rank']:
                rank_id = rank_idx 
                break
        return rank_id

    def DMAIn(self, cumulativeCycleCount, transName, input_file, rank):
       
        rank_id = self.getRankID(rank)
        cumulativeCycleCountBin = float_to_hex(cumulativeCycleCount)
        self.mpi_send(cumulativeCycleCountBin, transName + '_CUMULATIVE_CYCLE_COUNT', self.parameters['neural_net'][rank_id]['dst_rank']) 
        with open(input_file, 'r') as fobj:
            dmaInput = [[int(num) for num in line.split()] for line in fobj]
        dmaInput = np.array(dmaInput, dtype="int16")
        self.mpi_send(bytearray(dmaInput.tobytes()), transName + '_DMA_INPUT', self.parameters['neural_net'][rank_id]['dst_rank']) 
         
    def DMAOut(self, transName, rank_id):
        rank_id = self.getRankID(rank)
        self.mpi_recv(self.parameters['ofm_packet_width'], transName + '_DMA_OUTPUT', self.parameters['neural_net'][rank_id]['dst_rank'])
        


#test for this module
if __name__=="__main__":
    
    
#    make_dummy_test('weights', 'input')
    rank0 = Telepathy('demo.json')

                            
    retList = rank0.getDict()
    print "Printing the Dict for binary transaction"
    for item in retList:
        print item

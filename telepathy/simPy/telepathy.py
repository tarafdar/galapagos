import sys
import os
import math
import inspect
from galapagos_sonar import GalapagosNet
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
    return bytearray.fromhex(hex(struct.unpack('<I', struct.pack('<f', f))[0])[2:])

class Telepathy(GalapagosNet):
    
    def __init__(self, jsonFile):

        with open(jsonFile) as f:
            data = json.load(f)
    
        self.parameters = {"name": {"output": data['comm']['ports']['output'], "input": data['comm']['ports']['input']},
                           "mac_table": data['comm']['mac_table'],
                           "rank": data['comm']['src_rank'],
                           "config_hardware": data['config_hardware'],
                           "neural_net" : data['neural_net'],
                           "mode" : data['mode']
                }
        GalapagosNet.__init__(self, self.parameters)
      

        for rank_id, rank in enumerate(self.parameters['neural_net']): 
            self.parameters['neural_net'][rank_id]['rank_info']['batch_size'] = 1
            self.parameters['neural_net'][rank_id]['rank_info']['num_ranks'] = 1 
            self.parameters['neural_net'][rank_id]['rank_info']['ifm_baseaddr'] = int(self.parameters['neural_net'][rank_id]['rank_info']['ifm_baseaddr'], 16)
            self.parameters['neural_net'][rank_id]['rank_info']['ofm_baseaddr'] = int(self.parameters['neural_net'][rank_id]['rank_info']['ofm_baseaddr'], 16)
            self.parameters['neural_net'][rank_id]['rank_info']['biases_weights_baseaddr'] = int(self.parameters['neural_net'][rank_id]['rank_info']['biases_weights_baseaddr'], 16)
           

            for cmd_id, cmd in enumerate(self.parameters['neural_net'][rank_id]['command']):
                num_weights = 0
		weights = bytearray(0) 
                with open(rank['command'][cmd_id]['weight_file'], 'r') as fobj:
	            for line in fobj:
		        for num in line.split():
		            weights = bytearray(struct.pack('>h',int(num))) + weights
                            num_weights= num_weights+1
                   #weights = [[struct.pack('>I',int(num)) for num in line.split()] for line in fobj]
		#print binascii.hexlify(weights)
                #self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"weights": np.array(weights, dtype="int16")})
                self.parameters['neural_net'][rank_id]['command'][cmd_id]["weights"] = weights
                print "num of weights " + str(num_weights) 
                if self.parameters['neural_net'][rank_id]['command'][cmd_id]['bias'] == 1:
		    biases = bytearray(0) 
                    with open(self.parameters['neural_net'][rank_id]['command'][cmd_id]['bias_file'], 'r') as fobj:
	                for line in fobj:
		            for num in line.split():
		                biases = bytearray(struct.pack('>h',int(num))) + biases
                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"biases": biases})
                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"configParameters" :self.parameters['neural_net'][rank_id]['command'][cmd_id]['biases'] + self.parameters['neural_net'][rank_id]['weights']})
                else:
                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"configParameters" : self.parameters['neural_net'][rank_id]['command'][cmd_id]['weights']})
                
                print "length of weights2 " + str(len(self.parameters['neural_net'][rank_id]['command'][cmd_id]['weights']))
                print "length of configparam " + str(len(self.parameters['neural_net'][rank_id]['command'][cmd_id]['configParameters']))
                
                
                
#                if(cmd_id == (0)):
#                    #self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"biases": np.array(biases, dtype="int16").byteswap()})
#                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"biases": biases})
#                    #self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"configParameters" :self.parameters['neural_net'][rank_id]['command'][cmd_id]['biases'].tobytes() + self.parameters['neural_net'][rank_id]['weights'].tobytes()})
#                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"configParameters" :self.parameters['neural_net'][rank_id]['command'][cmd_id]['biases'] + self.parameters['neural_net'][rank_id]['weights']})
#                    
#
#                else:
#                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"configParameters" : self.parameters['neural_net'][rank_id]['command'][cmd_id]['weights']})
##A                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"weights_baseaddr": self.parameters['neural_net'][rank_id]['command'][cmd_id]["biases_weights_baseaddr"]})
#
                if(cmd_id == (0)):
                    if self.parameters['neural_net'][rank_id]['command'][cmd_id]['bias'] == 1:
		        self.parameters['neural_net'][rank_id]['command'][cmd_id]['biases_weights_baseaddr'] =  self.parameters['neural_net'][rank_id]['rank_info']['biases_weights_baseaddr']
		        self.parameters['neural_net'][rank_id]['command'][cmd_id]['weights_baseaddr'] =  self.parameters['neural_net'][rank_id]['rank_info']['biases_weights_baseaddr'] + len(self.parameters['neural_net'][rank_id]['command'][cmd_id]['biases'])
		    else:
		        self.parameters['neural_net'][rank_id]['command'][cmd_id]['biases_weights_baseaddr'] =  self.parameters['neural_net'][rank_id]['rank_info']['biases_weights_baseaddr']
		        self.parameters['neural_net'][rank_id]['command'][cmd_id]['weights_baseaddr'] =  self.parameters['neural_net'][rank_id]['rank_info']['biases_weights_baseaddr']

                if(cmd_id != (len(self.parameters['neural_net'][rank_id]['command']) - 1)):
                    if self.parameters['neural_net'][rank_id]['command'][cmd_id]['bias'] == 1:
                    	self.parameters['neural_net'][rank_id]['command'][cmd_id+1]['biases_weights_baseaddr'] =  self.parameters['neural_net'][rank_id]['command'][cmd_id]['biases_weights_baseaddr'] + len(self.parameters['neural_net'][rank_id]['command'][cmd_id]['configParameters'])
                    	self.parameters['neural_net'][rank_id]['command'][cmd_id+1]['weights_baseaddr'] =  self.parameters['neural_net'][rank_id]['command'][cmd_id + 1]['biases_weights_baseaddr'] + len(self.parameters['neural_net'][rank_id]['command'][cmd_id+1]['biases'])
		    else:                
                    	self.parameters['neural_net'][rank_id]['command'][cmd_id+1]['biases_weights_baseaddr'] =  self.parameters['neural_net'][rank_id]['command'][cmd_id]['biases_weights_baseaddr'] + len(self.parameters['neural_net'][rank_id]['command'][cmd_id]['configParameters'])
                    	self.parameters['neural_net'][rank_id]['command'][cmd_id+1]['weights_baseaddr'] =  self.parameters['neural_net'][rank_id]['command'][cmd_id + 1]['biases_weights_baseaddr'] 

                #print self.parameters['neural_net'][rank_id]['command'][cmd_id]["biases_weights_baseaddr"]
                self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"ofm_height" : math.ceil((self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_height'] + 2 * self.parameters['neural_net'][rank_id]['command'][cmd_id]['pad'] - self.parameters['neural_net'][rank_id]['command'][cmd_id]['kernel_height']) / self.parameters['neural_net'][rank_id]['command'][cmd_id]['stride'] + 1)})
                self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"ofm_width": math.ceil((self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_width'] + 2 * self.parameters['neural_net'][rank_id]['command'][cmd_id]['pad'] - self.parameters['neural_net'][rank_id]['command'][cmd_id]['kernel_width']) / self.parameters['neural_net'][rank_id]['command'][cmd_id]['stride'] + 1)})
                self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"ifm_slices": math.ceil(self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_depth'] / self.parameters['config_hardware']['C_NUM_OF_ROWS'])})
                self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"ofm_slices": math.ceil(self.parameters['neural_net'][rank_id]['command'][cmd_id]['output_channels'] / self.parameters['config_hardware']['C_NUM_OF_ROWS'])})

                print "pool kernel height " + str(self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_kernel_height'] )
                print "pool kernel width " + str(self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_kernel_width']) 
                print "pool stride " + str(self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_stride'] )



                self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"ifm_packet_length": self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_width']*self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_height']*self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_slices']})

                print "ifm slices " + str(self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_slices'])
                self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"ifm_depth_offset": self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_width']*self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_height']*self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_depth']})
                
                if(cmd_id == 0):
                    self.parameters['neural_net'][rank_id]['command'][0]['ifm_baseaddr'] = self.parameters['neural_net'][rank_id]['rank_info']['ifm_baseaddr']
                else:
                    self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_baseaddr'] = self.parameters['neural_net'][rank_id]['command'][cmd_id -1]['ofm_baseaddr']
                
                #self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_baseaddr'] = int(self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_baseaddr'],16) + self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_packet_length']*2
                self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_baseaddr'] = self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_baseaddr'] + self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_height']* self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_width'] * self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_depth']*2
                if(cmd_id == len(self.parameters['neural_net'][rank_id]['command']) -1):
                   self.parameters['neural_net'][rank_id]['rank_info']['ofm_baseaddr'] = self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_baseaddr']

                self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"weights_packet_length": self.parameters['neural_net'][rank_id]['command'][cmd_id]['kernel_height'] * self.parameters['neural_net'][rank_id]['command'][cmd_id]['kernel_width'] * self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_depth']})
                self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"weight_depth_offset" : self.parameters['neural_net'][rank_id]['command'][cmd_id]['kernel_height'] * self.parameters['neural_net'][rank_id]['command'][cmd_id]['kernel_width'] * self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_depth'] * self.parameters['config_hardware']['C_NUM_OF_COLS']}) 
                self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"pool_input_height" : self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_height']})
                self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"pool_input_width" : self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_width']})
                print "pool input height " + str(self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_input_height'] )
                print "pool input width " + str(self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_input_width']) 
                #self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"pool_input_height" : self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_height']})
                #self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"pool_input_width" : self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_width']})
                try:
                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"pool_output_height" : math.ceil(
                        ((self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_input_height'] - self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_kernel_height']) / 1.0) / self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_stride'] / 1.0 + 1)})
                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"pool_output_width" : math.ceil(
                        ((self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_input_width'] - self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_kernel_width']) / 1.0) / self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_stride'] / 1.0 + 1)})
                except ZeroDivisionError:
                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"pool_output_height" : 0}) 
                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"pool_output_width" : 0}) 
                    # pool_stride has to be a multiple of 2
                if (self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_stride'] != 0 \
                        and self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_output_height'] > 5 and self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_output_width'] > 5 \
                        and self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_output_width'] * self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_kernel_width'] < 1 << 9 \
                        and self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_output_width'] < 1 << 8):

                    # WHEN MAXPOOL IS ENABLED, THE OUTPUT SIZE WILL BE SMALLER
                    # THERFORE, THE OFM_PACKET_LENGTH HAS TO BE ADJUSTED ACCORDINGLY
                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"ofm_packet_length": self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_output_height'] * self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_output_width'] * self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_slices']})
                else:
                    self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_output_height'] = 0
                    self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_output_width'] = 0
                    self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_kernel_height'] = 0
                    self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_kernel_width'] = 0
                    self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_stride'] = 0
                    self.parameters['neural_net'][rank_id]['command'][cmd_id].update({"ofm_packet_length": self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_height'] * self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_width'] * self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_slices']})
    
            self.configParametersFPGA(rank_id)
            self.configDMAFPGA(rank_id)
            self.configCmdFPGA(rank_id)


            #self.test(rank_id) 

            
#            self.configParametersFPGA(rank_id)
#            self.configDMAFPGA(rank_id)
#            self.configCmdFPGA(rank_id)
    def test(self, rank_id):
        
        
        binToSend = bytearray(8) #address
        print binToSend
        print "len of long is " + str(len(binToSend))
        
        
        b = bytearray.fromhex("0800 00 00 00 00 00 00")
        binToSend.extend(bytearray(b)) #size

        print "len of long is " + str(len(binToSend))
        GalapagosNet.binToStream(self, binToSend, self.parameters['neural_net'][rank_id]['rank_info']['dst_rank'])
        binToSend = bytearray(np.array([16]).tobytes()) #dma parameters
        print len(bytearray(np.array([16]).tobytes()))


        GalapagosNet.binToStream(self, binToSend, self.parameters['neural_net'][rank_id]['rank_info']['dst_rank'])




    def configParametersFPGA(self, rank_id):
        
        binToSend = bytearray(np.array([self.parameters['neural_net'][rank_id]['rank_info']['biases_weights_baseaddr']], dtype=np.int64).byteswap().tobytes())
        print len(binToSend)
        length = 0

        #calculate length of all parameters on fpga
        for cmd_id, cmd in enumerate(self.parameters['neural_net'][rank_id]['command']): 
            length = length + len(self.parameters['neural_net'][rank_id]['command'][cmd_id]['configParameters'])
            print "length of command " + str(cmd_id) + " is " + str(length)
       
        print "length of command is " + str(length)
        binToSend.extend(np.array([length], dtype=np.int64).byteswap().tobytes())
       
        print len(binToSend)
        #send configuration parameters to all fpga_ranks

        GalapagosNet.binToStream(self, binToSend, self.parameters['neural_net'][rank_id]['rank_info']['dst_rank'], 'init' + str(rank_id))
        #send all weights for all commands on fpga
        for cmd_id, cmd in enumerate(self.parameters['neural_net'][rank_id]['command']): 
            #print binascii.hexlify(self.parameters['neural_net'][rank_id]['command'][cmd_id]['configParameters'])
	    GalapagosNet.binToStream(self, self.parameters['neural_net'][rank_id]['command'][cmd_id]['configParameters'], self.parameters['neural_net'][rank_id]['rank_info']['dst_rank'], 'init' + str(rank_id)) 
    
    def configDMAFPGA(self, rank_id):
      

        binToSend = bytearray(np.array([self.parameters['neural_net'][rank_id]['rank_info']['ifm_baseaddr']], dtype=np.int64).byteswap().tobytes())
        binToSend.extend(bytearray(np.array([self.parameters['neural_net'][rank_id]['command'][0]['ifm_width'] * self.parameters['neural_net'][rank_id]['command'][0]['ifm_height'] * self.parameters['neural_net'][rank_id]['command'][0]['ifm_depth'] * 2], dtype=np.int64).byteswap().tobytes()))
        binToSend.extend(bytearray(np.array([self.parameters['neural_net'][rank_id]['rank_info']['ofm_baseaddr']], dtype=np.int64).byteswap().tobytes()))
        binToSend.extend(bytearray(np.array([self.parameters['neural_net'][rank_id]['command'][len(self.parameters['neural_net'][rank_id]['command']) - 1]['ofm_height']   * self.parameters['neural_net'][rank_id]['command'][len(self.parameters['neural_net'][rank_id]['command'])-1] ['ofm_width'] * self.parameters['neural_net'][rank_id]['command'][len(self.parameters['neural_net'][rank_id]['command'])-1]['output_channels'] * 2], dtype=np.int64).byteswap().tobytes()))
        GalapagosNet.binToStream(self, binToSend, self.parameters['neural_net'][rank_id]['rank_info']['dst_rank'], 'init' + str(rank_id))
        

    def configCmdFPGA(self, rank_id):
       
        
#        cmd_num_commands = np.array([1],dtype=np.int64).byteswap()
        cmd_num_commands = np.array([len(self.parameters['neural_net'][rank_id]['command'])],dtype=np.int64).byteswap() 


        for cmd_id, cmd in enumerate(self.parameters['neural_net'][rank_id]['command']): 
            cmd_conv = np.array([self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_height'], 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_width'], 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['kernel_height'],
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['kernel_width'], 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['stride'], 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['pad'], 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_height'],
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_width'], 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_slices'], 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_slices'],
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_fragments'], 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_mem_fragments']
                                 ],
                                dtype='uint16').byteswap()
            cmd_addr = np.array([self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_baseaddr'], 
                                self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_packet_length'],
                                self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_depth_offset'], 
                                self.parameters['neural_net'][rank_id]['command'][cmd_id]['ifm_height_offset'],
                                self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_baseaddr'], 
                                self.parameters['neural_net'][rank_id]['command'][cmd_id]['ofm_packet_length'],
                                self.parameters['neural_net'][rank_id]['command'][cmd_id]['weights_baseaddr'], 
                                self.parameters['neural_net'][rank_id]['command'][cmd_id]['weights_packet_length'],
                                self.parameters['neural_net'][rank_id]['command'][cmd_id]['weight_depth_offset']
                                ],
                                dtype='uint32').byteswap()
            cmd_mode = np.array([0, 0], dtype='uint16')
            cmd_pool = np.array([0, 
                                 1, 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_input_height'], 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_input_width'],
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_kernel_height'], 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_kernel_width'],
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_output_height'], 
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_output_width'],
                                 self.parameters['neural_net'][rank_id]['command'][cmd_id]['pool_stride'], 
                                 0],
                                dtype='uint16').byteswap()
            cmd_relu_bias = np.array([
                                    self.parameters['neural_net'][rank_id]['command'][cmd_id]['relu'],
                                    self.parameters['neural_net'][rank_id]['command'][cmd_id]['bias']
                                    ],
                                    dtype='uint8')
            cmd_bias_addr = np.array([
                                    self.parameters['neural_net'][rank_id]['command'][cmd_id]['biases_weights_baseaddr']
                                    ],
                                    dtype='uint32'
                                    ).byteswap()
            cmd_rsvd = np.zeros((11,), dtype='uint32')
            if(cmd_id == 0):
                #self.cmd = cmd_num_commands.tobytes() + \
                #         cmd_conv.tobytes() + \
                #         cmd_addr.tobytes() + \
                #         cmd_mode.tobytes() + \
                #         cmd_pool.tobytes() + \
                #         cmd_rsvd.tobytes()
                self.cmd = cmd_mode.tobytes() + \
                         cmd_pool.tobytes() + \
                         cmd_rsvd.tobytes()
            else:
                self.cmd.extend(bytearray(cmd_num_commands.tobytes() + cmd_conv.tobytes() + 
                         cmd_addr.tobytes() + 
                         cmd_mode.tobytes() + 
                         cmd_pool.tobytes() + 
                         cmd_rsvd.tobytes()))

            self.cmd = bytearray(self.cmd)

        self.cmd.extend(bytearray(np.array([self.parameters['neural_net'][rank_id]['rank_info']['batch_size']],dtype=np.int64).byteswap()))
        self.cmd.extend(bytearray(np.array([self.parameters['neural_net'][rank_id]['rank_info']['num_ranks']],dtype=np.int64).byteswap()))
        GalapagosNet.binToStream(self, self.cmd, self.parameters['neural_net'][rank_id]['rank_info']['dst_rank'], 'init'+ str(rank_id))
#
#
#    def runDarius(self, cumulativeCycleCount, transName, input_file, rank_id):
#        
#        self.DMAIn(cumulativeCycleCount, transName, input_file, rank_id)
#        self.DMAOut(transName, rank_id)
#
#
#    def getRankID(self, rank):
#        
#        rank_id = None
#        for rank_idx, neural_net in enumerate(self.parameters['neural_net']):
#            if rank == neural_net['dst_rank']:
#                rank_id = rank_idx 
#                break
#        return rank_id
#
#    def DMAIn(self, cumulativeCycleCount, transName, input_file, rank):
#       
#        rank_id = self.getRankID(rank)
#        cumulativeCycleCountBin = float_to_hex(cumulativeCycleCount)
#        self.mpi_send(cumulativeCycleCountBin, transName + '_CUMULATIVE_CYCLE_COUNT', self.parameters['neural_net'][rank_id]['dst_rank']) 
#        with open(input_file, 'r') as fobj:
#            dmaInput = [[int(num) for num in line.split()] for line in fobj]
#        dmaInput = np.array(dmaInput, dtype="int16")
#        self.mpi_send(bytearray(dmaInput.tobytes()), transName + '_DMA_INPUT', self.parameters['neural_net'][rank_id]['dst_rank']) 
#         
#    def DMAOut(self, transName, rank_id):
#        rank_id = self.getRankID(rank)
#        self.mpi_recv(self.parameters['ofm_packet_width'], transName + '_DMA_OUTPUT', self.parameters['neural_net'][rank_id]['dst_rank'])
#        


#test for this module
if __name__=="__main__":
    
    
#    make_dummy_test('weights', 'input')
    rank0 = Telepathy('demo.json')
    rank0.stop()
                            
    #retList = rank0.getDict()
    #print "Printing the Dict for binary transaction"
    #for item in retList:
    #    print item

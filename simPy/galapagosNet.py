import sys
import os


import math
import inspect


from sonar.testbench import Testbench, Module, TestVector, Thread
from sonar.interfaces import AXIS
from sonar.generators import Ethernet


class GalapagosNet:
    
    def __init__(self, parameters):
       
        if 'mac_table' not in parameters:
            raise ValueError('Mac table must exist')
        else:
            if type(parameters['mac_table']) != type({}):
                raise ValueError('Mac Table must be dictionary')
            else:    
                self.macTable = parameters['mac_table']

        if not('rank' in parameters):
            raise ValueError('Rank not in mac table')
        else:
            self.macAddr = self._getMacAddr(parameters['rank'])
            self.rank = parameters['rank']
            if self.macAddr == None:
                raise ValueError('Rank not in mac table')
        
        if not('comm' in parameters):
            self.comm = 'ethernet' 
        else:
            self.comm = parameters['comm']

        if not('mode' in parameters):
            self.mode = 'sim'
        elif parameters['mode'] == 'impl':
            self.mode = 'impl'
        else:
            self.mode = 'sim'


        if self.mode == 'sim':
            self._makeSimModel()
        #else init servers for tcp if using tcp
        
        
        
        
        
        
        
        
        
        
    # galapagos ports 
    #--------------------------------------
    # clocks 
    #--------------------------------------
    # clk (stream clock) 156.25 MHz
    # mem_sys_clk_p (mem_diff clock p) 333 MHz
    #--------------------------------------
    # resets
    #--------------------------------------
    # sys_resetn
    #--------------------------------------
    # streams
    #--------------------------------------
    # input stream
    #--------------------------------------
    # [7:0] stream_in_keep
    # stream_in_last
    # [63:0] stream_in_data
    # stream_in_valid
    # stream_in_ready
    #--------------------------------------
    # output stream
    #--------------------------------------
    # [7:0] stream_out_keep
    # stream_out_last
    # [63:0] stream_out_data
    # stream_out_valid
    # stream_out_ready,    
    #--------------------------------------
    # output mem_ready -> when memory is calibrated
    def _makeSimModel(self):


        self.tb = Testbench.default('top_sim')

        self.dut = Module.default("DUT")
        self.dut.add_clock_port("clk", "6.25ns")
        self.dut.add_clock_port("mem_sys_clk_p", "3ns")
        self.dut.add_reset_port("sys_resetn")
        

        self.axis_in = AXIS("stream_in", "slave", "clk")
        self.axis_in.port.init_channels('default', 64)
        self.axis_out = AXIS("stream_out", "master", "clk")
        self.axis_out.port.init_channels('default', 64)
        self.dut.add_interface(self.axis_in)
        self.dut.add_interface(self.axis_out)
        

        self.dut.add_port("mem_ready", size=1, direction="output")
        
        
        self.reset_thread = Thread()
        self.reset_thread.wait_negedge('clk')
        self.reset_thread.init_signals()
        self.reset_thread.add_delay('25ns') #T*4
        
        #reset the system
        self.reset_thread.set_signal('sys_resetn', 1)

        #wait for memory calibration
        self.reset_thread.wait_level('mem_ready == $value', value=1)
        self.tv = TestVector()
        self.tv.add_thread(self.reset_thread)


    def _make_tv(self):
       thread = self.tv.add_thread()
       thread.add_delay('100ns')


    def _close_sim(self):
        self.tb.add_test_vector(self.tv)        
        cwd = os.getcwd()
        self.tb.generateTB(cwd + '/build', 'sv')

    def start(self):

        if self.mode == 'sim':
            self._make_tv()



    def stop(self):
        if self.mode == 'sim':
            self._close_sim()

    def _getMacAddr(self, rank):
        
        macAddr = None

        for mac_entry in self.macTable:
            if self.macTable[mac_entry] == rank:
                macAddr = mac_entry 
                break

        return macAddr 


    def waitForHeader(self, dest):
        
        
        if self.mode == 'sim':
            thread = self.tv.add_thread()
            if self.comm == 'ethernet':
                macAddrDst = self._getMacAddr(dest)
                ethernet = Ethernet(macAddrDst, self.macAddr, "0x7400")
                ethernet.prefix = dest
                ethernet.wait_for_header(thread, self.axis_in, endian='little')






    def binToStream(self, binData, dest):

        if self.mode == 'sim':
            thread = self.tv.add_thread()
            if self.comm == 'ethernet':
                macAddrDst = self._getMacAddr(dest)
                ethernet = Ethernet(macAddrDst, self.macAddr, "0x7400")
                ethernet.prefix = dest
                ethernet.bin_to_stream(thread, self.axis_in, binData)
            #else sim tcp/ip 



        #else call cpu library


#test for this module
if __name__=="__main__":
    
    
    #writing random garbage data to test.txt
    with open("test_axis.bin", "wb") as binary_file:
        num_bytes_written = binary_file.write(b'\xDE\xAD\xBE\xEF\xFA\xCE\xFA\xCE')
        num_bytes_written = binary_file.write(b'\x11\x22\x33\x44\x55\x66\x77\x88')
        num_bytes_written = binary_file.write(b'\x00\xaa\xbb\xcc\xdd\xee\xff\x12')
        num_bytes_written = binary_file.write(b'\x34\x56\x78')
    
    

    #reading back random garbage data from test.txt
    with open("test_axis.bin", "rb") as binary_file:
        data = binary_file.read()


    #now have data in byte array
    dataArray = bytearray()
    dataArray.extend(data)
    
    rank0 = GalapagosNet({'comm': 'ethernet', 
                     "mac_table": {"0x112233445566":"0x0001", "0xaabbccddeeff":"0x0000"},
                     "rank": "0x0000"
                })
    rank0.start()
    rank0.binToStream(dataArray, "0x0001")
    rank0.waitForHeader('0x0001')
    rank0.stop()
    

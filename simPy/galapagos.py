
import sys
import os
from axis import axis

sys.path.append(os.environ['SONAR_PATH'] + '/jsonGen')
from parallelSection import ParallelSection
from testVector import TestVector
from module import Module
from galapagosNet import GalapagosNet
import json



class Galapagos(Module):
    def __init__(self, comm='galapagos', net='ethernet', numVectors=1):
        self.name = 'top_sim' 
        Module.__init__(self, self.name)
        self.comm = comm
        self.net = net
        self.ports = [{"direction": "input", "name": "clk", "type": "clock", "period": "20ns"},
                      {"direction": "input", "name": "mem_sys_clk_p", "type": "clock", "period": "5ns"},
                      {"direction": "input", "name": "sys_resetn", "type": "reset"}
                      ]
        axisIn_desc = {"name":"axisIn", "type": "axis", "direction":"slave", "clock": "clk", "channels": [
                                                        {"name":"data", "type": "tdata", "size": 64},
                                                        {"name":"keep", "type": "tkeep"},
                                                        {"name":"valid", "type": "tvalid"},
                                                        {"name":"ready", "type": "tready"},
                                                        {"name":"last", "type": "tlast"},
                                                        ]
                                                                            
                }
        axisOut_desc = axisIn_desc
        axisOut_desc["name"] = "axisOut"
        axisOut_desc["direction"] = "master"
        Module.addPort(self, axisIn_desc)
        Module.addPort(self, axisOut_desc)
   
        self.vecs = []

        self.waitConditions = []
    
    def addPort(self, port):
        raise ValueError("Cannot define custom port")

        


    def getJSON(self):

        retDict = {
                   "Company" : None, 
                   "Engineer" : None,
                   "Project_Name" : None,
                   "Target_Devices" : None,
                   "Tool_Versions" : None,
                   "Description" : None,
                   "Dependencies" : None,
                   "Flag_Count" : 4, 
                   "Project_Name": None, 
                   "Time_Format": {"precision":3, "unit":"1us"},
                   "Module_Name": self.name,
                   "DUT": self.ports,
                   "Tool_Versions": None,
                   "Description": None,
                   "Timescale": "1ns / 1ps",
                   "Target_Devices": None,
                   "Company": None,
                   "Test_Vectors": self.vecs,
                   "Wait_Conditions": self.waitConditions
                   }
        
        return json.dumps(retDict, indent=4)


#test for this module
if __name__=="__main__":


    #writing random garbage data to test.txt
    with open("test_sec.bin", "wb") as binary_file:
        num_bytes_written = binary_file.write(b'\xDE\xAD\xBE\xEF\xFA\xCE\xFA\xCE')
        num_bytes_written = binary_file.write(b'\x11\x22\x33\x44\x55\x66\x77\x88')
        num_bytes_written = binary_file.write(b'\x00\xaa\xbb\xcc\xdd\xee\xff\x12')
        num_bytes_written = binary_file.write(b'\x34\x56\x78')
    
    

    #reading back random garbage data from test.txt
    with open("test_sec.bin", "rb") as binary_file:
        data = binary_file.read()
   
    #now have data in byte array
    dataArray = bytearray()
    dataArray.extend(data)
   
    dut = Galapagos()
    cpu_tester_galapagos = GalapagosNet('ethernet', {"name": {"output" : "axisIn", "input" : "axisOut"},
                     "mac_table": {"0x112233445566":"0x0001", "0xaabbccddeeff":"0x0000"},
                     "rank": "0x0000"
                })
    
    cpu_tester_galapagos.binToStream(dataArray, "0x0001")
    cpu_tester_galapagos.waitForHeader('first_wait')


    test_vector = TestVector()
    test_vector.addSection(cpu_tester_galapagos)
    dut.addVec(test_vector)
    print dut.getJSON() 


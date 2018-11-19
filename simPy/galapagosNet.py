import sys
import os


import math
import inspect

sys.path.append(os.environ['SONAR_PATH'] + '/jsonGen')
from parallelSection import ParallelSection
from ethernet import Ethernet


class GalapagosNet(ParallelSection):
    
    def __init__(self, comm, parameters):
        ParallelSection.__init__(self)
        self.cmd = []  
        self.wait = []  
        
        if 'mac_table' not in parameters:
            raise ValueError('Mac table must exist')
        else:
            if type(parameters['mac_table']) != type({}):
                raise ValueError('Mac Table must be dictionary')
            else:    
                self.macTable = parameters['mac_table']
        
        if not('name' in parameters):
            raise ValueError('Name must exist')
        else:
            if type(parameters['name']) != type({}):
                raise ValueError('Name must be dictionary')
            else:
                if not('input' in parameters['name']):
                    raise ValueError('Must have input name')
                else:
                    self.sendParameters = {"name": parameters['name']['input'], "direction":"slave", 
                                           "prefix": parameters['rank'],
                                           "channels": [
                                                        {"name":"data", "type": "tdata", "size": 64},
                                                        {"name":"keep", "type": "tkeep"},
                                                        {"name":"valid", "type": "tvalid"},
                                                        {"name":"ready", "type": "tready"},
                                                        {"name":"last", "type": "tlast"},
                                                        ]
                                                        }
                
                if not('output' in parameters['name']):
                    raise ValueError('Must have output name')
                else:
                    self.recvParameters = {"name": parameters['name']['output'], "direction":"master",
                                           "channels": [
                                                        {"name":"data", "type": "tdata", "size": 64},
                                                        {"name":"keep", "type": "tkeep"},
                                                        {"name":"valid", "type": "tvalid"},
                                                        {"name":"ready", "type": "tready"},
                                                        {"name":"last", "type": "tlast"},
                                                        ]
                                                        }
                

        macAddr = self.getMacAddr(parameters['rank'])
        if macAddr == None:
            raise ValueError('Rank not in mac table')
        
        self.sendParameters.update({'mac_addr_src': macAddr})
        self.sendParameters.update({'src_rank': parameters['rank']})
        self.recvParameters.update({'mac_addr_dst': macAddr})
        self.recvParameters.update({'dst_rank': parameters['rank']})

        if comm == 'ethernet':
            self.send = Ethernet(self.sendParameters)
            self.recv = Ethernet(self.recvParameters)
        #
        #TODO: add initializer for tcp ip packet 
        #else
        #    send = tcp(parameters)
        #    recv = tcp(parameters)

    def getMacAddr(self, rank):
        
        macAddr = None

        for mac_entry in self.macTable:
            if self.macTable[mac_entry] == rank:
                macAddr = mac_entry 
                break

        return macAddr 

    def setRankDst(self, rank):
        print 'rank to set is ' + rank
        macAddr = self.getMacAddr(rank)
        if macAddr == None:
            raise ValueError('Rank not in mac table')
    
        self.send.setPrefix(rank)
        self.sendParameters['mac_addr_dst'] = macAddr
        self.send.setMACDst(macAddr)
        self.sendParameters['dst_rank'] = rank
        self.recvParameters['mac_addr_src'] =  macAddr
        self.recv.setMACSrc(macAddr)
        self.recvParameters['src_rank'] = rank
    
    def setRankSrc(self, rank):
        
        macAddr = self.getMacAddr(rank)
        if macAddr == None:
            raise ValueError('Rank not in mac table')

        self.recv.setPrefix(rank)
        self.sendParameters['mac_addr_src'] = macAddr
        self.send.setMACSrc(macAddr)
        self.sendParameters['src_rank'] = rank
        self.recvParameters['mac_addr_dst'] =  macAddr
        self.recv.setMACDst(macAddr)
        self.recvParameters['dst_rank'] = rank
    

    def waitForHeader(self, transName):
        waitEth = self.recv.waitForHeader(transName)
        self.addWait(waitEth[0])
        self.addWait(waitEth[1])


    def getHeader(self): 
        
        binArray = self.send.getHeader()
        return binArray

    def binToStream(self, binData, dest):
        self.setRankDst(dest)
        self.addBurst(self.send.binToStream(binData, None))

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
    
    rank0 = GalapagosNet('ethernet', {"name": {"output" : "axisIn", "input" : "axisOut"},
                     "mac_table": {"0x112233445566":"0x0001", "0xaabbccddeeff":"0x0000"},
                     "rank": "0x0000"
                })
    rank0.binToStream(dataArray, "0x0001")
    rank0.waitForHeader('first_wait')

    retList = rank0.getDict()
    print "Printing the Dict for binary transaction"
    for item in retList:
        print item

import sys
import os
import math
import inspect
sys.path.append(os.environ['HMPI_PATH'] + '/simPy')
from mpi import mpiRank


class Telepathy(mpiRank):
    
    def __init__(self, comm, parameters):
        mpiRank.__init__(self, comm, parameters)



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
    



    rank0 = Telepathy('ethernet', {"name": {"output" : "axisIn", "input" : "axisOut"},
                     "mac_table": {"0x112233445566":"0x01", "0xaabbccddeeff":"0x00"},
                     "rank": "0x00"
                })
    rank0.mpi_send(dataArray, 'first_send', "0x01")
    rank0.mpi_recv(10, 'first_recv', "0x01")

    retList = rank0.getDict()
    print "Printing the Dict for binary transaction"
    for item in retList:
        print item

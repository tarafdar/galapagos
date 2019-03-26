CXXFLAGS = -DCPU -g -std=c++14 -pthread -I$(XILINX_VIVADO)/include -I$(GALAPAGOS_PATH)/middleware/include

LDFLAGS = -lpthread

BOOST_LDFLAGS=-lboost_thread -lboost_system $(LDFLAGS) 

net_driver = tcp

UNIT_TEST=-I$(GALAPAGOS_PATH)/Catch2/single_include/catch2

#all: $(net_driver).o galapagos_kernel.o galapagos_packet.o
#all:  galapagos_kernel.o galapagos_packet.o
all:  galapagos_packet.o galapagos_kernel.o

$^:
	$(CXX) $(CXXFLAGS) -c $^ -o $@ $(BOOST_LDFLAGS)



unit_test.exe: galapagos_kernel.o kernel.o galapagos_stream.o galapagos.o test.cpp
	$(CXX) $(CXXFLAGS) $(UNIT_TEST) $^ -o $@ $(BOOST_LDFLAGS)  

test.exe: galapagos_kernel.o kernel.o galapagos_stream.o galapagos.o main.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@ $(BOOST_LDFLAGS)  


clean:
	rm -rf *.o
	rm -rf *.exe 

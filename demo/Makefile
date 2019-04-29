
SRC_LIB=$(GALAPAGOS_PATH)/middleware/CPP_lib/Galapagos_lib
CXXFLAGS = -DCPU -g -std=c++17 -pthread -I$(XILINX_VIVADO)/include -I$(GALAPAGOS_PATH)/middleware/include -I$(SRC_LIB) -I../nnet_utils

LDFLAGS = -lpthread

BOOST_LDFLAGS=-lboost_thread -lboost_system $(LDFLAGS) 



all: galapagos kernel.o

galapagos:
	$(MAKE) -C $(SRC_LIB)



#kernel.o: kernel.cpp
#	$(CXX) $(CXXFLAGS) -c kern_send.cpp -o $@ $(BOOST_LDFLAGS)

hls:
	vivado_hls generate_hls.tcl

heterogeneous_node.exe: $(SRC_LIB)/galapagos_node.o $(SRC_LIB)/galapagos_router.o $(SRC_LIB)/galapagos_router_node.o $(SRC_LIB)/galapagos_router_net.o $(SRC_LIB)/galapagos_net_tcp.o $(SRC_LIB)/galapagos_net_tcp_session.o $(SRC_LIB)/galapagos_net_tcp_server_send.o $(SRC_LIB)/galapagos_net_tcp_accept_server.o $(SRC_LIB)/galapagos_kernel.o  $(SRC_LIB)/galapagos_streaming_core.o $(SRC_LIB)/galapagos_stream.o kernel.o heterogenous_node.cpp 
	$(CXX) $(CXXFLAGS) -I$(SRC_LIB) -I$(GALAPAGOS_PATH)/util/argparse $^ -o $@ $(BOOST_LDFLAGS)  

cpu_node.exe: $(SRC_LIB)/galapagos_node.o $(SRC_LIB)/galapagos_router.o $(SRC_LIB)/galapagos_router_node.o $(SRC_LIB)/galapagos_router_net.o $(SRC_LIB)/galapagos_net_tcp.o $(SRC_LIB)/galapagos_net_tcp_session.o $(SRC_LIB)/galapagos_net_tcp_server_send.o $(SRC_LIB)/galapagos_net_tcp_accept_server.o $(SRC_LIB)/galapagos_kernel.o  $(SRC_LIB)/galapagos_streaming_core.o $(SRC_LIB)/galapagos_stream.o kernel.o cpu_node.cpp 
	$(CXX) $(CXXFLAGS) -I$(SRC_LIB) -I$(GALAPAGOS_PATH)/util/argparse $^ -o $@ $(BOOST_LDFLAGS)  

clean:
	rm -rf *.o myproject_prj
	rm -rf *.exe 

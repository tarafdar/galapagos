#===============================
# AUTHOR     : Naif Tarafdar
# CREATE DATE     : April 20, 2019
#===============================


CXXFLAGS = -DCPU -g -std=c++17 -pthread -I$(XILINX_VIVADO)/include -I$(GALAPAGOS_PATH)/middleware/include

LDFLAGS = -lpthread

BOOST_LDFLAGS=-lboost_thread -lboost_system $(LDFLAGS) 

net_driver = tcp

UNIT_TEST=-I$(GALAPAGOS_PATH)/Catch2/single_include/catch2 

all:  galapagos_node.o galapagos_router.o galapagos_router_node.o galapagos_router_net.o galapagos_net_tcp.o galapagos_net_tcp_session.o galapagos_net_tcp_server_send.o galapagos_net_tcp_accept_server.o galapagos_kernel.o kernel.o galapagos_streaming_core.o galapagos_stream.o 

$^:
	$(CXX) $(CXXFLAGS) -c $^ -o $@ $(BOOST_LDFLAGS)


unit_test.exe: galapagos_node.o galapagos_router.o galapagos_router_node.o galapagos_router_net.o galapagos_net_tcp.o galapagos_net_tcp_session.o galapagos_net_tcp_server_send.o galapagos_net_tcp_accept_server.o galapagos_kernel.o kernel.o galapagos_streaming_core.o galapagos_stream.o test.cpp 
	$(CXX) $(CXXFLAGS) $(UNIT_TEST) $^ -o $@ $(BOOST_LDFLAGS)  


node_send.exe: galapagos_node.o galapagos_router.o galapagos_router_node.o galapagos_router_net.o galapagos_net_tcp.o galapagos_net_tcp_session.o galapagos_net_tcp_server_send.o galapagos_net_tcp_accept_server.o galapagos_kernel.o kernel.o galapagos_streaming_core.o galapagos_stream.o node_send.cpp 
	$(CXX) $(CXXFLAGS) $(UNIT_TEST) $^ -o $@ $(BOOST_LDFLAGS)  


node_recv.exe: galapagos_node.o galapagos_router.o galapagos_router_node.o galapagos_router_net.o galapagos_net_tcp.o galapagos_net_tcp_session.o galapagos_net_tcp_server_send.o galapagos_net_tcp_accept_server.o galapagos_kernel.o kernel.o galapagos_streaming_core.o galapagos_stream.o node_recv.cpp 
	$(CXX) $(CXXFLAGS) $(UNIT_TEST) $^ -o $@ $(BOOST_LDFLAGS)  

one_node.exe: galapagos_node.o galapagos_router.o galapagos_router_node.o galapagos_router_net.o galapagos_net_tcp.o galapagos_net_tcp_session.o galapagos_net_tcp_server_send.o galapagos_net_tcp_accept_server.o galapagos_kernel.o kernel.o galapagos_streaming_core.o galapagos_stream.o one_node.cpp 
	$(CXX) $(CXXFLAGS) $(UNIT_TEST) $^ -o $@ $(BOOST_LDFLAGS)  

server_ex.exe: blocking_tcp_echo_server.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@ $(BOOST_LDFLAGS)  

async_server_ex.exe: async_tcp_echo_server.cpp galapagos_stream.o 
	$(CXX) $(CXXFLAGS) $^ -o $@ $(BOOST_LDFLAGS)  

client.exe: blocking_tcp_echo_client.cpp 
	$(CXX) $(CXXFLAGS) $^ -o $@ $(BOOST_LDFLAGS)  

galapagos_net_tcp.exe: galapagos_node.o galapagos_router.o galapagos_router_node.o galapagos_router_net.o galapagos_net_tcp.o galapagos_net_tcp_session.o galapagos_net_tcp_server_send.o galapagos_net_tcp_accept_server.o galapagos_kernel.o kernel.o galapagos_streaming_core.o galapagos_stream.o server_test.cpp 
	$(CXX) $(CXXFLAGS) $(UNIT_TEST) $^ -o $@ $(BOOST_LDFLAGS)  


clean:
	rm -rf *.o
	rm -rf *.exe 

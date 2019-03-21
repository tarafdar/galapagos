CXXFLAGS = -g -std=c++11

LDFLAGS = -lpthread

BOOST_LDFLAGS=-lboost_thread -lboost_system $(LDFLAGS) 

net_driver = tcp

all: $(net_driver).o galapagos_kernel.o galapagos_packet.o

$^:
	$(CXX) $(CXXFLAGS) -c $^ -o $@ $(BOOST_LDFLAGS)


test.exe:  $(net_driver).o galapagos_kernel.o galapagos_packet.o test.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@ $(BOOST_LDFLAGS) 

clean:
	rm -rf *.o
	rm -rf *.exe 

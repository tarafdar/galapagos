CXXFLAGS = -g -std=c++11

LDFLAGS = -lpthread

BOOST_LDFLAGS=-lboost_thread -lboost_system $(LDFLAGS) 

all: tcp.o

tcp.o: tcp_driver.cpp  
	$(CXX) $(CXXFLAGS) -c $^ -o $@ $(BOOST_LDFLAGS)


clean:
	rm -rf *.o

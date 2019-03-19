BOOST_ROOT=/opt/boost_1_57_0
LCB_ROOT=/sources/libcouchbase/inst
CXXFLAGS=-Wall -Wextra -I/sources/libcouchbase/inst/include -I$(BOOST_ROOT)/include -g -std=c++11
LDFLAGS=-L$(BOOST_ROOT)/lib -lboost_system -Wl,-rpath=$(BOOST_ROOT)/lib

all: libcouchbase_boost_asio.so

libcouchbase_boost_asio.so: lcb-boost-plugin.cpp
	$(CXX) $(CXXFLAGS) -shared -fPIC $^ -o $@ $(LDFLAGS)
	cp $@ /sources/libcouchbase/build/lib

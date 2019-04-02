#define CATCH_CONFIG_MAIN
#include "catch.hpp"

#include <string>
#include <math.h>
#include <thread>
#include <chrono>

#include "kernel.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos_router.hpp"
#include "galapagos_node.hpp"


TEST_CASE( "HELLO_WORLD" ) {
    galapagos::kernel gk(0);
    gk.start(helloWorld);
    gk.barrier(); 

}


//KERNEL: SEND, USING RAW POINTER FOR HLS STREAM AND GALAPAGOS STREAM
TEST_CASE( "KERNEL:1" ) {
    int source = 0;
    int dest = 1;
    
    galapagos::stream in;
    galapagos::stream out;
    galapagos::kernel gk(source, &in, &out);
    gk.start(kern0);
    gk.barrier(); 

    REQUIRE(out.size() == 10);
    int total = out.size();
    for(int i=0; i<total; i++){
        galapagos::stream_packet gps = out.read();
        REQUIRE(gps.dest == dest);
    }
    
    
}


TEST_CASE( "ROUTER:1" ) {

    int source = 0;
    
    std::string my_address = "localhost";
    std::vector <std::string> kern_info;
    kern_info.push_back(my_address);
    kern_info.push_back(my_address);
    
    galapagos::router router(kern_info, my_address);
    galapagos::kernel gk(source);
    router.add_kernel(&gk);
    router.start();

    galapagos::stream_packet gps;
    gps.dest = 0;
    gps.data = 42;
    gps.last = 1;

    router.write(gps);
    galapagos::stream_packet gps2 = router.read(0);
    std::this_thread::sleep_for(std::chrono::nanoseconds(1000));
    router.end();

    REQUIRE(gps.dest == gps2.dest);
    REQUIRE(gps.data == gps2.data);
    REQUIRE(gps.last == gps2.last);

}

TEST_CASE( "ROUTER:2" ) {

    int source = 0;
    std::string my_address = "localhost";
    std::vector <std::string> kern_info;
    kern_info.push_back(my_address);
    kern_info.push_back(my_address);
    
    galapagos::router router(kern_info, my_address);
    galapagos::kernel gk(source);
    router.add_kernel(&gk);
    router.start();
    
    std::vector <galapagos::stream_packet> gps_in, gps_out;

    for(int i=0; i<1000; i++){
        galapagos::stream_packet gps;
        gps.dest = source;
        gps.data = i;
        if(i%20 == 0)
            gps.last = 1;
        else
            gps.last = 0;


        gps_in.push_back(gps);
        router.write(gps);
    }

    REQUIRE(router.m_size(source) + router.s_size(source) == 1000);

    for(int i=0; i<1000; i++){
        galapagos::stream_packet gps = router.read(0);
        REQUIRE(gps.dest == gps_in[i].dest);
        REQUIRE(gps.data == gps_in[i].data);
        REQUIRE(gps.last == gps_in[i].last);


    }
    
    REQUIRE(router.s_size(source) == 0);
    
    std::this_thread::sleep_for(std::chrono::nanoseconds(1000));
    router.end();

}


TEST_CASE( "ROUTER:3" ) {

    int source = 0;
    int dest = 1;
    std::string my_address = "localhost";
    std::vector <std::string> kern_info;
    kern_info.push_back(my_address);
    kern_info.push_back(my_address);

    galapagos::router router(kern_info, my_address);
    galapagos::kernel gk_source(source);
    galapagos::kernel gk_dest(dest);

    router.add_kernel(&gk_source);
    router.add_kernel(&gk_dest);
    router.start();
    
    gk_source.start(kern0);
    gk_dest.start(kern1);
    
    gk_source.barrier(); 
    gk_dest.barrier(); 
    router.end();
}

TEST_CASE( "ROUTER:4" ) {

    int source = 0;
    int dest = 1;
    std::string my_address = "localhost";
    std::vector <std::string> kern_info;
    kern_info.push_back(my_address);
    kern_info.push_back(my_address);

    galapagos::router router(kern_info, my_address);
    galapagos::kernel gk_source(source);
    galapagos::kernel gk_dest(dest);
    gk_source.set_func(kern0);
    gk_dest.set_func(kern1);

    router.add_kernel(&gk_source);
    router.add_kernel(&gk_dest);
    router.start();
    
    gk_source.start();
    gk_dest.start();
    
    gk_source.barrier(); 
    gk_dest.barrier(); 
    router.end();
}

TEST_CASE( "NODE:1" ) {
    
    int source = 0;
    int dest = 1;
    std::string my_address = "localhost";
    std::vector <std::string> kern_info;
    kern_info.push_back(my_address);
    kern_info.push_back(my_address);

    galapagos::node node(kern_info, my_address);
    node.add_kernel(source, kern0);
    node.add_kernel(dest, kern1);
    node.start();
    node.end();

}

TEST_CASE( "NET:1" ) {
    
    int source = 0;
    int dest = 1;
    std::string node_0_address = "localhost";
    std::string node_1_address = "192.168.1.106";
    std::vector <std::string> kern_info;
    kern_info.push_back(node_0_address);
    kern_info.push_back(node_1_address);

    galapagos::node node_0(kern_info, node_0_address);
//    galapagos::node node_1(kern_info, node_1_address);
    node_0.add_kernel(source, kern0);
//    node_1.add_kernel(dest, kern1);
    node_0.start();
    while(1);
 //   node_1.start();
 //    node_0.end();
 //   node_1.end();

}

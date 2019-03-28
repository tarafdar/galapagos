#define CATCH_CONFIG_MAIN
#include "catch.hpp"

#include <string>
#include <math.h>
#include <thread>
#include <chrono>

#include "kernel.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos_router.hpp"

//void galapagos_packet_test(char * test, int count, int dest){
//    
//    galapagos_packet gp(test, count, dest);
//
//    REQUIRE(gp.size == count);
//    REQUIRE(gp.dest == dest);
//    REQUIRE(gp.buffer != nullptr);
//
//    std::string buff_in, buff_out;
//    buff_in = test;
//    buff_out = gp.buffer.get();
//    
//    REQUIRE(buff_in == buff_out);
//    
//    SECTION( "hls::stream made properly" ) {
//        float num_flits = ceil((float)count/64.0);
//        
//        REQUIRE(gp.stream.size() == (int)num_flits);
//       
//        ap_uint <64> * head = (ap_uint <PACKET_DATA_LENGTH> *)gp.buffer.get();
//        
//        for(int i=0; i<count; i+=64){
//            ap_uint<64> data = (ap_uint<64>)*head;
//            head++;
//            galapagos_stream_packet gps = gp.stream.read();
//            
//            REQUIRE(gps.data == data);
//            REQUIRE(gps.dest == dest);
//            if(i>=count-64)
//                REQUIRE(gps.last == 1);
//            else
//                REQUIRE(gps.last == 0);
//
//        }
//    }
//}
//
//
//
//
//TEST_CASE( "small galapagos packet constructed" ) {
//    int count = 10;
//    int dest = 1;
//
//    char test[count] = "hello";
//    galapagos_packet_test(test, count, dest);
//
//}
//
//TEST_CASE( "medium galapagos packet constructed" ) {
//    int count = 20;
//    int dest = 1;
//
//
//    char test[count] = "hello123deadbeef";
//    galapagos_packet_test(test, count, dest);
//
//}

TEST_CASE( "HELLO_WORLD" ) {
    galapagos_kernel gk(0);
    gk.start(helloWorld);
    gk.barrier(); 

}


//KERNEL: SEND, USING RAW POINTER FOR HLS STREAM AND GALAPAGOS STREAM
TEST_CASE( "KERNEL:1" ) {
    int source = 0;
    int dest = 1;
    
    hls::stream <galapagos_stream_packet> in;
    hls::stream <galapagos_stream_packet> out;
    galapagos_kernel gk(source, &in, &out);
    gk.start(kern0);
    gk.barrier(); 

    REQUIRE(out.size() == 10);
    int total = out.size();
    for(int i=0; i<total; i++){
        galapagos_stream_packet gps = out.read();
        REQUIRE(gps.dest == dest);
    }
    
    
}


TEST_CASE( "ROUTER:1" ) {

    int source = 0;
    
    std::string my_address = "localhost";
    std::vector <std::string> kern_info;
    kern_info.push_back(my_address);
    kern_info.push_back(my_address);
    
    galapagos_router router(kern_info, my_address);
    galapagos_kernel gk(source);
    router.add_kernel(&gk);
    router.start();

    galapagos_stream_packet gps;
    gps.dest = 0;
    gps.data = 42;
    gps.last = 1;

    router.write(gps);
    galapagos_stream_packet gps2 = router.read(0);
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
    
    galapagos_router router(kern_info, my_address);
    galapagos_kernel gk(source);
    router.add_kernel(&gk);
    router.start();
    
    std::vector <galapagos_stream_packet> gps_in, gps_out;

    for(int i=0; i<1000; i++){
        galapagos_stream_packet gps;
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
        galapagos_stream_packet gps = router.read(0);
        REQUIRE(gps.dest == gps_in[i].dest);
        REQUIRE(gps.data == gps_in[i].data);
        REQUIRE(gps.last == gps_in[i].last);


    }
    
    REQUIRE(router.s_size(source) == 0);
    
    std::this_thread::sleep_for(std::chrono::nanoseconds(1000));
    router.end();

}





////GALAPAGOS: ENQUEUE 1 KERNEL
//TEST_CASE("4"){
//    int source = 0;
//    int dest = 1;
//
//    std::string my_address = "localhost";
//    std::vector <std::string> kern_info;
//    kern_info.push_back(my_address);
//    kern_info.push_back(my_address);
//
//    galapagos g(kern_info, my_address, 10);
//
//    galapagos_kernel gk(source);
//    g.enqueueKernel(&gk, kern0);
//    gk.barrier(); 
//    //REQUIRE(gk.out->size() == 10);
//    //int total = gk.out->size();
//    //for(int i=0; i<total; i++){
//    //    galapagos_stream_packet gps = gk.out->read();
//    //    REQUIRE(gps.dest == dest);
//    //}
//
//}
//
////"GALAPAGOS: ENQUEUE 2 KERNELS"
//TEST_CASE("5"){
//    int source = 0;
//    int dest = 1;
//
//    std::string my_address = "localhost";
//    std::vector <std::string> kern_info;
//    kern_info.push_back(my_address);
//    kern_info.push_back(my_address);
//
//    galapagos g(kern_info, my_address, 10);
//
//    galapagos_kernel gk(source);
//    galapagos_kernel gk2(dest);
//    g.enqueueKernel(&gk);
//    g.enqueueKernel(&gk2);
//    gk.start(kern0);
//    gk2.start(kern1);
//    gk.barrier(); 
//    gk2.barrier(); 
//    //REQUIRE(gk.out->size() == 10);
//    //int total = gk.out->size();
//    //for(int i=0; i<total; i++){
//    //    galapagos_stream_packet gps = gk.out->read();
//    //    REQUIRE(gps.dest == dest);
//    //}
//
//}

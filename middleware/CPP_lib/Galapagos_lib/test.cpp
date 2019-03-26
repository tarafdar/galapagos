#define CATCH_CONFIG_MAIN
#include "catch.hpp"

#include <string>
#include <math.h>

#include "galapagos_stream.hpp"
#include "kernel.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos.hpp"

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

TEST_CASE( "galapagos_kernel hello world" ) {
    galapagos_kernel gk(0);
    gk.start(helloWorld);

}


TEST_CASE( "galapagos_kernel send" ) {
    int source = 0;
    int dest = 1;
    
    
    galapagos_kernel gk(source);
    hls::stream <galapagos_stream_packet> in;
    hls::stream <galapagos_stream_packet> out;
    galapagos_stream gs_in(&in);
    galapagos_stream gs_out(&out);
    gk.start(kern0, &gs_in, &gs_out);

    REQUIRE(out.size() == 10);
    int total = out.size();
    for(int i=0; i<total; i++){
        galapagos_stream_packet gps = out.read();
        REQUIRE(gps.dest == dest);
    }
    
    
}


TEST_CASE("galapagos"){
    int source = 0;
    int dest = 1;

    std::string my_address = "localhost";
    std::vector <std::string> kern_info;
    kern_info.push_back(my_address);
    kern_info.push_back(my_address);

    galapagos g(kern_info, my_address, 10);
    //galapagos g(kern_info, my_address);
    //

    galapagos_kernel gk(source);
    hls::stream <galapagos_stream_packet> in;
    hls::stream <galapagos_stream_packet> out;
    galapagos_stream gs_in(&in);
    galapagos_stream gs_out(&out);
    g.enqueueKernel(&gk, kern0, &gs_in, &gs_out);
    

    REQUIRE(out.size() == 10);
    //int total = out.size();
    //for(int i=0; i<total; i++){
    //    galapagos_stream_packet gps = out.read();
    //    REQUIRE(gps.dest == dest);
    //}
    
    

}
//

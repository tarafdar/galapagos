//===============================
// AUTHOR     : Naif Tarafdar 
// CREATE DATE     : June 15, 2018
//===============================
#define CATCH_CONFIG_MAIN
#include "catch.hpp"

#include "galapagos_packet.h"
//#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"


#include "ethernet_bridge.hpp"

ap_uint<48> mac_table[256];

#define NUM_TESTS 10




ap_int <48> mac_addr_src;
ap_int <48> mac_addr_dest;
ap_uint <96> eth_dst_src;
hls::stream <galapagos_packet> from_app;
hls::stream <eth_axis> from_net;
hls::stream <eth_axis> to_net;
hls::stream <galapagos_packet> to_app;


ap_uint <16> temp_dest;
ap_uint <32> temp;
ap_int <16> temp2;
ap_int <48> temp3;
ap_uint<64> expected_flit_2;


void init(){
    mac_addr_src = 0x778899aabbcc;
    mac_addr_dest = 0x112233445566;
    
    mac_table[0] = mac_addr_src; 
    mac_table[1] = mac_addr_dest; 

    eth_dst_src = mac_addr_dest.concat(mac_addr_src);
    temp_dest(15,8) = 1;
    temp_dest(7,0) = 0;
    temp = eth_dst_src.range(31,0);
    temp2 = ETH_PROTOCOL;
    temp3 = temp.concat(temp2);
    expected_flit_2 = temp3.concat(temp_dest);


}



TEST_CASE("app_to_net"){

    init();
    
    eth_axis np;
    galapagos_packet gp;
    
    for(int i=0; i<NUM_TESTS; i++){
        gp.data = 0xdeadbeefdeadbeef;
        gp.dest = 1;
        gp.last = 0;
        from_app.write(gp);
        gp.data = 0xfacefacefaceface;
        gp.last = 1;
        from_app.write(gp);
    }


    for(int i=0; i<(NUM_TESTS*10); i++)
        ethernet_bridge(to_app, from_net, from_app, to_net, mac_addr_src);

    int num_packets = 0;
    while(!to_net.empty()){
        np = to_net.read();

        INFO("np.data " << std::hex << np.data);
        if(num_packets % 4 == 0){
            REQUIRE(np.data  == reverseEndian64_data(eth_dst_src.range(95,32))) ;
        }
        else if(num_packets % 4== 1){

            REQUIRE(np.data == reverseEndian64_data(expected_flit_2));
        }
        else if(num_packets % 4== 2)
            REQUIRE(np.data == 0xdeadbeefdeadbeef);
        else if(num_packets % 4== 3)
            REQUIRE(np.data == 0xfacefacefaceface);
        num_packets++;
    }
   


}

TEST_CASE("net_to_app"){
    init();


    eth_axis np;
    galapagos_packet gp;
    
    for(int i=0; i<NUM_TESTS; i++){
        np.data  = reverseEndian64_data(eth_dst_src.range(95,32));
        np.last = 0;
        from_net.write(np);
        np.data = reverseEndian64_data(expected_flit_2);
        from_net.write(np);
        np.data = 0xdeadbeefdeadbeef;
        from_net.write(np);
        np.last = 1;
        np.data = 0xfacefacefaceface;
        from_net.write(np);
    }


    for(int i=0; i<(NUM_TESTS*10); i++)
        ethernet_bridge(to_app, from_net, from_app, to_net, mac_addr_dest);

    int num_packets = 0;
    while(!to_app.empty()){
        gp = to_app.read();
        REQUIRE(gp.dest  == 0x0001);
        if(num_packets % 2 == 0)
            REQUIRE(gp.data  == 0xdeadbeefdeadbeef) ;
        else
            REQUIRE(gp.data  == 0xfacefacefaceface) ;
        num_packets++;
    }
}


//int main (int argc, char **argv)
//{
//
//    int retval = 0;
//
//    hls::stream <galapagos_packet> from_app;
//   
//    galapagos_packet gp;
//    for(int i=0; i<NUM_TESTS; i++){
//        gp.data = 0xdeadbeefdeadbeef;
//        gp.dest = i;
//        gp.last = 0;
//        from_app.write(gp);
//        gp.data = 0xfacefacefaceface;
//        gp.last = 1;
//    }
//
//    hls::stream <eth_axis> from_net;
//    eth_axis np;
//    
//    ap_int <48> mac_addr_dest = 0x112233445566;
//    ap_int <48> mac_addr_src = 0x778899aabbcc;
//    for(int i=0; i<NUM_TESTS; i++){
//        ap_int <64> data = i;
//
//        //all of mac_dst + upper 2 bytes of mac_src
//        data = ((mac_addr_dest >> 16) << 16) | (mac_addr_src << 32);
//        np.data = data;
//        np.last = 0;
//        from_net.write(np);
//
//        //lower 4 bytes of mac_src + ether_type + dest 
//        data = (mac_addr_src & 0xffffffff) << 32 | 0x740000 | (i & 0x00ffff);
//        np.data = data;
//        from_net.write(np);
//        
//        data = 0xdeadbeefdeadbeef;
//        np.data = data;
//        from_net.write(np);
//        
//
//        np.data = 0xfacefacefaceface;
//        np.last = 1;
//        from_net.write(np);
//    }
//
//   
//
//
//    hls::stream <eth_axis> to_net;
//    hls::stream <galapagos_packet> to_app;
//    ethernet_bridge(to_app, from_net, from_app, to_net, mac_addr_dest);
//
//   
//    int num_packets = 0;
//
//    while(!from_net.empty()){
//        np = from_net.read();
//        std::cout <<  std::hex << np.data << std::endl;
//    }
//    
//    while(!from_app.empty()){
//        gp = from_app.read();
//        std::cout <<  std::hex << gp.data << std::endl;
//    }
//
//    return 0;
//
//}

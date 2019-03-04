//===============================
// AUTHOR     : Naif Tarafdar 
// CREATE DATE     : June 15, 2018
//===============================

#include "galapagos_packet.h"
//#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"


#include "router.hpp"


#define NUM_TESTS 10

int main (int argc, char **argv)
{

    
    ap_uint<NETWORK_HEADER_LENGTH> network_table[256];

    ap_int <48> mac_addr_local = 0x112233445566;
    ap_int <48> mac_addr_network = 0x778899aabbcc;


    for(int i=0; i<256; i++){
       if(i < 128)
           network_table [i] = mac_addr_local;
       else
           network_table [i] = mac_addr_network;
    }

    int retval = 0;

    hls::stream <galapagos_packet> stream_in;
    hls::stream <galapagos_packet> stream_out_switch;
    hls::stream <galapagos_packet> stream_out_network;
   
    galapagos_packet gp;
    for(int i=0; i<256; i++){
        gp.data = i;
        gp.dest = i;
        gp.last = 0;
        stream_in.write(gp);
        gp.data = 0xdeadbeefdeadbeef;
        stream_in.write(gp);
        gp.data = 0xfacefacefaceface;
        gp.last = 1;
        stream_in.write(gp);
    }

    router( network_table, mac_addr_local, &stream_in, &stream_out_switch, &stream_out_network);

    
    while(!stream_out_switch.empty()){
        gp = stream_out_switch.read();
        std::cout <<  std::hex << gp.data << std::endl;
    }
    
    while(!stream_out_network.empty()){
        gp = stream_out_network.read();
        std::cout <<  std::hex << gp.data << std::endl;
    }

    return 0;

}

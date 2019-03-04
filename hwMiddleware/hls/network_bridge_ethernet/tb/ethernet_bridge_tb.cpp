//===============================
// AUTHOR     : Naif Tarafdar 
// CREATE DATE     : June 15, 2018
//===============================

#include "galapagos_packet.h"
//#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"


#include "ethernet_bridge.hpp"


#define NUM_TESTS 10

int main (int argc, char **argv)
{

    int retval = 0;

    hls::stream <galapagos_packet> from_app;
   
    galapagos_packet gp;
    for(int i=0; i<NUM_TESTS; i++){
        gp.data = 0xdeadbeefdeadbeef;
        gp.dest = i;
        gp.last = 0;
        from_app.write(gp);
        gp.data = 0xfacefacefaceface;
        gp.last = 1;
    }

    hls::stream <eth_axis> from_net;
    eth_axis np;
    
    ap_int <48> mac_addr_dest = 0x112233445566;
    ap_int <48> mac_addr_src = 0x778899aabbcc;
    for(int i=0; i<NUM_TESTS; i++){
        ap_int <64> data = i;

        //all of mac_dst + upper 2 bytes of mac_src
        data = ((mac_addr_dest >> 16) << 16) | (mac_addr_src << 32);
        np.data = data;
        np.last = 0;
        from_net.write(np);

        //lower 4 bytes of mac_src + ether_type + dest 
        data = (mac_addr_src & 0xffffffff) << 32 | 0x740000 | (i & 0x00ffff);
        np.data = data;
        from_net.write(np);
        
        data = 0xdeadbeefdeadbeef;
        np.data = data;
        from_net.write(np);
        

        np.data = 0xfacefacefaceface;
        np.last = 1;
        from_net.write(np);
    }

   


    hls::stream <eth_axis> to_net;
    hls::stream <galapagos_packet> to_app;
    ethernet_bridge(to_app, from_net, from_app, to_net, mac_addr_dest);

   
    int num_packets = 0;

    while(!from_net.empty()){
        np = from_net.read();
        std::cout <<  std::hex << np.data << std::endl;
    }
    
    while(!from_app.empty()){
        gp = from_app.read();
        std::cout <<  std::hex << gp.data << std::endl;
    }

    return 0;

}

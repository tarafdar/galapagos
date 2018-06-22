#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"
#include <stdio.h>

struct eth_axis{
	ap_int <64> data;
	ap_uint<1> last;
	ap_uint<8> tkeep;
};

struct app_axis{
	ap_int <64> data;
	ap_uint<1> last;
	ap_uint<8> tdest;
	ap_uint<8> tkeep;
};


ap_uint <64> reverseEndian64_data(ap_uint <64> X); 
ap_uint <8> reverseEndian64_keep(ap_uint <8> X); 

void ethernet_bridge(
	    hls::stream <app_axis> & to_app,
        hls::stream <eth_axis> & from_eth,
	    hls::stream <app_axis> & from_app,
        hls::stream <eth_axis> & to_eth,
        const ap_uint<48> mac_addr,
        ap_uint <48>  mac_table[256],
        int * state1,
        int * state2
        );

int main(){

    hls::stream <app_axis> to_app;
    hls::stream <app_axis> from_app;
    hls::stream <eth_axis> to_eth;
    hls::stream <eth_axis> from_eth;


    app_axis app_packet;
    eth_axis eth_packet;
    

    //eth to app prepare benchmark
    //two packets first packet is match 
    //second no match
    
    //source mac_address
    ap_uint <48> mac_address = 0xaabbccddeeff;
    //Preparing first packet (4 flits, match)
    
    //the dest mac is 0xaabbccddeeff (reverse endian)
    eth_packet.data = 0x00ffeeddccbbaa;
    eth_packet.tkeep = 0xff;

    eth_packet.data = reverseEndian64_data(eth_packet.data);
    eth_packet.tkeep = reverseEndian64_keep(eth_packet.tkeep);
    eth_packet.last = 0;
    
    //write first header packet
    from_eth.write(eth_packet);
    //in payload set dest to 0x42
    eth_packet.data = 0x42;
    from_eth.write(eth_packet);
    //write second header packet
    from_eth.write(eth_packet);
    //first payload packet
    from_eth.write(eth_packet);
    //second payload packet (last flit of first packet)
    eth_packet.last = 1;
    from_eth.write(eth_packet);

    //Preparing second packet (4 flits, no match)
    eth_packet.data = 0x112233445566;
    eth_packet.tkeep = 0xff;
    eth_packet.last = 0;
    from_eth.write(eth_packet);
    from_eth.write(eth_packet);
    from_eth.write(eth_packet);
    eth_packet.last = 1;
    from_eth.write(eth_packet);
    

    //app to eth prepare benchmark
    //two packets of size of four flits, first with header 0xaabbccddeeff;
    //second with header 0x112233445566;


    //preparing mac_table, tdest 0 is first then 1
    ap_uint <48> mac_table [256];
    mac_table [0] = 0xaabbccddeeff; 
    mac_table [1] = 0x112233445566; 

    app_packet.data = 0xdeadbeef;
    app_packet.tkeep = 0xff;
    app_packet.last = 0;
    app_packet.tdest = 0;
    from_app.write(app_packet);
    from_app.write(app_packet);
    from_app.write(app_packet);
    app_packet.last = 1;
    from_app.write(app_packet);

    int state1, state2;
    ethernet_bridge(to_app, from_eth, from_app, to_eth, mac_address, mac_table, &state1, &state2);
    std::cout << std::dec << " State1 " << state1 << " State2 "  << state2 << std::endl;
    ethernet_bridge(to_app, from_eth, from_app, to_eth, mac_address, mac_table, &state1, &state2);
    std::cout << std::dec << " State1 " << state1 << " State2 "  << state2 << std::endl;
    ethernet_bridge(to_app, from_eth, from_app, to_eth, mac_address, mac_table, &state1, &state2);
    std::cout << std::dec << " State1 " << state1 << " State2 "  << state2 << std::endl;
    ethernet_bridge(to_app, from_eth, from_app, to_eth, mac_address, mac_table, &state1, &state2);
    std::cout << std::dec << " State1 " << state1 << " State2 "  << state2 << std::endl;
    ethernet_bridge(to_app, from_eth, from_app, to_eth, mac_address, mac_table, &state1, &state2);
    std::cout << std::dec << " State1 " << state1 << " State2 "  << state2 << std::endl;


    //read to_app from first eth to app
    
    int packet_count = 0;
    int flit_count = 0;
    while(!to_app.empty()){
        std::cout << "Printing Application Packet " << packet_count << " Flit " << flit_count << std::endl;
        app_packet = to_app.read();
        std::cout << std::hex << "Data " << app_packet.data  <<  " Dest " << app_packet.tdest << std::endl;
        flit_count++;
        if(app_packet.last){
            flit_count = 0;
            packet_count++;
        }
    }

    while(!to_eth.empty()){
        std::cout << "Printing Ethernet Packet " << packet_count << " Flit " << flit_count << std::endl;
        eth_packet = to_eth.read();
        std::cout << std::hex << "Data " << app_packet.data  << std::endl;
        flit_count++;
        if(app_packet.last){
            flit_count = 0;
            packet_count++;
        }
    }
    std::cout << " Finished Ethernet Bridge Simulation " << std::endl;

}

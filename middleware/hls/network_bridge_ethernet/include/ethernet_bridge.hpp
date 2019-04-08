#ifndef ETHERNET_BRIDGE_HPP 
#define ETHERNET_BRIDGE_HPP

ap_uint <64> reverseEndian64_data(ap_uint <64> X); 
ap_uint <8> reverseEndian64_keep(ap_uint <8> X); 


extern ap_uint<48> mac_table[256];

struct eth_axis{
	ap_uint <64> data;
	ap_uint<1> last;
	ap_uint<8> tkeep;
};



void ethernet_bridge(
	    hls::stream <galapagos_packet> & to_app,
        hls::stream <eth_axis> & from_eth,
	    hls::stream <galapagos_packet> & from_app,
        hls::stream <eth_axis> & to_eth,
        const ap_uint<48> mac_addr
        );


//eth_to_app states
#define INIT_ETH_TO_APP 0
#define DROP_ETH_TO_APP 1
#define READ_DEST_ETH_TO_APP 2
#define STREAM_ETH_TO_APP 3

//app states
#define INIT_APP_TO_ETH 0
#define HEADER_0_APP_TO_ETH 1 
#define HEADER_1_APP_TO_ETH 2 
#define STREAM_FIRST_FLIT_APP_TO_ETH 3
#define STREAM_APP_TO_ETH 4

#define ETH_PROTOCOL 0x7400


#endif 

#ifndef ETHERNET_BRIDGE_HPP 
#define ETHERNET_BRIDGE_HPP

struct eth_axis{
	ap_int <64> data;
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

#endif 

#ifndef ROUTER_HPP
#define ROUTER_HPP

#ifdef SIM
#define NETWORK_HEADER_LENGTH 48
#endif


#include "galapagos_packet.h"

void router(

        const ap_uint<NETWORK_HEADER_LENGTH> network_table[256],
        const ap_uint <NETWORK_HEADER_LENGTH> network_addr,
        hls::stream <galapagos_packet> * stream_in,
		hls::stream <galapagos_packet>  * stream_out_switch,
		hls::stream <galapagos_packet>  * stream_out_network

);
#endif

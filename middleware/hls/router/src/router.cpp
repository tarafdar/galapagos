//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : June 20, 2018
//===============================

#include "galapagos_packet.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

#include "router.hpp"




void router(
	
        const ap_uint<NETWORK_HEADER_LENGTH> network_table[256],
        const ap_uint <NETWORK_HEADER_LENGTH> network_addr,
        hls::stream <galapagos_packet> * stream_in,
		hls::stream <galapagos_packet>  * stream_out_switch,
		hls::stream <galapagos_packet>  * stream_out_network

){
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS resource core=AXI4Stream variable=stream_out_switch
#pragma HLS resource core=AXI4Stream variable=stream_out_network

#pragma HLS DATA_PACK variable=stream_in
#pragma HLS DATA_PACK variable=stream_out_switch
#pragma HLS DATA_PACK variable=stream_out_network

#pragma HLS PIPELINE

#ifndef SIM
#pragma HLS INTERFACE ap_ctrl_none port=return
#endif

	galapagos_packet packetIn;
	galapagos_packet packetOut;

	bool inFPGA = false;
    ap_uint <NETWORK_HEADER_LENGTH> network_addr_in;

	if(!stream_in->empty()){
		packetIn = stream_in->read();
        network_addr_in = network_table[packetIn.dest];
        inFPGA = (network_addr == network_addr_in);

        if(inFPGA){
        	stream_out_switch->write(packetIn);
        }
        else{
        	stream_out_network->write(packetIn);
        }
	}


}

//===============================
// AUTHOR     : Naif Tarafdar and Nariman Eskandari
// CREATE DATE     : June 15, 2018
//===============================

#include "galapagos_packet.h"
//#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

#include "ethernet_bridge.hpp"

ap_uint <64> reverseEndian64_data(ap_uint <64> X) {
  ap_uint <64> x = X;
  x = (x & 0x00000000FFFFFFFF) << 32 | (x & 0xFFFFFFFF00000000) >> 32;
  x = (x & 0x0000FFFF0000FFFF) << 16 | (x & 0xFFFF0000FFFF0000) >> 16;
  x = (x & 0x00FF00FF00FF00FF) << 8  | (x & 0xFF00FF00FF00FF00) >> 8;
  return x;
}

ap_uint <8> reverseEndian64_keep(ap_uint <8> X) {
    ap_uint <8> x = X;
    x = (x & 0xF0) >> 4 | (x & 0x0F) << 4;
    x = (x & 0xCC) >> 2 | (x & 0x33) << 2;
    x = (x & 0xAA) >> 1 | (x & 0x55) << 1;
    return x;
}


//extern ap_uint<48> mac_table[256];

void eth_to_app(hls::stream <eth_axis> & from_eth,
                hls::stream <galapagos_packet> & to_app,
		        ap_uint <48> mac_address
                ){
#pragma HLS PIPELINE II=1

    
    static ap_uint <3> state = 0;
    static ap_uint <16> dest;
    static eth_axis eth_packet_in;
    static galapagos_packet app_packet_out;


	ap_int <48> observedAddress;
    switch (state)
    {
        //read header 
        case INIT_ETH_TO_APP:
		    if (!from_eth.empty()){
                eth_packet_in = from_eth.read();
                eth_packet_in.data = reverseEndian64_data(eth_packet_in.data);
                observedAddress = eth_packet_in.data.range(63,16);
                //on this fpga
                if(observedAddress == mac_address){
                    state = READ_DEST_ETH_TO_APP; 
                }
                else{
                    state = DROP_ETH_TO_APP;
                }
            }
            break;
        case READ_DEST_ETH_TO_APP:
		    if (!from_eth.empty()){
                eth_packet_in = from_eth.read();
                eth_packet_in.data = reverseEndian64_data(eth_packet_in.data);
		        dest = eth_packet_in.data.range(15,8);
                state = STREAM_ETH_TO_APP;
                
            }
            break;
        case STREAM_ETH_TO_APP:
            app_packet_out.dest = dest;
		    if (!from_eth.empty()){
                eth_packet_in = from_eth.read();
                //eth_packet_in.data = reverseEndian64_data(eth_packet_in.data);
                //eth_packet_in.tkeep = reverseEndian64_keep(eth_packet_in.tkeep);
                app_packet_out.keep = eth_packet_in.tkeep;
                app_packet_out.data = eth_packet_in.data;
                app_packet_out.last = eth_packet_in.last;
                to_app.write(app_packet_out);
            }
            if(app_packet_out.last){
                state = INIT_ETH_TO_APP;
            }
            else{
                state = STREAM_ETH_TO_APP;
            }
            break;
        case DROP_ETH_TO_APP:
		    if (!from_eth.empty()){
                eth_packet_in = from_eth.read();
                if(eth_packet_in.last){
                    state = INIT_ETH_TO_APP;
                }
                else{
                    state = DROP_ETH_TO_APP;
                }
            }
            break;
    }
}


void app_to_eth(
	    hls::stream <galapagos_packet> & from_app,
	    hls::stream <eth_axis> & to_eth,
        ap_int <48> src_mac_address
        )
{
#pragma HLS PIPELINE II=1

   
    static galapagos_packet app_packet_in;
    static eth_axis eth_packet_out;
    static ap_uint <48> dest_mac_address;
	static ap_uint <96> eth_dst_src;
    static ap_uint <3> state;

	ap_int <32> temp = eth_dst_src.range(31,0);
	ap_int <16> temp2 = ETH_PROTOCOL;
	ap_int <48> temp3 = temp.concat(temp2);
    ap_uint <16> temp_dest;


    switch (state)
    {
        //read dest and look up mac address
        case INIT_APP_TO_ETH:
		    if (!from_app.empty()){
                app_packet_in = from_app.read();
                dest_mac_address = mac_table[app_packet_in.dest];
                state = HEADER_0_APP_TO_ETH;

            }
            break;
        case HEADER_0_APP_TO_ETH:
	        eth_dst_src = dest_mac_address.concat(src_mac_address);
            eth_packet_out.tkeep = 0xff;
	        eth_packet_out.data = eth_dst_src.range(95,32);
            //eth_packet_out.tkeep = reverseEndian64_keep(eth_packet_out.tkeep);
            eth_packet_out.last = 0;
            eth_packet_out.data = reverseEndian64_data(eth_packet_out.data);

            to_eth.write(eth_packet_out);
            state = HEADER_1_APP_TO_ETH;
            break;
        case HEADER_1_APP_TO_ETH:
            eth_packet_out.tkeep = 0xff;
            temp_dest = 0;
            temp_dest(15,8) = app_packet_in.dest;
	        eth_packet_out.data = temp3.concat(temp_dest);
            //eth_packet_out.tkeep = reverseEndian64_keep(eth_packet_out.tkeep);
            eth_packet_out.last = 0;
            eth_packet_out.data = reverseEndian64_data(eth_packet_out.data);
            to_eth.write(eth_packet_out);
            state = STREAM_FIRST_FLIT_APP_TO_ETH;
            break;
        case STREAM_FIRST_FLIT_APP_TO_ETH:
            //eth_packet_out.tkeep = reverseEndian64_keep(app_packet_in.tkeep);
	        //eth_packet_out.data = reverseEndian64_data(app_packet_in.data);
            eth_packet_out.tkeep = app_packet_in.keep;
            eth_packet_out.data = app_packet_in.data;
            eth_packet_out.last = app_packet_in.last;
            to_eth.write(eth_packet_out);
            if(app_packet_in.last)
                state = INIT_APP_TO_ETH;
            else
                state = STREAM_APP_TO_ETH;
            break;
        case STREAM_APP_TO_ETH:
		    if (!from_app.empty()){
                app_packet_in = from_app.read();
                //eth_packet_out.tkeep = reverseEndian64_keep(app_packet_in.tkeep);
	            //eth_packet_out.data = reverseEndian64_data(app_packet_in.data);
                eth_packet_out.tkeep = app_packet_in.keep;
                eth_packet_out.data = app_packet_in.data;
                eth_packet_out.last = app_packet_in.last;

                to_eth.write(eth_packet_out);
                if(app_packet_in.last)
                    state = INIT_APP_TO_ETH;
                else
                    state = STREAM_APP_TO_ETH;
            }
            break;

    }


}



void ethernet_bridge(
	    hls::stream <galapagos_packet> & to_app,
        hls::stream <eth_axis> & from_eth,
	    hls::stream <galapagos_packet> & from_app,
        hls::stream <eth_axis> & to_eth,
#ifndef SIM
        const ap_uint<48> mac_addr
#else
        ap_uint<48> mac_addr
#endif
        )

{
#pragma HLS DATAFLOW

#pragma HLS resource core=AXI4Stream variable=to_app
#pragma HLS resource core=AXI4Stream variable=from_eth
#pragma HLS resource core=AXI4Stream variable=from_app
#pragma HLS resource core=AXI4Stream variable=to_eth

#pragma HLS DATA_PACK variable=to_app
#pragma HLS DATA_PACK variable=from_eth
#pragma HLS DATA_PACK variable=from_app
#pragma HLS DATA_PACK variable=to_eth

#pragma HLS_INTERFACE ap_ctrl_none state_out
#pragma HLS_INTERFACE ap_ctrl_none observedAddress_out 


// #pragma HLS INTERFACE axis port=to_app
// #pragma HLS INTERFACE axis port=from_eth
// #pragma HLS INTERFACE axis port=from_app
// #pragma HLS INTERFACE axis port=to_eth
//#pragma HLS INTERFACE ap_ctrl_none port=mac_addr
//#pragma HLS RESOURCE variable=mac_table core=ROM_2P_BRAM
#ifndef SIM
#pragma HLS INTERFACE ap_ctrl_none port=return
#endif
    eth_to_app(from_eth, to_app, mac_addr);
    app_to_eth(from_app, to_eth, mac_addr);

}

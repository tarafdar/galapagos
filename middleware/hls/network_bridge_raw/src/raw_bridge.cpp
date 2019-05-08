//===============================
// AUTHOR     : Naif Tarafdar, Nariman Eskandari and Varun Sharma
// CREATE DATE     : June 15, 2018
//===============================

#include <printf.h>
#include "galapagos_packet.h"
//#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

#include "raw_bridge.hpp"

//raw_to_app states
#define INIT_RAW_TO_APP 0
#define DROP_RAW_TO_APP 1
#define READ_DEST_RAW_TO_APP 2
#define STREAM_RAW_TO_APP 3

//app states
#define INIT_APP_TO_RAW 0
#define HEADER_0_APP_TO_RAW 1 
#define HEADER_1_APP_TO_RAW 2 
#define STREAM_FIRST_FLIT_APP_TO_RAW 3
#define STREAM_APP_TO_RAW 4

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

void raw_to_app(hls::stream <raw_axis> & from_raw,
                hls::stream <galapagos_packet<ap_uint<64> > > & to_app
){
#pragma HLS PIPELINE II=1

    
    static ap_uint <3> state = READ_DEST_RAW_TO_APP;
    static ap_uint <16> dest;
    static raw_axis raw_packet_in;
    static galapagos_packet<ap_uint<64> > app_packet_out;

    switch (state)
    {
        //read header 
        case READ_DEST_RAW_TO_APP:
            if (!from_raw.empty()){
                raw_packet_in = from_raw.read();
                raw_packet_in.data = reverseEndian64_data(raw_packet_in.data);
                dest = raw_packet_in.data.range(15,8);
                state = STREAM_RAW_TO_APP;
                
            }
            break;
        case STREAM_RAW_TO_APP:
            app_packet_out.dest = dest;
            if (!from_raw.empty()){
                raw_packet_in = from_raw.read();
                //raw_packet_in.data = reverseEndian64_data(raw_packet_in.data);
                //raw_packet_in.tkeep = reverseEndian64_keep(raw_packet_in.tkeep);
                app_packet_out.keep = raw_packet_in.tkeep;
                app_packet_out.data = raw_packet_in.data;
                app_packet_out.last = raw_packet_in.last;
                to_app.write(app_packet_out);
                if(app_packet_out.last){
                    state = READ_DEST_RAW_TO_APP;
                }
            }
            break;
    }
}


void app_to_raw(
        hls::stream <galapagos_packet<ap_uint<64> > > & from_app,
        hls::stream <raw_axis> & to_raw
        )
{
#pragma HLS PIPELINE II=1

    static galapagos_packet<ap_uint<64> > app_packet_in;
    static raw_axis raw_packet_out;
    static ap_uint <48> dest_mac_address;
	static ap_uint <96> raw_dst_src;
    static ap_uint <3> state = HEADER_1_APP_TO_RAW;

    ap_uint <16> temp_dest;

    switch (state)
    {
        case HEADER_1_APP_TO_RAW:
            if (!from_app.empty()){
                app_packet_in = from_app.read();
                raw_packet_out.tkeep = 0xff;
                temp_dest = 0;
                temp_dest(15,8) = app_packet_in.dest;
                raw_packet_out.data = temp_dest;
                //raw_packet_out.tkeep = reverseEndian64_keep(raw_packet_out.tkeep);
                raw_packet_out.last = 0;
                raw_packet_out.data = reverseEndian64_data(raw_packet_out.data);
                to_raw.write(raw_packet_out);
                state = STREAM_FIRST_FLIT_APP_TO_RAW;
            }
            break;
        case STREAM_FIRST_FLIT_APP_TO_RAW:
            //raw_packet_out.tkeep = reverseEndian64_keep(app_packet_in.tkeep);
	        //raw_packet_out.data = reverseEndian64_data(app_packet_in.data);
            raw_packet_out.tkeep = app_packet_in.keep;
            raw_packet_out.data = app_packet_in.data;
            raw_packet_out.last = app_packet_in.last;
            to_raw.write(raw_packet_out);
            if(app_packet_in.last)
                state = HEADER_1_APP_TO_RAW;
            else
                state = STREAM_APP_TO_RAW;
            break;
        case STREAM_APP_TO_RAW:
            if (!from_app.empty()){
                app_packet_in = from_app.read();
                //raw_packet_out.tkeep = reverseEndian64_keep(app_packet_in.tkeep);
	            //raw_packet_out.data = reverseEndian64_data(app_packet_in.data);
                raw_packet_out.tkeep = app_packet_in.keep;
                raw_packet_out.data = app_packet_in.data;
                raw_packet_out.last = app_packet_in.last;

                to_raw.write(raw_packet_out);
                if(app_packet_in.last)
                    state = HEADER_1_APP_TO_RAW;
                else
                    state = STREAM_APP_TO_RAW;
            }
            break;

    }


}



void raw_bridge(
    hls::stream <galapagos_packet<ap_uint<64> > > & to_app,
    hls::stream <raw_axis> & from_raw,
    hls::stream <galapagos_packet<ap_uint<64> > > & from_app,
    hls::stream <raw_axis> & to_raw
){
#pragma HLS DATAFLOW

#pragma HLS resource core=AXI4Stream variable=to_app
#pragma HLS resource core=AXI4Stream variable=from_raw
#pragma HLS resource core=AXI4Stream variable=from_app
#pragma HLS resource core=AXI4Stream variable=to_raw

#pragma HLS DATA_PACK variable=to_app
#pragma HLS DATA_PACK variable=from_raw
#pragma HLS DATA_PACK variable=from_app
#pragma HLS DATA_PACK variable=to_raw

#pragma HLS_INTERFACE ap_ctrl_none state_out
#pragma HLS_INTERFACE ap_ctrl_none observedAddress_out 


// #pragma HLS INTERFACE axis port=to_app
// #pragma HLS INTERFACE axis port=from_raw
// #pragma HLS INTERFACE axis port=from_app
// #pragma HLS INTERFACE axis port=to_raw
//#pragma HLS INTERFACE ap_ctrl_none port=mac_addr
//#pragma HLS RESOURCE variable=mac_table core=ROM_2P_BRAM
#ifndef SIM
#pragma HLS INTERFACE ap_ctrl_none port=return
#endif
    raw_to_app(from_raw, to_app);
    app_to_raw(from_app, to_raw);

}

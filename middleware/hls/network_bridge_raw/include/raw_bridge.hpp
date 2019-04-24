#ifndef RAW_BRIDGE_HPP 
#define RAW_BRIDGE_HPP

#include "ap_int.h"
#include "hls_stream.h"

#include "galapagos_packet.h"

struct raw_axis{
	ap_int <64> data;
	ap_uint<1> last;
	ap_uint<8> tkeep;
};

void raw_bridge(
	hls::stream <galapagos_stream_packet> & to_app,
	hls::stream <raw_axis> & from_raw,
	hls::stream <galapagos_stream_packet> & from_app,
	hls::stream <raw_axis> & to_raw
);

ap_uint <64> reverseEndian64_data(ap_uint <64> X); 
ap_uint <8> reverseEndian64_keep(ap_uint <8> X); 

#endif

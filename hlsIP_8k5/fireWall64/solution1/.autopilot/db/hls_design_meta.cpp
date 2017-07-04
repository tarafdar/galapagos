#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("eth_address_V", 48, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("stream_in_TDATA", 64, hls_in, 1, "axis", "in_data", 1),
	Port_Property("stream_in_TVALID", 1, hls_in, 2, "axis", "in_vld", 1),
	Port_Property("stream_in_TREADY", 1, hls_out, 2, "axis", "in_acc", 1),
	Port_Property("stream_in_TLAST", 1, hls_in, 2, "axis", "in_data", 1),
	Port_Property("stream_out_TDATA", 64, hls_out, 3, "axis", "out_data", 1),
	Port_Property("stream_out_TVALID", 1, hls_out, 5, "axis", "out_vld", 1),
	Port_Property("stream_out_TREADY", 1, hls_in, 5, "axis", "out_acc", 1),
	Port_Property("stream_out_TDEST", 8, hls_out, 4, "axis", "out_data", 1),
	Port_Property("stream_out_TLAST", 1, hls_out, 5, "axis", "out_data", 1),
	Port_Property("observedAddress_out_V", 48, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("dest_out_V", 16, hls_out, 7, "ap_vld", "out_data", 1),
	Port_Property("dest_out_V_ap_vld", 1, hls_out, 7, "ap_vld", "out_vld", 1),
	Port_Property("match_out_V", 1, hls_out, 8, "ap_vld", "out_data", 1),
	Port_Property("match_out_V_ap_vld", 1, hls_out, 8, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "fireWall64";

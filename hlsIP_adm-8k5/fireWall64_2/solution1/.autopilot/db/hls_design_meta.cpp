#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("stream_in_TDATA", 64, hls_in, 0, "axis", "in_data", 1),
	Port_Property("stream_in_TVALID", 1, hls_in, 2, "axis", "in_vld", 1),
	Port_Property("stream_in_TREADY", 1, hls_out, 2, "axis", "in_acc", 1),
	Port_Property("stream_in_TDEST", 8, hls_in, 1, "axis", "in_data", 1),
	Port_Property("stream_in_TLAST", 1, hls_in, 2, "axis", "in_data", 1),
	Port_Property("stream_out_TDATA", 64, hls_out, 3, "axis", "out_data", 1),
	Port_Property("stream_out_TVALID", 1, hls_out, 5, "axis", "out_vld", 1),
	Port_Property("stream_out_TREADY", 1, hls_in, 5, "axis", "out_acc", 1),
	Port_Property("stream_out_TDEST", 8, hls_out, 4, "axis", "out_data", 1),
	Port_Property("stream_out_TLAST", 1, hls_out, 5, "axis", "out_data", 1),
	Port_Property("stream_garbage_TDATA", 64, hls_out, 6, "axis", "out_data", 1),
	Port_Property("stream_garbage_TVALID", 1, hls_out, 8, "axis", "out_vld", 1),
	Port_Property("stream_garbage_TREADY", 1, hls_in, 8, "axis", "out_acc", 1),
	Port_Property("stream_garbage_TDEST", 8, hls_out, 7, "axis", "out_data", 1),
	Port_Property("stream_garbage_TLAST", 1, hls_out, 8, "axis", "out_data", 1),
	Port_Property("match_in_V", 1, hls_in, 9, "ap_vld", "in_data", 1),
	Port_Property("match_in_V_ap_vld", 1, hls_in, 9, "ap_vld", "in_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "fireWall64_2";

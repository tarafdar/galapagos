#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("packetOut_TDATA", 64, hls_out, 0, "axis", "out_data", 1),
	Port_Property("packetOut_TVALID", 1, hls_out, 2, "axis", "out_vld", 1),
	Port_Property("packetOut_TREADY", 1, hls_in, 2, "axis", "out_acc", 1),
	Port_Property("packetOut_TLAST", 1, hls_out, 1, "axis", "out_data", 1),
	Port_Property("packetOut_TDEST", 8, hls_out, 2, "axis", "out_data", 1),
	Port_Property("id_V", 32, hls_in, 3, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "packetMaker";

#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("packetIn_TDATA", 64, hls_in, 0, "axis", "in_data", 1),
	Port_Property("packetIn_TVALID", 1, hls_in, 2, "axis", "in_vld", 1),
	Port_Property("packetIn_TREADY", 1, hls_out, 2, "axis", "in_acc", 1),
	Port_Property("packetIn_TLAST", 1, hls_in, 1, "axis", "in_data", 1),
	Port_Property("packetIn_TKEEP", 8, hls_in, 2, "axis", "in_data", 1),
	Port_Property("packetOut_TDATA", 64, hls_out, 3, "axis", "out_data", 1),
	Port_Property("packetOut_TVALID", 1, hls_out, 5, "axis", "out_vld", 1),
	Port_Property("packetOut_TREADY", 1, hls_in, 5, "axis", "out_acc", 1),
	Port_Property("packetOut_TLAST", 1, hls_out, 4, "axis", "out_data", 1),
	Port_Property("packetOut_TKEEP", 8, hls_out, 5, "axis", "out_data", 1),
	Port_Property("id_V", 32, hls_in, 6, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "packetMask";

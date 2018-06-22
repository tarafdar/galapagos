#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("from_app_V_dout", 129, hls_in, 0, "ap_fifo", "fifo_data", 1),
	Port_Property("from_app_V_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("from_app_V_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 1),
	Port_Property("to_app_V_din", 129, hls_out, 1, "ap_fifo", "fifo_data", 1),
	Port_Property("to_app_V_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("to_app_V_write", 1, hls_out, 1, "ap_fifo", "fifo_update", 1),
	Port_Property("from_net_V_dout", 81, hls_in, 2, "ap_fifo", "fifo_data", 1),
	Port_Property("from_net_V_empty_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 1),
	Port_Property("from_net_V_read", 1, hls_out, 2, "ap_fifo", "fifo_update", 1),
	Port_Property("to_net_V_din", 81, hls_out, 3, "ap_fifo", "fifo_data", 1),
	Port_Property("to_net_V_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 1),
	Port_Property("to_net_V_write", 1, hls_out, 3, "ap_fifo", "fifo_update", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "application_bridge";

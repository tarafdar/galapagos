#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("mac_table_V_address0", 8, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("mac_table_V_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("mac_table_V_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("mac_addr", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("stream_in_V_dout", 81, hls_in, 2, "ap_fifo", "fifo_data", 2),
	Port_Property("stream_in_V_empty_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 2),
	Port_Property("stream_in_V_read", 1, hls_out, 2, "ap_fifo", "fifo_update", 2),
	Port_Property("stream_out_switch_V_din", 81, hls_out, 3, "ap_fifo", "fifo_data", 1),
	Port_Property("stream_out_switch_V_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 1),
	Port_Property("stream_out_switch_V_write", 1, hls_out, 3, "ap_fifo", "fifo_update", 1),
	Port_Property("stream_out_network_V_din", 81, hls_out, 4, "ap_fifo", "fifo_data", 1),
	Port_Property("stream_out_network_V_full_n", 1, hls_in, 4, "ap_fifo", "fifo_status", 1),
	Port_Property("stream_out_network_V_write", 1, hls_out, 4, "ap_fifo", "fifo_update", 1),
};
const char* HLS_Design_Meta::dut_name = "eth_dest_filter";

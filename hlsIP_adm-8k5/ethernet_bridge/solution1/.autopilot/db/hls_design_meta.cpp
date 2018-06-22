#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("to_app_V_din", 81, hls_out, 0, "ap_fifo", "fifo_data", 1),
	Port_Property("to_app_V_full_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("to_app_V_write", 1, hls_out, 0, "ap_fifo", "fifo_update", 1),
	Port_Property("from_eth_V_dout", 73, hls_in, 1, "ap_fifo", "fifo_data", 1),
	Port_Property("from_eth_V_empty_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("from_eth_V_read", 1, hls_out, 1, "ap_fifo", "fifo_update", 1),
	Port_Property("from_app_V_dout", 81, hls_in, 2, "ap_fifo", "fifo_data", 1),
	Port_Property("from_app_V_empty_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 1),
	Port_Property("from_app_V_read", 1, hls_out, 2, "ap_fifo", "fifo_update", 1),
	Port_Property("to_eth_V_din", 73, hls_out, 3, "ap_fifo", "fifo_data", 1),
	Port_Property("to_eth_V_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 1),
	Port_Property("to_eth_V_write", 1, hls_out, 3, "ap_fifo", "fifo_update", 1),
	Port_Property("mac_addr_V", 48, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("mac_table_V_address0", 8, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("mac_table_V_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("mac_table_V_d0", 48, hls_out, 5, "ap_memory", "mem_din", 1),
	Port_Property("mac_table_V_q0", 48, hls_in, 5, "ap_memory", "mem_dout", 1),
	Port_Property("mac_table_V_we0", 1, hls_out, 5, "ap_memory", "mem_we", 1),
	Port_Property("mac_table_V_address1", 8, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("mac_table_V_ce1", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("mac_table_V_d1", 48, hls_out, 5, "ap_memory", "mem_din", 1),
	Port_Property("mac_table_V_q1", 48, hls_in, 5, "ap_memory", "mem_dout", 1),
	Port_Property("mac_table_V_we1", 1, hls_out, 5, "ap_memory", "mem_we", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "ethernet_bridge";

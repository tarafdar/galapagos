#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("stream_in_V_dout", 129, hls_in, 0, "ap_fifo", "fifo_data", 3),
	Port_Property("stream_in_V_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 3),
	Port_Property("stream_in_V_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 3),
	Port_Property("stream_out_V_din", 81, hls_out, 1, "ap_fifo", "fifo_data", 4),
	Port_Property("stream_out_V_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 4),
	Port_Property("stream_out_V_write", 1, hls_out, 1, "ap_fifo", "fifo_update", 4),
};
const char* HLS_Design_Meta::dut_name = "FNR";

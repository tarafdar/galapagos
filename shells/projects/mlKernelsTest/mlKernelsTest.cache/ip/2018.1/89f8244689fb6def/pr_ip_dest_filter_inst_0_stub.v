// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Jun 12 16:26:44 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_ip_dest_filter_inst_0_stub.v
// Design      : pr_ip_dest_filter_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ip_dest_filter,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ip_table_V_ce0, ap_clk, ap_rst_n, 
  ip_table_V_address0, ip_table_V_q0, ip_addr, stream_in_TVALID, stream_in_TREADY, 
  stream_in_TDATA, stream_in_TKEEP, stream_in_TLAST, stream_in_TDEST, 
  stream_out_switch_TVALID, stream_out_switch_TREADY, stream_out_switch_TDATA, 
  stream_out_switch_TKEEP, stream_out_switch_TLAST, stream_out_switch_TDEST, 
  stream_out_network_TVALID, stream_out_network_TREADY, stream_out_network_TDATA, 
  stream_out_network_TKEEP, stream_out_network_TLAST, stream_out_network_TDEST)
/* synthesis syn_black_box black_box_pad_pin="ip_table_V_ce0,ap_clk,ap_rst_n,ip_table_V_address0[7:0],ip_table_V_q0[31:0],ip_addr[31:0],stream_in_TVALID,stream_in_TREADY,stream_in_TDATA[63:0],stream_in_TKEEP[7:0],stream_in_TLAST[0:0],stream_in_TDEST[7:0],stream_out_switch_TVALID,stream_out_switch_TREADY,stream_out_switch_TDATA[63:0],stream_out_switch_TKEEP[7:0],stream_out_switch_TLAST[0:0],stream_out_switch_TDEST[7:0],stream_out_network_TVALID,stream_out_network_TREADY,stream_out_network_TDATA[63:0],stream_out_network_TKEEP[7:0],stream_out_network_TLAST[0:0],stream_out_network_TDEST[7:0]" */;
  output ip_table_V_ce0;
  input ap_clk;
  input ap_rst_n;
  output [7:0]ip_table_V_address0;
  input [31:0]ip_table_V_q0;
  input [31:0]ip_addr;
  input stream_in_TVALID;
  output stream_in_TREADY;
  input [63:0]stream_in_TDATA;
  input [7:0]stream_in_TKEEP;
  input [0:0]stream_in_TLAST;
  input [7:0]stream_in_TDEST;
  output stream_out_switch_TVALID;
  input stream_out_switch_TREADY;
  output [63:0]stream_out_switch_TDATA;
  output [7:0]stream_out_switch_TKEEP;
  output [0:0]stream_out_switch_TLAST;
  output [7:0]stream_out_switch_TDEST;
  output stream_out_network_TVALID;
  input stream_out_network_TREADY;
  output [63:0]stream_out_network_TDATA;
  output [7:0]stream_out_network_TKEEP;
  output [0:0]stream_out_network_TLAST;
  output [7:0]stream_out_network_TDEST;
endmodule

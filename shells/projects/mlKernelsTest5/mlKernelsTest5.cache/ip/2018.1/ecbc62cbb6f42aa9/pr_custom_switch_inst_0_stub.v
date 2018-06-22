// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Jun 20 19:35:11 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_custom_switch_inst_0_stub.v
// Design      : pr_custom_switch_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "eth_dest_filter_top,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(mac_addr, mac_table_V_Clk_A, 
  mac_table_V_Rst_A, mac_table_V_EN_A, mac_table_V_WEN_A, mac_table_V_Addr_A, 
  mac_table_V_Dout_A, mac_table_V_Din_A, stream_in_V_TVALID, stream_in_V_TREADY, 
  stream_in_V_TDATA, stream_in_V_TLAST, stream_in_V_TDEST, stream_in_V_TKEEP, 
  stream_out_network_V_TVALID, stream_out_network_V_TREADY, stream_out_network_V_TDATA, 
  stream_out_network_V_TLAST, stream_out_network_V_TDEST, stream_out_network_V_TKEEP, 
  stream_out_switch_V_TVALID, stream_out_switch_V_TREADY, stream_out_switch_V_TDATA, 
  stream_out_switch_V_TLAST, stream_out_switch_V_TDEST, stream_out_switch_V_TKEEP, aclk, 
  aresetn)
/* synthesis syn_black_box black_box_pad_pin="mac_addr[31:0],mac_table_V_Clk_A,mac_table_V_Rst_A,mac_table_V_EN_A,mac_table_V_WEN_A[3:0],mac_table_V_Addr_A[31:0],mac_table_V_Dout_A[31:0],mac_table_V_Din_A[31:0],stream_in_V_TVALID,stream_in_V_TREADY,stream_in_V_TDATA[63:0],stream_in_V_TLAST[0:0],stream_in_V_TDEST[7:0],stream_in_V_TKEEP[7:0],stream_out_network_V_TVALID,stream_out_network_V_TREADY,stream_out_network_V_TDATA[63:0],stream_out_network_V_TLAST[0:0],stream_out_network_V_TDEST[7:0],stream_out_network_V_TKEEP[7:0],stream_out_switch_V_TVALID,stream_out_switch_V_TREADY,stream_out_switch_V_TDATA[63:0],stream_out_switch_V_TLAST[0:0],stream_out_switch_V_TDEST[7:0],stream_out_switch_V_TKEEP[7:0],aclk,aresetn" */;
  input [31:0]mac_addr;
  output mac_table_V_Clk_A;
  output mac_table_V_Rst_A;
  output mac_table_V_EN_A;
  output [3:0]mac_table_V_WEN_A;
  output [31:0]mac_table_V_Addr_A;
  output [31:0]mac_table_V_Dout_A;
  input [31:0]mac_table_V_Din_A;
  input stream_in_V_TVALID;
  output stream_in_V_TREADY;
  input [63:0]stream_in_V_TDATA;
  input [0:0]stream_in_V_TLAST;
  input [7:0]stream_in_V_TDEST;
  input [7:0]stream_in_V_TKEEP;
  output stream_out_network_V_TVALID;
  input stream_out_network_V_TREADY;
  output [63:0]stream_out_network_V_TDATA;
  output [0:0]stream_out_network_V_TLAST;
  output [7:0]stream_out_network_V_TDEST;
  output [7:0]stream_out_network_V_TKEEP;
  output stream_out_switch_V_TVALID;
  input stream_out_switch_V_TREADY;
  output [63:0]stream_out_switch_V_TDATA;
  output [0:0]stream_out_switch_V_TLAST;
  output [7:0]stream_out_switch_V_TDEST;
  output [7:0]stream_out_switch_V_TKEEP;
  input aclk;
  input aresetn;
endmodule

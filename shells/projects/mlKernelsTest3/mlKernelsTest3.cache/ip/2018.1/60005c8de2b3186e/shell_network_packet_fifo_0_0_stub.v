// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Jun 18 17:29:11 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ shell_network_packet_fifo_0_0_stub.v
// Design      : shell_network_packet_fifo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rx_interface_wrapper,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, s_axis_tdata, s_axis_tkeep, 
  s_axis_tvalid, s_axis_tlast, s_axis_tuser, m_axis_tready, m_axis_tdata, m_axis_tkeep, 
  m_axis_tvalid, m_axis_tlast, rx_statistics_vector, rx_statistics_valid)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tdata[63:0],s_axis_tkeep[7:0],s_axis_tvalid,s_axis_tlast,s_axis_tuser,m_axis_tready,m_axis_tdata[63:0],m_axis_tkeep[7:0],m_axis_tvalid,m_axis_tlast,rx_statistics_vector[29:0],rx_statistics_valid" */;
  input aclk;
  input aresetn;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tvalid;
  input s_axis_tlast;
  input s_axis_tuser;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output m_axis_tvalid;
  output m_axis_tlast;
  input [29:0]rx_statistics_vector;
  input rx_statistics_valid;
endmodule

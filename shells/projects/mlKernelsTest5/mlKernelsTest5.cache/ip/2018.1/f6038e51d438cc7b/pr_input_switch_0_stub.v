// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Jun 20 19:35:13 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_input_switch_0_stub.v
// Design      : pr_input_switch_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_switch_v1_1_16_axis_switch,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tkeep, s_axis_tlast, s_axis_tid, s_axis_tdest, s_axis_tuser, 
  m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tkeep, m_axis_tlast, m_axis_tid, 
  m_axis_tdest, m_axis_tuser, s_req_suppress, s_decode_err)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid[1:0],s_axis_tready[1:0],s_axis_tdata[127:0],s_axis_tkeep[15:0],s_axis_tlast[1:0],s_axis_tid[15:0],s_axis_tdest[15:0],s_axis_tuser[79:0],m_axis_tvalid[0:0],m_axis_tready[0:0],m_axis_tdata[63:0],m_axis_tkeep[7:0],m_axis_tlast[0:0],m_axis_tid[7:0],m_axis_tdest[7:0],m_axis_tuser[39:0],s_req_suppress[1:0],s_decode_err[1:0]" */;
  input aclk;
  input aresetn;
  input [1:0]s_axis_tvalid;
  output [1:0]s_axis_tready;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tkeep;
  input [1:0]s_axis_tlast;
  input [15:0]s_axis_tid;
  input [15:0]s_axis_tdest;
  input [79:0]s_axis_tuser;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [7:0]m_axis_tid;
  output [7:0]m_axis_tdest;
  output [39:0]m_axis_tuser;
  input [1:0]s_req_suppress;
  output [1:0]s_decode_err;
endmodule

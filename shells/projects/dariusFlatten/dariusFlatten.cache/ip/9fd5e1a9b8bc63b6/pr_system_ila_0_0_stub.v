// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Jun  4 19:56:58 2018
// Host        : agent-2 running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/eskand38/TCP_galapagos/galapagos/projects/dariusFlatten/0/0.srcs/sources_1/bd/pr/ip/pr_system_ila_0_0/pr_system_ila_0_0_stub.v
// Design      : pr_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_bb74,Vivado 2018.1" *)
module pr_system_ila_0_0(clk, SLOT_0_AXIS_tdest, SLOT_0_AXIS_tdata, 
  SLOT_0_AXIS_tkeep, SLOT_0_AXIS_tlast, SLOT_0_AXIS_tvalid, SLOT_0_AXIS_tready, 
  SLOT_1_AXIS_tdest, SLOT_1_AXIS_tdata, SLOT_1_AXIS_tkeep, SLOT_1_AXIS_tlast, 
  SLOT_1_AXIS_tvalid, SLOT_1_AXIS_tready, SLOT_2_AXIS_tid, SLOT_2_AXIS_tdest, 
  SLOT_2_AXIS_tdata, SLOT_2_AXIS_tkeep, SLOT_2_AXIS_tlast, SLOT_2_AXIS_tuser, 
  SLOT_2_AXIS_tvalid, SLOT_2_AXIS_tready, SLOT_3_AXIS_tid, SLOT_3_AXIS_tdest, 
  SLOT_3_AXIS_tdata, SLOT_3_AXIS_tkeep, SLOT_3_AXIS_tlast, SLOT_3_AXIS_tuser, 
  SLOT_3_AXIS_tvalid, SLOT_3_AXIS_tready, SLOT_4_AXIS_tid, SLOT_4_AXIS_tdest, 
  SLOT_4_AXIS_tdata, SLOT_4_AXIS_tkeep, SLOT_4_AXIS_tlast, SLOT_4_AXIS_tuser, 
  SLOT_4_AXIS_tvalid, SLOT_4_AXIS_tready, SLOT_5_AXIS_tid, SLOT_5_AXIS_tdest, 
  SLOT_5_AXIS_tdata, SLOT_5_AXIS_tkeep, SLOT_5_AXIS_tlast, SLOT_5_AXIS_tuser, 
  SLOT_5_AXIS_tvalid, SLOT_5_AXIS_tready, SLOT_6_AXIS_tdata, SLOT_6_AXIS_tkeep, 
  SLOT_6_AXIS_tlast, SLOT_6_AXIS_tvalid, SLOT_6_AXIS_tready, SLOT_7_AXIS_tdata, 
  SLOT_7_AXIS_tkeep, SLOT_7_AXIS_tlast, SLOT_7_AXIS_tvalid, SLOT_7_AXIS_tready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_AXIS_tdest[7:0],SLOT_0_AXIS_tdata[63:0],SLOT_0_AXIS_tkeep[7:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,SLOT_1_AXIS_tdest[15:0],SLOT_1_AXIS_tdata[63:0],SLOT_1_AXIS_tkeep[7:0],SLOT_1_AXIS_tlast,SLOT_1_AXIS_tvalid,SLOT_1_AXIS_tready,SLOT_2_AXIS_tid[7:0],SLOT_2_AXIS_tdest[7:0],SLOT_2_AXIS_tdata[63:0],SLOT_2_AXIS_tkeep[7:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tuser[39:0],SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,SLOT_3_AXIS_tid[7:0],SLOT_3_AXIS_tdest[7:0],SLOT_3_AXIS_tdata[63:0],SLOT_3_AXIS_tkeep[7:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tuser[39:0],SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,SLOT_4_AXIS_tid[7:0],SLOT_4_AXIS_tdest[7:0],SLOT_4_AXIS_tdata[63:0],SLOT_4_AXIS_tkeep[7:0],SLOT_4_AXIS_tlast,SLOT_4_AXIS_tuser[39:0],SLOT_4_AXIS_tvalid,SLOT_4_AXIS_tready,SLOT_5_AXIS_tid[7:0],SLOT_5_AXIS_tdest[7:0],SLOT_5_AXIS_tdata[63:0],SLOT_5_AXIS_tkeep[7:0],SLOT_5_AXIS_tlast,SLOT_5_AXIS_tuser[39:0],SLOT_5_AXIS_tvalid,SLOT_5_AXIS_tready,SLOT_6_AXIS_tdata[63:0],SLOT_6_AXIS_tkeep[7:0],SLOT_6_AXIS_tlast,SLOT_6_AXIS_tvalid,SLOT_6_AXIS_tready,SLOT_7_AXIS_tdata[63:0],SLOT_7_AXIS_tkeep[7:0],SLOT_7_AXIS_tlast,SLOT_7_AXIS_tvalid,SLOT_7_AXIS_tready,resetn" */;
  input clk;
  input [7:0]SLOT_0_AXIS_tdest;
  input [63:0]SLOT_0_AXIS_tdata;
  input [7:0]SLOT_0_AXIS_tkeep;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tvalid;
  input SLOT_0_AXIS_tready;
  input [15:0]SLOT_1_AXIS_tdest;
  input [63:0]SLOT_1_AXIS_tdata;
  input [7:0]SLOT_1_AXIS_tkeep;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tvalid;
  input SLOT_1_AXIS_tready;
  input [7:0]SLOT_2_AXIS_tid;
  input [7:0]SLOT_2_AXIS_tdest;
  input [63:0]SLOT_2_AXIS_tdata;
  input [7:0]SLOT_2_AXIS_tkeep;
  input SLOT_2_AXIS_tlast;
  input [39:0]SLOT_2_AXIS_tuser;
  input SLOT_2_AXIS_tvalid;
  input SLOT_2_AXIS_tready;
  input [7:0]SLOT_3_AXIS_tid;
  input [7:0]SLOT_3_AXIS_tdest;
  input [63:0]SLOT_3_AXIS_tdata;
  input [7:0]SLOT_3_AXIS_tkeep;
  input SLOT_3_AXIS_tlast;
  input [39:0]SLOT_3_AXIS_tuser;
  input SLOT_3_AXIS_tvalid;
  input SLOT_3_AXIS_tready;
  input [7:0]SLOT_4_AXIS_tid;
  input [7:0]SLOT_4_AXIS_tdest;
  input [63:0]SLOT_4_AXIS_tdata;
  input [7:0]SLOT_4_AXIS_tkeep;
  input SLOT_4_AXIS_tlast;
  input [39:0]SLOT_4_AXIS_tuser;
  input SLOT_4_AXIS_tvalid;
  input SLOT_4_AXIS_tready;
  input [7:0]SLOT_5_AXIS_tid;
  input [7:0]SLOT_5_AXIS_tdest;
  input [63:0]SLOT_5_AXIS_tdata;
  input [7:0]SLOT_5_AXIS_tkeep;
  input SLOT_5_AXIS_tlast;
  input [39:0]SLOT_5_AXIS_tuser;
  input SLOT_5_AXIS_tvalid;
  input SLOT_5_AXIS_tready;
  input [63:0]SLOT_6_AXIS_tdata;
  input [7:0]SLOT_6_AXIS_tkeep;
  input SLOT_6_AXIS_tlast;
  input SLOT_6_AXIS_tvalid;
  input SLOT_6_AXIS_tready;
  input [63:0]SLOT_7_AXIS_tdata;
  input [7:0]SLOT_7_AXIS_tkeep;
  input SLOT_7_AXIS_tlast;
  input SLOT_7_AXIS_tvalid;
  input SLOT_7_AXIS_tready;
  input resetn;
endmodule

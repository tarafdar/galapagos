// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Jun 13 00:53:06 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_bridgeFromNetwork_inst_0_stub.v
// Design      : pr_bridgeFromNetwork_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "nfr_top,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(stream_in_V_TVALID, stream_in_V_TREADY, 
  stream_in_V_TDATA, stream_in_V_TDEST, stream_in_V_TKEEP, stream_in_V_TLAST, 
  stream_out_V_TVALID, stream_out_V_TREADY, stream_out_V_TDATA, stream_out_V_TDEST, 
  stream_out_V_TLAST, stream_out_V_TKEEP, stream_out_V_TID, stream_out_V_TUSER, aclk, 
  aresetn)
/* synthesis syn_black_box black_box_pad_pin="stream_in_V_TVALID,stream_in_V_TREADY,stream_in_V_TDATA[63:0],stream_in_V_TDEST[7:0],stream_in_V_TKEEP[7:0],stream_in_V_TLAST[0:0],stream_out_V_TVALID,stream_out_V_TREADY,stream_out_V_TDATA[63:0],stream_out_V_TDEST[7:0],stream_out_V_TLAST[0:0],stream_out_V_TKEEP[7:0],stream_out_V_TID[7:0],stream_out_V_TUSER[39:0],aclk,aresetn" */;
  input stream_in_V_TVALID;
  output stream_in_V_TREADY;
  input [63:0]stream_in_V_TDATA;
  input [7:0]stream_in_V_TDEST;
  input [7:0]stream_in_V_TKEEP;
  input [0:0]stream_in_V_TLAST;
  output stream_out_V_TVALID;
  input stream_out_V_TREADY;
  output [63:0]stream_out_V_TDATA;
  output [7:0]stream_out_V_TDEST;
  output [0:0]stream_out_V_TLAST;
  output [7:0]stream_out_V_TKEEP;
  output [7:0]stream_out_V_TID;
  output [39:0]stream_out_V_TUSER;
  input aclk;
  input aresetn;
endmodule

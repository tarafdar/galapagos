// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Jun 20 19:35:22 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_application_bridge_inst_0_stub.v
// Design      : pr_application_bridge_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "application_bridge_top,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(from_app_V_TVALID, from_app_V_TREADY, 
  from_app_V_TDATA, from_app_V_TDEST, from_app_V_TLAST, from_app_V_TKEEP, from_app_V_TID, 
  from_app_V_TUSER, from_net_V_TVALID, from_net_V_TREADY, from_net_V_TDATA, 
  from_net_V_TDEST, from_net_V_TKEEP, from_net_V_TLAST, to_app_V_TVALID, to_app_V_TREADY, 
  to_app_V_TDATA, to_app_V_TDEST, to_app_V_TLAST, to_app_V_TKEEP, to_app_V_TID, 
  to_app_V_TUSER, to_net_V_TVALID, to_net_V_TREADY, to_net_V_TDATA, to_net_V_TDEST, 
  to_net_V_TKEEP, to_net_V_TLAST, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="from_app_V_TVALID,from_app_V_TREADY,from_app_V_TDATA[63:0],from_app_V_TDEST[7:0],from_app_V_TLAST[0:0],from_app_V_TKEEP[7:0],from_app_V_TID[7:0],from_app_V_TUSER[39:0],from_net_V_TVALID,from_net_V_TREADY,from_net_V_TDATA[63:0],from_net_V_TDEST[7:0],from_net_V_TKEEP[7:0],from_net_V_TLAST[0:0],to_app_V_TVALID,to_app_V_TREADY,to_app_V_TDATA[63:0],to_app_V_TDEST[7:0],to_app_V_TLAST[0:0],to_app_V_TKEEP[7:0],to_app_V_TID[7:0],to_app_V_TUSER[39:0],to_net_V_TVALID,to_net_V_TREADY,to_net_V_TDATA[63:0],to_net_V_TDEST[7:0],to_net_V_TKEEP[7:0],to_net_V_TLAST[0:0],aclk,aresetn" */;
  input from_app_V_TVALID;
  output from_app_V_TREADY;
  input [63:0]from_app_V_TDATA;
  input [7:0]from_app_V_TDEST;
  input [0:0]from_app_V_TLAST;
  input [7:0]from_app_V_TKEEP;
  input [7:0]from_app_V_TID;
  input [39:0]from_app_V_TUSER;
  input from_net_V_TVALID;
  output from_net_V_TREADY;
  input [63:0]from_net_V_TDATA;
  input [7:0]from_net_V_TDEST;
  input [7:0]from_net_V_TKEEP;
  input [0:0]from_net_V_TLAST;
  output to_app_V_TVALID;
  input to_app_V_TREADY;
  output [63:0]to_app_V_TDATA;
  output [7:0]to_app_V_TDEST;
  output [0:0]to_app_V_TLAST;
  output [7:0]to_app_V_TKEEP;
  output [7:0]to_app_V_TID;
  output [39:0]to_app_V_TUSER;
  output to_net_V_TVALID;
  input to_net_V_TREADY;
  output [63:0]to_net_V_TDATA;
  output [7:0]to_net_V_TDEST;
  output [7:0]to_net_V_TKEEP;
  output [0:0]to_net_V_TLAST;
  input aclk;
  input aresetn;
endmodule

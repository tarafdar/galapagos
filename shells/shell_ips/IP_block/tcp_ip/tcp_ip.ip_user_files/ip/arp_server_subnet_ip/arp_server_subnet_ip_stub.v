// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Apr  9 18:02:47 2018
// Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madanie1/Documents/2017.4/8v3/repo/tcp_ip/tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/arp_server_subnet_ip_stub.v
// Design      : arp_server_subnet_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1157-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "arp_server_subnet_top,Vivado 2017.4" *)
module arp_server_subnet_ip(myMacAddress_V, myIpAddress_V, m_axis_TVALID, 
  m_axis_TREADY, m_axis_TDATA, m_axis_TKEEP, m_axis_TLAST, m_axis_arp_lookup_reply_TVALID, 
  m_axis_arp_lookup_reply_TREADY, m_axis_arp_lookup_reply_TDATA, s_axis_TVALID, 
  s_axis_TREADY, s_axis_TDATA, s_axis_TKEEP, s_axis_TLAST, 
  s_axis_arp_lookup_request_TVALID, s_axis_arp_lookup_request_TREADY, 
  s_axis_arp_lookup_request_TDATA, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="myMacAddress_V[47:0],myIpAddress_V[31:0],m_axis_TVALID,m_axis_TREADY,m_axis_TDATA[63:0],m_axis_TKEEP[7:0],m_axis_TLAST[0:0],m_axis_arp_lookup_reply_TVALID,m_axis_arp_lookup_reply_TREADY,m_axis_arp_lookup_reply_TDATA[55:0],s_axis_TVALID,s_axis_TREADY,s_axis_TDATA[63:0],s_axis_TKEEP[7:0],s_axis_TLAST[0:0],s_axis_arp_lookup_request_TVALID,s_axis_arp_lookup_request_TREADY,s_axis_arp_lookup_request_TDATA[31:0],aclk,aresetn" */;
  input [47:0]myMacAddress_V;
  input [31:0]myIpAddress_V;
  output m_axis_TVALID;
  input m_axis_TREADY;
  output [63:0]m_axis_TDATA;
  output [7:0]m_axis_TKEEP;
  output [0:0]m_axis_TLAST;
  output m_axis_arp_lookup_reply_TVALID;
  input m_axis_arp_lookup_reply_TREADY;
  output [55:0]m_axis_arp_lookup_reply_TDATA;
  input s_axis_TVALID;
  output s_axis_TREADY;
  input [63:0]s_axis_TDATA;
  input [7:0]s_axis_TKEEP;
  input [0:0]s_axis_TLAST;
  input s_axis_arp_lookup_request_TVALID;
  output s_axis_arp_lookup_request_TREADY;
  input [31:0]s_axis_arp_lookup_request_TDATA;
  input aclk;
  input aresetn;
endmodule

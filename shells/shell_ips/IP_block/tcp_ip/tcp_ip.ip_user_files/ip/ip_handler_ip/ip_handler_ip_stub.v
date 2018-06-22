// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Apr  9 18:02:30 2018
// Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madanie1/Documents/2017.4/8v3/repo/tcp_ip/tcp_ip.srcs/sources_1/ip/ip_handler_ip/ip_handler_ip_stub.v
// Design      : ip_handler_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1157-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ip_handler,Vivado 2017.4" *)
module ip_handler_ip(s_axis_raw_TVALID, s_axis_raw_TREADY, 
  s_axis_raw_TDATA, s_axis_raw_TKEEP, s_axis_raw_TLAST, m_axis_ARP_TVALID, 
  m_axis_ARP_TREADY, m_axis_ARP_TDATA, m_axis_ARP_TKEEP, m_axis_ARP_TLAST, 
  m_axis_ICMP_TVALID, m_axis_ICMP_TREADY, m_axis_ICMP_TDATA, m_axis_ICMP_TKEEP, 
  m_axis_ICMP_TLAST, m_axis_UDP_TVALID, m_axis_UDP_TREADY, m_axis_UDP_TDATA, 
  m_axis_UDP_TKEEP, m_axis_UDP_TLAST, m_axis_TCP_TVALID, m_axis_TCP_TREADY, 
  m_axis_TCP_TDATA, m_axis_TCP_TKEEP, m_axis_TCP_TLAST, myIpAddress_V, ap_clk, ap_rst_n)
/* synthesis syn_black_box black_box_pad_pin="s_axis_raw_TVALID,s_axis_raw_TREADY,s_axis_raw_TDATA[63:0],s_axis_raw_TKEEP[7:0],s_axis_raw_TLAST[0:0],m_axis_ARP_TVALID,m_axis_ARP_TREADY,m_axis_ARP_TDATA[63:0],m_axis_ARP_TKEEP[7:0],m_axis_ARP_TLAST[0:0],m_axis_ICMP_TVALID,m_axis_ICMP_TREADY,m_axis_ICMP_TDATA[63:0],m_axis_ICMP_TKEEP[7:0],m_axis_ICMP_TLAST[0:0],m_axis_UDP_TVALID,m_axis_UDP_TREADY,m_axis_UDP_TDATA[63:0],m_axis_UDP_TKEEP[7:0],m_axis_UDP_TLAST[0:0],m_axis_TCP_TVALID,m_axis_TCP_TREADY,m_axis_TCP_TDATA[63:0],m_axis_TCP_TKEEP[7:0],m_axis_TCP_TLAST[0:0],myIpAddress_V[31:0],ap_clk,ap_rst_n" */;
  input s_axis_raw_TVALID;
  output s_axis_raw_TREADY;
  input [63:0]s_axis_raw_TDATA;
  input [7:0]s_axis_raw_TKEEP;
  input [0:0]s_axis_raw_TLAST;
  output m_axis_ARP_TVALID;
  input m_axis_ARP_TREADY;
  output [63:0]m_axis_ARP_TDATA;
  output [7:0]m_axis_ARP_TKEEP;
  output [0:0]m_axis_ARP_TLAST;
  output m_axis_ICMP_TVALID;
  input m_axis_ICMP_TREADY;
  output [63:0]m_axis_ICMP_TDATA;
  output [7:0]m_axis_ICMP_TKEEP;
  output [0:0]m_axis_ICMP_TLAST;
  output m_axis_UDP_TVALID;
  input m_axis_UDP_TREADY;
  output [63:0]m_axis_UDP_TDATA;
  output [7:0]m_axis_UDP_TKEEP;
  output [0:0]m_axis_UDP_TLAST;
  output m_axis_TCP_TVALID;
  input m_axis_TCP_TREADY;
  output [63:0]m_axis_TCP_TDATA;
  output [7:0]m_axis_TCP_TKEEP;
  output [0:0]m_axis_TCP_TLAST;
  input [31:0]myIpAddress_V;
  input ap_clk;
  input ap_rst_n;
endmodule

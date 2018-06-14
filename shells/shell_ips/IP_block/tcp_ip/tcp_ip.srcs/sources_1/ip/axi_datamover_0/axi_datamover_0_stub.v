// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Feb 23 15:13:17 2018
// Host        : agent-20 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madanie1/Documents/2017.4/8v3/repo/hls/tcp_test/tcp_ip/scripts/build/proj2017/tcp_ip.srcs/sources_1/ip/axi_datamover_0/axi_datamover_0_stub.v
// Design      : axi_datamover_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1157-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_datamover,Vivado 2017.4" *)
module axi_datamover_0(m_axi_mm2s_aclk, m_axi_mm2s_aresetn, 
  mm2s_err, m_axis_mm2s_cmdsts_aclk, m_axis_mm2s_cmdsts_aresetn, s_axis_mm2s_cmd_tvalid, 
  s_axis_mm2s_cmd_tready, s_axis_mm2s_cmd_tdata, m_axis_mm2s_sts_tvalid, 
  m_axis_mm2s_sts_tready, m_axis_mm2s_sts_tdata, m_axis_mm2s_sts_tkeep, 
  m_axis_mm2s_sts_tlast, m_axi_mm2s_arid, m_axi_mm2s_araddr, m_axi_mm2s_arlen, 
  m_axi_mm2s_arsize, m_axi_mm2s_arburst, m_axi_mm2s_arprot, m_axi_mm2s_arcache, 
  m_axi_mm2s_aruser, m_axi_mm2s_arvalid, m_axi_mm2s_arready, m_axi_mm2s_rdata, 
  m_axi_mm2s_rresp, m_axi_mm2s_rlast, m_axi_mm2s_rvalid, m_axi_mm2s_rready, 
  m_axis_mm2s_tdata, m_axis_mm2s_tkeep, m_axis_mm2s_tlast, m_axis_mm2s_tvalid, 
  m_axis_mm2s_tready, m_axi_s2mm_aclk, m_axi_s2mm_aresetn, s2mm_err, 
  m_axis_s2mm_cmdsts_awclk, m_axis_s2mm_cmdsts_aresetn, s_axis_s2mm_cmd_tvalid, 
  s_axis_s2mm_cmd_tready, s_axis_s2mm_cmd_tdata, m_axis_s2mm_sts_tvalid, 
  m_axis_s2mm_sts_tready, m_axis_s2mm_sts_tdata, m_axis_s2mm_sts_tkeep, 
  m_axis_s2mm_sts_tlast, m_axi_s2mm_awid, m_axi_s2mm_awaddr, m_axi_s2mm_awlen, 
  m_axi_s2mm_awsize, m_axi_s2mm_awburst, m_axi_s2mm_awprot, m_axi_s2mm_awcache, 
  m_axi_s2mm_awuser, m_axi_s2mm_awvalid, m_axi_s2mm_awready, m_axi_s2mm_wdata, 
  m_axi_s2mm_wstrb, m_axi_s2mm_wlast, m_axi_s2mm_wvalid, m_axi_s2mm_wready, 
  m_axi_s2mm_bresp, m_axi_s2mm_bvalid, m_axi_s2mm_bready, s_axis_s2mm_tdata, 
  s_axis_s2mm_tkeep, s_axis_s2mm_tlast, s_axis_s2mm_tvalid, s_axis_s2mm_tready)
/* synthesis syn_black_box black_box_pad_pin="m_axi_mm2s_aclk,m_axi_mm2s_aresetn,mm2s_err,m_axis_mm2s_cmdsts_aclk,m_axis_mm2s_cmdsts_aresetn,s_axis_mm2s_cmd_tvalid,s_axis_mm2s_cmd_tready,s_axis_mm2s_cmd_tdata[71:0],m_axis_mm2s_sts_tvalid,m_axis_mm2s_sts_tready,m_axis_mm2s_sts_tdata[7:0],m_axis_mm2s_sts_tkeep[0:0],m_axis_mm2s_sts_tlast,m_axi_mm2s_arid[3:0],m_axi_mm2s_araddr[31:0],m_axi_mm2s_arlen[7:0],m_axi_mm2s_arsize[2:0],m_axi_mm2s_arburst[1:0],m_axi_mm2s_arprot[2:0],m_axi_mm2s_arcache[3:0],m_axi_mm2s_aruser[3:0],m_axi_mm2s_arvalid,m_axi_mm2s_arready,m_axi_mm2s_rdata[511:0],m_axi_mm2s_rresp[1:0],m_axi_mm2s_rlast,m_axi_mm2s_rvalid,m_axi_mm2s_rready,m_axis_mm2s_tdata[63:0],m_axis_mm2s_tkeep[7:0],m_axis_mm2s_tlast,m_axis_mm2s_tvalid,m_axis_mm2s_tready,m_axi_s2mm_aclk,m_axi_s2mm_aresetn,s2mm_err,m_axis_s2mm_cmdsts_awclk,m_axis_s2mm_cmdsts_aresetn,s_axis_s2mm_cmd_tvalid,s_axis_s2mm_cmd_tready,s_axis_s2mm_cmd_tdata[71:0],m_axis_s2mm_sts_tvalid,m_axis_s2mm_sts_tready,m_axis_s2mm_sts_tdata[7:0],m_axis_s2mm_sts_tkeep[0:0],m_axis_s2mm_sts_tlast,m_axi_s2mm_awid[3:0],m_axi_s2mm_awaddr[31:0],m_axi_s2mm_awlen[7:0],m_axi_s2mm_awsize[2:0],m_axi_s2mm_awburst[1:0],m_axi_s2mm_awprot[2:0],m_axi_s2mm_awcache[3:0],m_axi_s2mm_awuser[3:0],m_axi_s2mm_awvalid,m_axi_s2mm_awready,m_axi_s2mm_wdata[511:0],m_axi_s2mm_wstrb[63:0],m_axi_s2mm_wlast,m_axi_s2mm_wvalid,m_axi_s2mm_wready,m_axi_s2mm_bresp[1:0],m_axi_s2mm_bvalid,m_axi_s2mm_bready,s_axis_s2mm_tdata[63:0],s_axis_s2mm_tkeep[7:0],s_axis_s2mm_tlast,s_axis_s2mm_tvalid,s_axis_s2mm_tready" */;
  input m_axi_mm2s_aclk;
  input m_axi_mm2s_aresetn;
  output mm2s_err;
  input m_axis_mm2s_cmdsts_aclk;
  input m_axis_mm2s_cmdsts_aresetn;
  input s_axis_mm2s_cmd_tvalid;
  output s_axis_mm2s_cmd_tready;
  input [71:0]s_axis_mm2s_cmd_tdata;
  output m_axis_mm2s_sts_tvalid;
  input m_axis_mm2s_sts_tready;
  output [7:0]m_axis_mm2s_sts_tdata;
  output [0:0]m_axis_mm2s_sts_tkeep;
  output m_axis_mm2s_sts_tlast;
  output [3:0]m_axi_mm2s_arid;
  output [31:0]m_axi_mm2s_araddr;
  output [7:0]m_axi_mm2s_arlen;
  output [2:0]m_axi_mm2s_arsize;
  output [1:0]m_axi_mm2s_arburst;
  output [2:0]m_axi_mm2s_arprot;
  output [3:0]m_axi_mm2s_arcache;
  output [3:0]m_axi_mm2s_aruser;
  output m_axi_mm2s_arvalid;
  input m_axi_mm2s_arready;
  input [511:0]m_axi_mm2s_rdata;
  input [1:0]m_axi_mm2s_rresp;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  output m_axi_mm2s_rready;
  output [63:0]m_axis_mm2s_tdata;
  output [7:0]m_axis_mm2s_tkeep;
  output m_axis_mm2s_tlast;
  output m_axis_mm2s_tvalid;
  input m_axis_mm2s_tready;
  input m_axi_s2mm_aclk;
  input m_axi_s2mm_aresetn;
  output s2mm_err;
  input m_axis_s2mm_cmdsts_awclk;
  input m_axis_s2mm_cmdsts_aresetn;
  input s_axis_s2mm_cmd_tvalid;
  output s_axis_s2mm_cmd_tready;
  input [71:0]s_axis_s2mm_cmd_tdata;
  output m_axis_s2mm_sts_tvalid;
  input m_axis_s2mm_sts_tready;
  output [7:0]m_axis_s2mm_sts_tdata;
  output [0:0]m_axis_s2mm_sts_tkeep;
  output m_axis_s2mm_sts_tlast;
  output [3:0]m_axi_s2mm_awid;
  output [31:0]m_axi_s2mm_awaddr;
  output [7:0]m_axi_s2mm_awlen;
  output [2:0]m_axi_s2mm_awsize;
  output [1:0]m_axi_s2mm_awburst;
  output [2:0]m_axi_s2mm_awprot;
  output [3:0]m_axi_s2mm_awcache;
  output [3:0]m_axi_s2mm_awuser;
  output m_axi_s2mm_awvalid;
  input m_axi_s2mm_awready;
  output [511:0]m_axi_s2mm_wdata;
  output [63:0]m_axi_s2mm_wstrb;
  output m_axi_s2mm_wlast;
  output m_axi_s2mm_wvalid;
  input m_axi_s2mm_wready;
  input [1:0]m_axi_s2mm_bresp;
  input m_axi_s2mm_bvalid;
  output m_axi_s2mm_bready;
  input [63:0]s_axis_s2mm_tdata;
  input [7:0]s_axis_s2mm_tkeep;
  input s_axis_s2mm_tlast;
  input s_axis_s2mm_tvalid;
  output s_axis_s2mm_tready;
endmodule

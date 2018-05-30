// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed May 23 17:49:11 2018
// Host        : integrators running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_pr_controller_0_0/shell_axi_pr_controller_0_0_stub.v
// Design      : shell_axi_pr_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "prController,Vivado 2018.1" *)
module shell_axi_pr_controller_0_0(aclk, aresetn, s_axi_ctrl_awaddr, 
  s_axi_ctrl_awvalid, s_axi_ctrl_awready, s_axi_ctrl_wdata, s_axi_ctrl_wvalid, 
  s_axi_ctrl_wready, s_axi_ctrl_bresp, s_axi_ctrl_bvalid, s_axi_ctrl_bready, 
  s_axi_ctrl_araddr, s_axi_ctrl_arvalid, s_axi_ctrl_arready, s_axi_ctrl_rdata, 
  s_axi_ctrl_rresp, s_axi_ctrl_rvalid, s_axi_ctrl_rready, m_axi_arid, m_axi_araddr, 
  m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arprot, m_axi_arcache, m_axi_aruser, 
  m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rresp, m_axi_rlast, m_axi_rvalid, 
  m_axi_rready, m_axi_awid, m_axi_awaddr, m_axi_awlen, m_axi_awsize, m_axi_awburst, 
  m_axi_awprot, m_axi_awcache, m_axi_awuser, m_axi_awvalid, m_axi_awready, m_axi_wdata, 
  m_axi_wstrb, m_axi_wlast, m_axi_wvalid, m_axi_wready, m_axi_bresp, m_axi_bvalid, 
  m_axi_bready, done_interrupt)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_ctrl_awaddr[31:0],s_axi_ctrl_awvalid,s_axi_ctrl_awready,s_axi_ctrl_wdata[31:0],s_axi_ctrl_wvalid,s_axi_ctrl_wready,s_axi_ctrl_bresp[1:0],s_axi_ctrl_bvalid,s_axi_ctrl_bready,s_axi_ctrl_araddr[31:0],s_axi_ctrl_arvalid,s_axi_ctrl_arready,s_axi_ctrl_rdata[31:0],s_axi_ctrl_rresp[1:0],s_axi_ctrl_rvalid,s_axi_ctrl_rready,m_axi_arid[3:0],m_axi_araddr[39:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arcache[3:0],m_axi_aruser[3:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[63:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready,m_axi_awid[3:0],m_axi_awaddr[39:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awprot[2:0],m_axi_awcache[3:0],m_axi_awuser[3:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[63:0],m_axi_wstrb[7:0],m_axi_wlast,m_axi_wvalid,m_axi_wready,m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,done_interrupt" */;
  input aclk;
  input aresetn;
  input [31:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [3:0]m_axi_arid;
  output [39:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arcache;
  output [3:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
  output [3:0]m_axi_awid;
  output [39:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awcache;
  output [3:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output done_interrupt;
endmodule

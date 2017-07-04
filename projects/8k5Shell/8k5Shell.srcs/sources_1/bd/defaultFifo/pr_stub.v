// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Jul  2 17:22:36 2017
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/defaultFifo/pr_stub.v
// Design      : pr
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pr(ARESETN, CLK_CONTROL, CLK_DATA, M_AXIS_tdata, 
  M_AXIS_tkeep, M_AXIS_tlast, M_AXIS_tready, M_AXIS_tvalid, S_AXIS_tdata, S_AXIS_tkeep, 
  S_AXIS_tlast, S_AXIS_tready, S_AXIS_tvalid, S_AXI_araddr, S_AXI_arburst, S_AXI_arcache, 
  S_AXI_arlen, S_AXI_arlock, S_AXI_arprot, S_AXI_arready, S_AXI_arsize, S_AXI_arvalid, 
  S_AXI_awaddr, S_AXI_awburst, S_AXI_awcache, S_AXI_awlen, S_AXI_awlock, S_AXI_awprot, 
  S_AXI_awready, S_AXI_awsize, S_AXI_awvalid, S_AXI_bready, S_AXI_bresp, S_AXI_bvalid, 
  S_AXI_rdata, S_AXI_rlast, S_AXI_rready, S_AXI_rresp, S_AXI_rvalid, S_AXI_wdata, S_AXI_wlast, 
  S_AXI_wready, S_AXI_wstrb, S_AXI_wvalid)
/* synthesis syn_black_box black_box_pad_pin="ARESETN,CLK_CONTROL,CLK_DATA,M_AXIS_tdata[63:0],M_AXIS_tkeep[7:0],M_AXIS_tlast,M_AXIS_tready,M_AXIS_tvalid,S_AXIS_tdata[63:0],S_AXIS_tkeep[7:0],S_AXIS_tlast,S_AXIS_tready,S_AXIS_tvalid,S_AXI_araddr[15:0],S_AXI_arburst[1:0],S_AXI_arcache[3:0],S_AXI_arlen[7:0],S_AXI_arlock,S_AXI_arprot[2:0],S_AXI_arready,S_AXI_arsize[2:0],S_AXI_arvalid,S_AXI_awaddr[15:0],S_AXI_awburst[1:0],S_AXI_awcache[3:0],S_AXI_awlen[7:0],S_AXI_awlock,S_AXI_awprot[2:0],S_AXI_awready,S_AXI_awsize[2:0],S_AXI_awvalid,S_AXI_bready,S_AXI_bresp[1:0],S_AXI_bvalid,S_AXI_rdata[63:0],S_AXI_rlast,S_AXI_rready,S_AXI_rresp[1:0],S_AXI_rvalid,S_AXI_wdata[63:0],S_AXI_wlast,S_AXI_wready,S_AXI_wstrb[7:0],S_AXI_wvalid" */;
  input ARESETN;
  input CLK_CONTROL;
  input CLK_DATA;
  output [63:0]M_AXIS_tdata;
  output [7:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input [63:0]S_AXIS_tdata;
  input [7:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input [15:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;
endmodule

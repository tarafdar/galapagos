// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue May 15 11:56:09 2018
// Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/defaultFifo/pr_stub.v
// Design      : pr
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pr(ARESETN, CLK, M_AXIS_tdata, M_AXIS_tkeep, 
  M_AXIS_tlast, M_AXIS_tready, M_AXIS_tvalid, S_AXIS_tdata, S_AXIS_tkeep, S_AXIS_tlast, 
  S_AXIS_tready, S_AXIS_tvalid, S_AXI_CONTROL_araddr, S_AXI_CONTROL_arprot, 
  S_AXI_CONTROL_arqos, S_AXI_CONTROL_arready, S_AXI_CONTROL_arvalid, 
  S_AXI_CONTROL_awaddr, S_AXI_CONTROL_awprot, S_AXI_CONTROL_awqos, S_AXI_CONTROL_awready, 
  S_AXI_CONTROL_awvalid, S_AXI_CONTROL_bready, S_AXI_CONTROL_bresp, S_AXI_CONTROL_bvalid, 
  S_AXI_CONTROL_rdata, S_AXI_CONTROL_rready, S_AXI_CONTROL_rresp, S_AXI_CONTROL_rvalid, 
  S_AXI_CONTROL_wdata, S_AXI_CONTROL_wready, S_AXI_CONTROL_wstrb, S_AXI_CONTROL_wvalid, 
  S_AXI_MEM_araddr, S_AXI_MEM_arburst, S_AXI_MEM_arcache, S_AXI_MEM_arid, S_AXI_MEM_arlen, 
  S_AXI_MEM_arlock, S_AXI_MEM_arprot, S_AXI_MEM_arqos, S_AXI_MEM_arready, S_AXI_MEM_arsize, 
  S_AXI_MEM_arvalid, S_AXI_MEM_awaddr, S_AXI_MEM_awburst, S_AXI_MEM_awcache, 
  S_AXI_MEM_awid, S_AXI_MEM_awlen, S_AXI_MEM_awlock, S_AXI_MEM_awprot, S_AXI_MEM_awqos, 
  S_AXI_MEM_awready, S_AXI_MEM_awsize, S_AXI_MEM_awvalid, S_AXI_MEM_bid, S_AXI_MEM_bready, 
  S_AXI_MEM_bresp, S_AXI_MEM_bvalid, S_AXI_MEM_rdata, S_AXI_MEM_rid, S_AXI_MEM_rlast, 
  S_AXI_MEM_rready, S_AXI_MEM_rresp, S_AXI_MEM_rvalid, S_AXI_MEM_wdata, S_AXI_MEM_wlast, 
  S_AXI_MEM_wready, S_AXI_MEM_wstrb, S_AXI_MEM_wvalid)
/* synthesis syn_black_box black_box_pad_pin="ARESETN,CLK,M_AXIS_tdata[63:0],M_AXIS_tkeep[7:0],M_AXIS_tlast,M_AXIS_tready,M_AXIS_tvalid,S_AXIS_tdata[63:0],S_AXIS_tkeep[7:0],S_AXIS_tlast,S_AXIS_tready,S_AXIS_tvalid,S_AXI_CONTROL_araddr[31:0],S_AXI_CONTROL_arprot[2:0],S_AXI_CONTROL_arqos[3:0],S_AXI_CONTROL_arready,S_AXI_CONTROL_arvalid,S_AXI_CONTROL_awaddr[31:0],S_AXI_CONTROL_awprot[2:0],S_AXI_CONTROL_awqos[3:0],S_AXI_CONTROL_awready,S_AXI_CONTROL_awvalid,S_AXI_CONTROL_bready,S_AXI_CONTROL_bresp[1:0],S_AXI_CONTROL_bvalid,S_AXI_CONTROL_rdata[31:0],S_AXI_CONTROL_rready,S_AXI_CONTROL_rresp[1:0],S_AXI_CONTROL_rvalid,S_AXI_CONTROL_wdata[31:0],S_AXI_CONTROL_wready,S_AXI_CONTROL_wstrb[3:0],S_AXI_CONTROL_wvalid,S_AXI_MEM_araddr[63:0],S_AXI_MEM_arburst[1:0],S_AXI_MEM_arcache[3:0],S_AXI_MEM_arid[0:0],S_AXI_MEM_arlen[7:0],S_AXI_MEM_arlock[0:0],S_AXI_MEM_arprot[2:0],S_AXI_MEM_arqos[3:0],S_AXI_MEM_arready,S_AXI_MEM_arsize[2:0],S_AXI_MEM_arvalid,S_AXI_MEM_awaddr[63:0],S_AXI_MEM_awburst[1:0],S_AXI_MEM_awcache[3:0],S_AXI_MEM_awid[0:0],S_AXI_MEM_awlen[7:0],S_AXI_MEM_awlock[0:0],S_AXI_MEM_awprot[2:0],S_AXI_MEM_awqos[3:0],S_AXI_MEM_awready,S_AXI_MEM_awsize[2:0],S_AXI_MEM_awvalid,S_AXI_MEM_bid[0:0],S_AXI_MEM_bready,S_AXI_MEM_bresp[1:0],S_AXI_MEM_bvalid,S_AXI_MEM_rdata[511:0],S_AXI_MEM_rid[0:0],S_AXI_MEM_rlast,S_AXI_MEM_rready,S_AXI_MEM_rresp[1:0],S_AXI_MEM_rvalid,S_AXI_MEM_wdata[511:0],S_AXI_MEM_wlast,S_AXI_MEM_wready,S_AXI_MEM_wstrb[63:0],S_AXI_MEM_wvalid" */;
  input ARESETN;
  input CLK;
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
  input [31:0]S_AXI_CONTROL_araddr;
  input [2:0]S_AXI_CONTROL_arprot;
  input [3:0]S_AXI_CONTROL_arqos;
  output S_AXI_CONTROL_arready;
  input S_AXI_CONTROL_arvalid;
  input [31:0]S_AXI_CONTROL_awaddr;
  input [2:0]S_AXI_CONTROL_awprot;
  input [3:0]S_AXI_CONTROL_awqos;
  output S_AXI_CONTROL_awready;
  input S_AXI_CONTROL_awvalid;
  input S_AXI_CONTROL_bready;
  output [1:0]S_AXI_CONTROL_bresp;
  output S_AXI_CONTROL_bvalid;
  output [31:0]S_AXI_CONTROL_rdata;
  input S_AXI_CONTROL_rready;
  output [1:0]S_AXI_CONTROL_rresp;
  output S_AXI_CONTROL_rvalid;
  input [31:0]S_AXI_CONTROL_wdata;
  output S_AXI_CONTROL_wready;
  input [3:0]S_AXI_CONTROL_wstrb;
  input S_AXI_CONTROL_wvalid;
  output [63:0]S_AXI_MEM_araddr;
  output [1:0]S_AXI_MEM_arburst;
  output [3:0]S_AXI_MEM_arcache;
  output [0:0]S_AXI_MEM_arid;
  output [7:0]S_AXI_MEM_arlen;
  output [0:0]S_AXI_MEM_arlock;
  output [2:0]S_AXI_MEM_arprot;
  output [3:0]S_AXI_MEM_arqos;
  input S_AXI_MEM_arready;
  output [2:0]S_AXI_MEM_arsize;
  output S_AXI_MEM_arvalid;
  output [63:0]S_AXI_MEM_awaddr;
  output [1:0]S_AXI_MEM_awburst;
  output [3:0]S_AXI_MEM_awcache;
  output [0:0]S_AXI_MEM_awid;
  output [7:0]S_AXI_MEM_awlen;
  output [0:0]S_AXI_MEM_awlock;
  output [2:0]S_AXI_MEM_awprot;
  output [3:0]S_AXI_MEM_awqos;
  input S_AXI_MEM_awready;
  output [2:0]S_AXI_MEM_awsize;
  output S_AXI_MEM_awvalid;
  input [0:0]S_AXI_MEM_bid;
  output S_AXI_MEM_bready;
  input [1:0]S_AXI_MEM_bresp;
  input S_AXI_MEM_bvalid;
  input [511:0]S_AXI_MEM_rdata;
  input [0:0]S_AXI_MEM_rid;
  input S_AXI_MEM_rlast;
  output S_AXI_MEM_rready;
  input [1:0]S_AXI_MEM_rresp;
  input S_AXI_MEM_rvalid;
  output [511:0]S_AXI_MEM_wdata;
  output S_AXI_MEM_wlast;
  input S_AXI_MEM_wready;
  output [63:0]S_AXI_MEM_wstrb;
  output S_AXI_MEM_wvalid;
endmodule

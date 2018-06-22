// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Jun 13 01:09:51 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_darius_wrapper_bd_debug_inst_1_0_stub.v
// Design      : pr_darius_wrapper_bd_debug_inst_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "darius_wrapper_bd_debug,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ARESETN, CLK, M_AXI_MEM_araddr, 
  M_AXI_MEM_arburst, M_AXI_MEM_arcache, M_AXI_MEM_arlen, M_AXI_MEM_arlock, 
  M_AXI_MEM_arprot, M_AXI_MEM_arqos, M_AXI_MEM_arready, M_AXI_MEM_arregion, 
  M_AXI_MEM_arsize, M_AXI_MEM_arvalid, M_AXI_MEM_awaddr, M_AXI_MEM_awburst, 
  M_AXI_MEM_awcache, M_AXI_MEM_awlen, M_AXI_MEM_awlock, M_AXI_MEM_awprot, M_AXI_MEM_awqos, 
  M_AXI_MEM_awready, M_AXI_MEM_awregion, M_AXI_MEM_awsize, M_AXI_MEM_awvalid, 
  M_AXI_MEM_bready, M_AXI_MEM_bresp, M_AXI_MEM_bvalid, M_AXI_MEM_rdata, M_AXI_MEM_rlast, 
  M_AXI_MEM_rready, M_AXI_MEM_rresp, M_AXI_MEM_rvalid, M_AXI_MEM_wdata, M_AXI_MEM_wlast, 
  M_AXI_MEM_wready, M_AXI_MEM_wstrb, M_AXI_MEM_wvalid, S_AXI_CONTROL_araddr, 
  S_AXI_CONTROL_arready, S_AXI_CONTROL_arvalid, S_AXI_CONTROL_awaddr, 
  S_AXI_CONTROL_awready, S_AXI_CONTROL_awvalid, S_AXI_CONTROL_bready, 
  S_AXI_CONTROL_bresp, S_AXI_CONTROL_bvalid, S_AXI_CONTROL_rdata, S_AXI_CONTROL_rready, 
  S_AXI_CONTROL_rresp, S_AXI_CONTROL_rvalid, S_AXI_CONTROL_wdata, S_AXI_CONTROL_wready, 
  S_AXI_CONTROL_wstrb, S_AXI_CONTROL_wvalid, id_in_V_0, stream_in_tdata, stream_in_tready, 
  stream_in_tvalid, stream_out_tdata, stream_out_tready, stream_out_tvalid)
/* synthesis syn_black_box black_box_pad_pin="ARESETN,CLK,M_AXI_MEM_araddr[31:0],M_AXI_MEM_arburst[1:0],M_AXI_MEM_arcache[3:0],M_AXI_MEM_arlen[7:0],M_AXI_MEM_arlock[0:0],M_AXI_MEM_arprot[2:0],M_AXI_MEM_arqos[3:0],M_AXI_MEM_arready,M_AXI_MEM_arregion[3:0],M_AXI_MEM_arsize[2:0],M_AXI_MEM_arvalid,M_AXI_MEM_awaddr[31:0],M_AXI_MEM_awburst[1:0],M_AXI_MEM_awcache[3:0],M_AXI_MEM_awlen[7:0],M_AXI_MEM_awlock[0:0],M_AXI_MEM_awprot[2:0],M_AXI_MEM_awqos[3:0],M_AXI_MEM_awready,M_AXI_MEM_awregion[3:0],M_AXI_MEM_awsize[2:0],M_AXI_MEM_awvalid,M_AXI_MEM_bready,M_AXI_MEM_bresp[1:0],M_AXI_MEM_bvalid,M_AXI_MEM_rdata[31:0],M_AXI_MEM_rlast,M_AXI_MEM_rready,M_AXI_MEM_rresp[1:0],M_AXI_MEM_rvalid,M_AXI_MEM_wdata[31:0],M_AXI_MEM_wlast,M_AXI_MEM_wready,M_AXI_MEM_wstrb[3:0],M_AXI_MEM_wvalid,S_AXI_CONTROL_araddr[4:0],S_AXI_CONTROL_arready,S_AXI_CONTROL_arvalid,S_AXI_CONTROL_awaddr[4:0],S_AXI_CONTROL_awready,S_AXI_CONTROL_awvalid,S_AXI_CONTROL_bready,S_AXI_CONTROL_bresp[1:0],S_AXI_CONTROL_bvalid,S_AXI_CONTROL_rdata[31:0],S_AXI_CONTROL_rready,S_AXI_CONTROL_rresp[1:0],S_AXI_CONTROL_rvalid,S_AXI_CONTROL_wdata[31:0],S_AXI_CONTROL_wready,S_AXI_CONTROL_wstrb[3:0],S_AXI_CONTROL_wvalid,id_in_V_0[15:0],stream_in_tdata[135:0],stream_in_tready,stream_in_tvalid,stream_out_tdata[135:0],stream_out_tready,stream_out_tvalid" */;
  input ARESETN;
  input CLK;
  output [31:0]M_AXI_MEM_araddr;
  output [1:0]M_AXI_MEM_arburst;
  output [3:0]M_AXI_MEM_arcache;
  output [7:0]M_AXI_MEM_arlen;
  output [0:0]M_AXI_MEM_arlock;
  output [2:0]M_AXI_MEM_arprot;
  output [3:0]M_AXI_MEM_arqos;
  input M_AXI_MEM_arready;
  output [3:0]M_AXI_MEM_arregion;
  output [2:0]M_AXI_MEM_arsize;
  output M_AXI_MEM_arvalid;
  output [31:0]M_AXI_MEM_awaddr;
  output [1:0]M_AXI_MEM_awburst;
  output [3:0]M_AXI_MEM_awcache;
  output [7:0]M_AXI_MEM_awlen;
  output [0:0]M_AXI_MEM_awlock;
  output [2:0]M_AXI_MEM_awprot;
  output [3:0]M_AXI_MEM_awqos;
  input M_AXI_MEM_awready;
  output [3:0]M_AXI_MEM_awregion;
  output [2:0]M_AXI_MEM_awsize;
  output M_AXI_MEM_awvalid;
  output M_AXI_MEM_bready;
  input [1:0]M_AXI_MEM_bresp;
  input M_AXI_MEM_bvalid;
  input [31:0]M_AXI_MEM_rdata;
  input M_AXI_MEM_rlast;
  output M_AXI_MEM_rready;
  input [1:0]M_AXI_MEM_rresp;
  input M_AXI_MEM_rvalid;
  output [31:0]M_AXI_MEM_wdata;
  output M_AXI_MEM_wlast;
  input M_AXI_MEM_wready;
  output [3:0]M_AXI_MEM_wstrb;
  output M_AXI_MEM_wvalid;
  input [4:0]S_AXI_CONTROL_araddr;
  output S_AXI_CONTROL_arready;
  input S_AXI_CONTROL_arvalid;
  input [4:0]S_AXI_CONTROL_awaddr;
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
  input [15:0]id_in_V_0;
  input [135:0]stream_in_tdata;
  output stream_in_tready;
  input stream_in_tvalid;
  output [135:0]stream_out_tdata;
  input stream_out_tready;
  output stream_out_tvalid;
endmodule

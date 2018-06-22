// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu Jun 21 00:04:39 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_dariusMPI_debug_inst_1_0_stub.v
// Design      : pr_dariusMPI_debug_inst_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dariusMPI_debug,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ARESETN, CLK, M_AXI_MEM_araddr, 
  M_AXI_MEM_arburst, M_AXI_MEM_arcache, M_AXI_MEM_arid, M_AXI_MEM_arlen, M_AXI_MEM_arlock, 
  M_AXI_MEM_arprot, M_AXI_MEM_arqos, M_AXI_MEM_arready, M_AXI_MEM_arregion, 
  M_AXI_MEM_arsize, M_AXI_MEM_arvalid, M_AXI_MEM_awaddr, M_AXI_MEM_awburst, 
  M_AXI_MEM_awcache, M_AXI_MEM_awid, M_AXI_MEM_awlen, M_AXI_MEM_awlock, M_AXI_MEM_awprot, 
  M_AXI_MEM_awqos, M_AXI_MEM_awready, M_AXI_MEM_awregion, M_AXI_MEM_awsize, 
  M_AXI_MEM_awvalid, M_AXI_MEM_bid, M_AXI_MEM_bready, M_AXI_MEM_bresp, M_AXI_MEM_bvalid, 
  M_AXI_MEM_rdata, M_AXI_MEM_rid, M_AXI_MEM_rlast, M_AXI_MEM_rready, M_AXI_MEM_rresp, 
  M_AXI_MEM_rvalid, M_AXI_MEM_wdata, M_AXI_MEM_wlast, M_AXI_MEM_wready, M_AXI_MEM_wstrb, 
  M_AXI_MEM_wvalid, id_in_V_0, stream_in_tdata, stream_in_tdest, stream_in_tid, 
  stream_in_tkeep, stream_in_tlast, stream_in_tready, stream_in_tuser, stream_in_tvalid, 
  stream_out_tdata, stream_out_tdest, stream_out_tid, stream_out_tkeep, stream_out_tlast, 
  stream_out_tready, stream_out_tuser, stream_out_tvalid)
/* synthesis syn_black_box black_box_pad_pin="ARESETN,CLK,M_AXI_MEM_araddr[63:0],M_AXI_MEM_arburst[1:0],M_AXI_MEM_arcache[3:0],M_AXI_MEM_arid[2:0],M_AXI_MEM_arlen[7:0],M_AXI_MEM_arlock[0:0],M_AXI_MEM_arprot[2:0],M_AXI_MEM_arqos[3:0],M_AXI_MEM_arready[0:0],M_AXI_MEM_arregion[3:0],M_AXI_MEM_arsize[2:0],M_AXI_MEM_arvalid[0:0],M_AXI_MEM_awaddr[63:0],M_AXI_MEM_awburst[1:0],M_AXI_MEM_awcache[3:0],M_AXI_MEM_awid[2:0],M_AXI_MEM_awlen[7:0],M_AXI_MEM_awlock[0:0],M_AXI_MEM_awprot[2:0],M_AXI_MEM_awqos[3:0],M_AXI_MEM_awready[0:0],M_AXI_MEM_awregion[3:0],M_AXI_MEM_awsize[2:0],M_AXI_MEM_awvalid[0:0],M_AXI_MEM_bid[2:0],M_AXI_MEM_bready[0:0],M_AXI_MEM_bresp[1:0],M_AXI_MEM_bvalid[0:0],M_AXI_MEM_rdata[511:0],M_AXI_MEM_rid[2:0],M_AXI_MEM_rlast[0:0],M_AXI_MEM_rready[0:0],M_AXI_MEM_rresp[1:0],M_AXI_MEM_rvalid[0:0],M_AXI_MEM_wdata[511:0],M_AXI_MEM_wlast[0:0],M_AXI_MEM_wready[0:0],M_AXI_MEM_wstrb[63:0],M_AXI_MEM_wvalid[0:0],id_in_V_0[15:0],stream_in_tdata[63:0],stream_in_tdest[7:0],stream_in_tid[7:0],stream_in_tkeep[7:0],stream_in_tlast[0:0],stream_in_tready,stream_in_tuser[39:0],stream_in_tvalid,stream_out_tdata[63:0],stream_out_tdest[7:0],stream_out_tid[7:0],stream_out_tkeep[7:0],stream_out_tlast[0:0],stream_out_tready,stream_out_tuser[39:0],stream_out_tvalid" */;
  input ARESETN;
  input CLK;
  output [63:0]M_AXI_MEM_araddr;
  output [1:0]M_AXI_MEM_arburst;
  output [3:0]M_AXI_MEM_arcache;
  output [2:0]M_AXI_MEM_arid;
  output [7:0]M_AXI_MEM_arlen;
  output [0:0]M_AXI_MEM_arlock;
  output [2:0]M_AXI_MEM_arprot;
  output [3:0]M_AXI_MEM_arqos;
  input [0:0]M_AXI_MEM_arready;
  output [3:0]M_AXI_MEM_arregion;
  output [2:0]M_AXI_MEM_arsize;
  output [0:0]M_AXI_MEM_arvalid;
  output [63:0]M_AXI_MEM_awaddr;
  output [1:0]M_AXI_MEM_awburst;
  output [3:0]M_AXI_MEM_awcache;
  output [2:0]M_AXI_MEM_awid;
  output [7:0]M_AXI_MEM_awlen;
  output [0:0]M_AXI_MEM_awlock;
  output [2:0]M_AXI_MEM_awprot;
  output [3:0]M_AXI_MEM_awqos;
  input [0:0]M_AXI_MEM_awready;
  output [3:0]M_AXI_MEM_awregion;
  output [2:0]M_AXI_MEM_awsize;
  output [0:0]M_AXI_MEM_awvalid;
  input [2:0]M_AXI_MEM_bid;
  output [0:0]M_AXI_MEM_bready;
  input [1:0]M_AXI_MEM_bresp;
  input [0:0]M_AXI_MEM_bvalid;
  input [511:0]M_AXI_MEM_rdata;
  input [2:0]M_AXI_MEM_rid;
  input [0:0]M_AXI_MEM_rlast;
  output [0:0]M_AXI_MEM_rready;
  input [1:0]M_AXI_MEM_rresp;
  input [0:0]M_AXI_MEM_rvalid;
  output [511:0]M_AXI_MEM_wdata;
  output [0:0]M_AXI_MEM_wlast;
  input [0:0]M_AXI_MEM_wready;
  output [63:0]M_AXI_MEM_wstrb;
  output [0:0]M_AXI_MEM_wvalid;
  input [15:0]id_in_V_0;
  input [63:0]stream_in_tdata;
  input [7:0]stream_in_tdest;
  input [7:0]stream_in_tid;
  input [7:0]stream_in_tkeep;
  input [0:0]stream_in_tlast;
  output stream_in_tready;
  input [39:0]stream_in_tuser;
  input stream_in_tvalid;
  output [63:0]stream_out_tdata;
  output [7:0]stream_out_tdest;
  output [7:0]stream_out_tid;
  output [7:0]stream_out_tkeep;
  output [0:0]stream_out_tlast;
  input stream_out_tready;
  output [39:0]stream_out_tuser;
  output stream_out_tvalid;
endmodule

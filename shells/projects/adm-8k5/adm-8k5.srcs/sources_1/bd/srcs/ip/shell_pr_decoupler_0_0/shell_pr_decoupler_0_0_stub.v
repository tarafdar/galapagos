// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed May 16 15:52:52 2018
// Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_pr_decoupler_0_0/shell_pr_decoupler_0_0_stub.v
// Design      : shell_pr_decoupler_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "prd_shell_pr_decoupler_0_0,Vivado 2018.1" *)
module shell_pr_decoupler_0_0(s_pr_axi_mem_ARVALID, 
  rp_pr_axi_mem_ARVALID, s_pr_axi_mem_ARREADY, rp_pr_axi_mem_ARREADY, 
  s_pr_axi_mem_AWVALID, rp_pr_axi_mem_AWVALID, s_pr_axi_mem_AWREADY, 
  rp_pr_axi_mem_AWREADY, s_pr_axi_mem_BVALID, rp_pr_axi_mem_BVALID, s_pr_axi_mem_BREADY, 
  rp_pr_axi_mem_BREADY, s_pr_axi_mem_RVALID, rp_pr_axi_mem_RVALID, s_pr_axi_mem_RREADY, 
  rp_pr_axi_mem_RREADY, s_pr_axi_mem_WVALID, rp_pr_axi_mem_WVALID, s_pr_axi_mem_WREADY, 
  rp_pr_axi_mem_WREADY, s_pr_axi_mem_AWID, rp_pr_axi_mem_AWID, s_pr_axi_mem_AWADDR, 
  rp_pr_axi_mem_AWADDR, s_pr_axi_mem_AWLEN, rp_pr_axi_mem_AWLEN, s_pr_axi_mem_AWSIZE, 
  rp_pr_axi_mem_AWSIZE, s_pr_axi_mem_AWBURST, rp_pr_axi_mem_AWBURST, s_pr_axi_mem_AWLOCK, 
  rp_pr_axi_mem_AWLOCK, s_pr_axi_mem_AWCACHE, rp_pr_axi_mem_AWCACHE, s_pr_axi_mem_AWPROT, 
  rp_pr_axi_mem_AWPROT, s_pr_axi_mem_AWREGION, rp_pr_axi_mem_AWREGION, 
  s_pr_axi_mem_AWQOS, rp_pr_axi_mem_AWQOS, s_pr_axi_mem_WID, rp_pr_axi_mem_WID, 
  s_pr_axi_mem_WDATA, rp_pr_axi_mem_WDATA, s_pr_axi_mem_WSTRB, rp_pr_axi_mem_WSTRB, 
  s_pr_axi_mem_WLAST, rp_pr_axi_mem_WLAST, s_pr_axi_mem_BID, rp_pr_axi_mem_BID, 
  s_pr_axi_mem_BRESP, rp_pr_axi_mem_BRESP, s_pr_axi_mem_ARID, rp_pr_axi_mem_ARID, 
  s_pr_axi_mem_ARADDR, rp_pr_axi_mem_ARADDR, s_pr_axi_mem_ARLEN, rp_pr_axi_mem_ARLEN, 
  s_pr_axi_mem_ARSIZE, rp_pr_axi_mem_ARSIZE, s_pr_axi_mem_ARBURST, rp_pr_axi_mem_ARBURST, 
  s_pr_axi_mem_ARLOCK, rp_pr_axi_mem_ARLOCK, s_pr_axi_mem_ARCACHE, rp_pr_axi_mem_ARCACHE, 
  s_pr_axi_mem_ARPROT, rp_pr_axi_mem_ARPROT, s_pr_axi_mem_ARREGION, 
  rp_pr_axi_mem_ARREGION, s_pr_axi_mem_ARQOS, rp_pr_axi_mem_ARQOS, s_pr_axi_mem_RID, 
  rp_pr_axi_mem_RID, s_pr_axi_mem_RDATA, rp_pr_axi_mem_RDATA, s_pr_axi_mem_RRESP, 
  rp_pr_axi_mem_RRESP, s_pr_axi_mem_RLAST, rp_pr_axi_mem_RLAST, s_control_ARVALID, 
  rp_control_ARVALID, s_control_ARREADY, rp_control_ARREADY, s_control_AWVALID, 
  rp_control_AWVALID, s_control_AWREADY, rp_control_AWREADY, s_control_BVALID, 
  rp_control_BVALID, s_control_BREADY, rp_control_BREADY, s_control_RVALID, 
  rp_control_RVALID, s_control_RREADY, rp_control_RREADY, s_control_WVALID, 
  rp_control_WVALID, s_control_WREADY, rp_control_WREADY, s_control_AWADDR, 
  rp_control_AWADDR, s_control_AWPROT, rp_control_AWPROT, s_control_AWREGION, 
  rp_control_AWREGION, s_control_AWQOS, rp_control_AWQOS, s_control_WDATA, 
  rp_control_WDATA, s_control_WSTRB, rp_control_WSTRB, s_control_BRESP, rp_control_BRESP, 
  s_control_ARADDR, rp_control_ARADDR, s_control_ARPROT, rp_control_ARPROT, 
  s_control_ARREGION, rp_control_ARREGION, s_control_ARQOS, rp_control_ARQOS, 
  s_control_RDATA, rp_control_RDATA, s_control_RRESP, rp_control_RRESP, s_stream_in_TVALID, 
  rp_stream_in_TVALID, s_stream_in_TREADY, rp_stream_in_TREADY, s_stream_in_TDATA, 
  rp_stream_in_TDATA, s_stream_in_TLAST, rp_stream_in_TLAST, s_stream_in_TKEEP, 
  rp_stream_in_TKEEP, s_stream_out_TVALID, rp_stream_out_TVALID, s_stream_out_TREADY, 
  rp_stream_out_TREADY, s_stream_out_TDATA, rp_stream_out_TDATA, s_stream_out_TLAST, 
  rp_stream_out_TLAST, s_stream_out_TKEEP, rp_stream_out_TKEEP, decouple_status, aclk, 
  s_axi_reg_awaddr, s_axi_reg_awvalid, s_axi_reg_awready, s_axi_reg_wdata, 
  s_axi_reg_wvalid, s_axi_reg_wready, s_axi_reg_bresp, s_axi_reg_bvalid, s_axi_reg_bready, 
  s_axi_reg_araddr, s_axi_reg_arvalid, s_axi_reg_arready, s_axi_reg_rdata, s_axi_reg_rresp, 
  s_axi_reg_rvalid, s_axi_reg_rready, s_axi_reg_aresetn)
/* synthesis syn_black_box black_box_pad_pin="s_pr_axi_mem_ARVALID,rp_pr_axi_mem_ARVALID,s_pr_axi_mem_ARREADY,rp_pr_axi_mem_ARREADY,s_pr_axi_mem_AWVALID,rp_pr_axi_mem_AWVALID,s_pr_axi_mem_AWREADY,rp_pr_axi_mem_AWREADY,s_pr_axi_mem_BVALID,rp_pr_axi_mem_BVALID,s_pr_axi_mem_BREADY,rp_pr_axi_mem_BREADY,s_pr_axi_mem_RVALID,rp_pr_axi_mem_RVALID,s_pr_axi_mem_RREADY,rp_pr_axi_mem_RREADY,s_pr_axi_mem_WVALID,rp_pr_axi_mem_WVALID,s_pr_axi_mem_WREADY,rp_pr_axi_mem_WREADY,s_pr_axi_mem_AWID[0:0],rp_pr_axi_mem_AWID[0:0],s_pr_axi_mem_AWADDR[31:0],rp_pr_axi_mem_AWADDR[31:0],s_pr_axi_mem_AWLEN[7:0],rp_pr_axi_mem_AWLEN[7:0],s_pr_axi_mem_AWSIZE[2:0],rp_pr_axi_mem_AWSIZE[2:0],s_pr_axi_mem_AWBURST[1:0],rp_pr_axi_mem_AWBURST[1:0],s_pr_axi_mem_AWLOCK[0:0],rp_pr_axi_mem_AWLOCK[0:0],s_pr_axi_mem_AWCACHE[3:0],rp_pr_axi_mem_AWCACHE[3:0],s_pr_axi_mem_AWPROT[2:0],rp_pr_axi_mem_AWPROT[2:0],s_pr_axi_mem_AWREGION[3:0],rp_pr_axi_mem_AWREGION[3:0],s_pr_axi_mem_AWQOS[3:0],rp_pr_axi_mem_AWQOS[3:0],s_pr_axi_mem_WID[0:0],rp_pr_axi_mem_WID[0:0],s_pr_axi_mem_WDATA[511:0],rp_pr_axi_mem_WDATA[511:0],s_pr_axi_mem_WSTRB[63:0],rp_pr_axi_mem_WSTRB[63:0],s_pr_axi_mem_WLAST,rp_pr_axi_mem_WLAST,s_pr_axi_mem_BID[0:0],rp_pr_axi_mem_BID[0:0],s_pr_axi_mem_BRESP[1:0],rp_pr_axi_mem_BRESP[1:0],s_pr_axi_mem_ARID[0:0],rp_pr_axi_mem_ARID[0:0],s_pr_axi_mem_ARADDR[31:0],rp_pr_axi_mem_ARADDR[31:0],s_pr_axi_mem_ARLEN[7:0],rp_pr_axi_mem_ARLEN[7:0],s_pr_axi_mem_ARSIZE[2:0],rp_pr_axi_mem_ARSIZE[2:0],s_pr_axi_mem_ARBURST[1:0],rp_pr_axi_mem_ARBURST[1:0],s_pr_axi_mem_ARLOCK[0:0],rp_pr_axi_mem_ARLOCK[0:0],s_pr_axi_mem_ARCACHE[3:0],rp_pr_axi_mem_ARCACHE[3:0],s_pr_axi_mem_ARPROT[2:0],rp_pr_axi_mem_ARPROT[2:0],s_pr_axi_mem_ARREGION[3:0],rp_pr_axi_mem_ARREGION[3:0],s_pr_axi_mem_ARQOS[3:0],rp_pr_axi_mem_ARQOS[3:0],s_pr_axi_mem_RID[0:0],rp_pr_axi_mem_RID[0:0],s_pr_axi_mem_RDATA[511:0],rp_pr_axi_mem_RDATA[511:0],s_pr_axi_mem_RRESP[1:0],rp_pr_axi_mem_RRESP[1:0],s_pr_axi_mem_RLAST,rp_pr_axi_mem_RLAST,s_control_ARVALID,rp_control_ARVALID,s_control_ARREADY,rp_control_ARREADY,s_control_AWVALID,rp_control_AWVALID,s_control_AWREADY,rp_control_AWREADY,s_control_BVALID,rp_control_BVALID,s_control_BREADY,rp_control_BREADY,s_control_RVALID,rp_control_RVALID,s_control_RREADY,rp_control_RREADY,s_control_WVALID,rp_control_WVALID,s_control_WREADY,rp_control_WREADY,s_control_AWADDR[31:0],rp_control_AWADDR[31:0],s_control_AWPROT[2:0],rp_control_AWPROT[2:0],s_control_AWREGION[3:0],rp_control_AWREGION[3:0],s_control_AWQOS[3:0],rp_control_AWQOS[3:0],s_control_WDATA[31:0],rp_control_WDATA[31:0],s_control_WSTRB[3:0],rp_control_WSTRB[3:0],s_control_BRESP[1:0],rp_control_BRESP[1:0],s_control_ARADDR[31:0],rp_control_ARADDR[31:0],s_control_ARPROT[2:0],rp_control_ARPROT[2:0],s_control_ARREGION[3:0],rp_control_ARREGION[3:0],s_control_ARQOS[3:0],rp_control_ARQOS[3:0],s_control_RDATA[31:0],rp_control_RDATA[31:0],s_control_RRESP[1:0],rp_control_RRESP[1:0],s_stream_in_TVALID,rp_stream_in_TVALID,s_stream_in_TREADY,rp_stream_in_TREADY,s_stream_in_TDATA[63:0],rp_stream_in_TDATA[63:0],s_stream_in_TLAST,rp_stream_in_TLAST,s_stream_in_TKEEP[7:0],rp_stream_in_TKEEP[7:0],s_stream_out_TVALID,rp_stream_out_TVALID,s_stream_out_TREADY,rp_stream_out_TREADY,s_stream_out_TDATA[63:0],rp_stream_out_TDATA[63:0],s_stream_out_TLAST,rp_stream_out_TLAST,s_stream_out_TKEEP[7:0],rp_stream_out_TKEEP[7:0],decouple_status,aclk,s_axi_reg_awaddr[0:0],s_axi_reg_awvalid,s_axi_reg_awready,s_axi_reg_wdata[31:0],s_axi_reg_wvalid,s_axi_reg_wready,s_axi_reg_bresp[1:0],s_axi_reg_bvalid,s_axi_reg_bready,s_axi_reg_araddr[0:0],s_axi_reg_arvalid,s_axi_reg_arready,s_axi_reg_rdata[31:0],s_axi_reg_rresp[1:0],s_axi_reg_rvalid,s_axi_reg_rready,s_axi_reg_aresetn" */;
  output s_pr_axi_mem_ARVALID;
  input rp_pr_axi_mem_ARVALID;
  input s_pr_axi_mem_ARREADY;
  output rp_pr_axi_mem_ARREADY;
  output s_pr_axi_mem_AWVALID;
  input rp_pr_axi_mem_AWVALID;
  input s_pr_axi_mem_AWREADY;
  output rp_pr_axi_mem_AWREADY;
  input s_pr_axi_mem_BVALID;
  output rp_pr_axi_mem_BVALID;
  output s_pr_axi_mem_BREADY;
  input rp_pr_axi_mem_BREADY;
  input s_pr_axi_mem_RVALID;
  output rp_pr_axi_mem_RVALID;
  output s_pr_axi_mem_RREADY;
  input rp_pr_axi_mem_RREADY;
  output s_pr_axi_mem_WVALID;
  input rp_pr_axi_mem_WVALID;
  input s_pr_axi_mem_WREADY;
  output rp_pr_axi_mem_WREADY;
  output [0:0]s_pr_axi_mem_AWID;
  input [0:0]rp_pr_axi_mem_AWID;
  output [31:0]s_pr_axi_mem_AWADDR;
  input [31:0]rp_pr_axi_mem_AWADDR;
  output [7:0]s_pr_axi_mem_AWLEN;
  input [7:0]rp_pr_axi_mem_AWLEN;
  output [2:0]s_pr_axi_mem_AWSIZE;
  input [2:0]rp_pr_axi_mem_AWSIZE;
  output [1:0]s_pr_axi_mem_AWBURST;
  input [1:0]rp_pr_axi_mem_AWBURST;
  output [0:0]s_pr_axi_mem_AWLOCK;
  input [0:0]rp_pr_axi_mem_AWLOCK;
  output [3:0]s_pr_axi_mem_AWCACHE;
  input [3:0]rp_pr_axi_mem_AWCACHE;
  output [2:0]s_pr_axi_mem_AWPROT;
  input [2:0]rp_pr_axi_mem_AWPROT;
  output [3:0]s_pr_axi_mem_AWREGION;
  input [3:0]rp_pr_axi_mem_AWREGION;
  output [3:0]s_pr_axi_mem_AWQOS;
  input [3:0]rp_pr_axi_mem_AWQOS;
  output [0:0]s_pr_axi_mem_WID;
  input [0:0]rp_pr_axi_mem_WID;
  output [511:0]s_pr_axi_mem_WDATA;
  input [511:0]rp_pr_axi_mem_WDATA;
  output [63:0]s_pr_axi_mem_WSTRB;
  input [63:0]rp_pr_axi_mem_WSTRB;
  output s_pr_axi_mem_WLAST;
  input rp_pr_axi_mem_WLAST;
  input [0:0]s_pr_axi_mem_BID;
  output [0:0]rp_pr_axi_mem_BID;
  input [1:0]s_pr_axi_mem_BRESP;
  output [1:0]rp_pr_axi_mem_BRESP;
  output [0:0]s_pr_axi_mem_ARID;
  input [0:0]rp_pr_axi_mem_ARID;
  output [31:0]s_pr_axi_mem_ARADDR;
  input [31:0]rp_pr_axi_mem_ARADDR;
  output [7:0]s_pr_axi_mem_ARLEN;
  input [7:0]rp_pr_axi_mem_ARLEN;
  output [2:0]s_pr_axi_mem_ARSIZE;
  input [2:0]rp_pr_axi_mem_ARSIZE;
  output [1:0]s_pr_axi_mem_ARBURST;
  input [1:0]rp_pr_axi_mem_ARBURST;
  output [0:0]s_pr_axi_mem_ARLOCK;
  input [0:0]rp_pr_axi_mem_ARLOCK;
  output [3:0]s_pr_axi_mem_ARCACHE;
  input [3:0]rp_pr_axi_mem_ARCACHE;
  output [2:0]s_pr_axi_mem_ARPROT;
  input [2:0]rp_pr_axi_mem_ARPROT;
  output [3:0]s_pr_axi_mem_ARREGION;
  input [3:0]rp_pr_axi_mem_ARREGION;
  output [3:0]s_pr_axi_mem_ARQOS;
  input [3:0]rp_pr_axi_mem_ARQOS;
  input [0:0]s_pr_axi_mem_RID;
  output [0:0]rp_pr_axi_mem_RID;
  input [511:0]s_pr_axi_mem_RDATA;
  output [511:0]rp_pr_axi_mem_RDATA;
  input [1:0]s_pr_axi_mem_RRESP;
  output [1:0]rp_pr_axi_mem_RRESP;
  input s_pr_axi_mem_RLAST;
  output rp_pr_axi_mem_RLAST;
  input s_control_ARVALID;
  output rp_control_ARVALID;
  output s_control_ARREADY;
  input rp_control_ARREADY;
  input s_control_AWVALID;
  output rp_control_AWVALID;
  output s_control_AWREADY;
  input rp_control_AWREADY;
  output s_control_BVALID;
  input rp_control_BVALID;
  input s_control_BREADY;
  output rp_control_BREADY;
  output s_control_RVALID;
  input rp_control_RVALID;
  input s_control_RREADY;
  output rp_control_RREADY;
  input s_control_WVALID;
  output rp_control_WVALID;
  output s_control_WREADY;
  input rp_control_WREADY;
  input [31:0]s_control_AWADDR;
  output [31:0]rp_control_AWADDR;
  input [2:0]s_control_AWPROT;
  output [2:0]rp_control_AWPROT;
  input [3:0]s_control_AWREGION;
  output [3:0]rp_control_AWREGION;
  input [3:0]s_control_AWQOS;
  output [3:0]rp_control_AWQOS;
  input [31:0]s_control_WDATA;
  output [31:0]rp_control_WDATA;
  input [3:0]s_control_WSTRB;
  output [3:0]rp_control_WSTRB;
  output [1:0]s_control_BRESP;
  input [1:0]rp_control_BRESP;
  input [31:0]s_control_ARADDR;
  output [31:0]rp_control_ARADDR;
  input [2:0]s_control_ARPROT;
  output [2:0]rp_control_ARPROT;
  input [3:0]s_control_ARREGION;
  output [3:0]rp_control_ARREGION;
  input [3:0]s_control_ARQOS;
  output [3:0]rp_control_ARQOS;
  output [31:0]s_control_RDATA;
  input [31:0]rp_control_RDATA;
  output [1:0]s_control_RRESP;
  input [1:0]rp_control_RRESP;
  output s_stream_in_TVALID;
  input rp_stream_in_TVALID;
  input s_stream_in_TREADY;
  output rp_stream_in_TREADY;
  output [63:0]s_stream_in_TDATA;
  input [63:0]rp_stream_in_TDATA;
  output s_stream_in_TLAST;
  input rp_stream_in_TLAST;
  output [7:0]s_stream_in_TKEEP;
  input [7:0]rp_stream_in_TKEEP;
  input s_stream_out_TVALID;
  output rp_stream_out_TVALID;
  output s_stream_out_TREADY;
  input rp_stream_out_TREADY;
  input [63:0]s_stream_out_TDATA;
  output [63:0]rp_stream_out_TDATA;
  input s_stream_out_TLAST;
  output rp_stream_out_TLAST;
  input [7:0]s_stream_out_TKEEP;
  output [7:0]rp_stream_out_TKEEP;
  output decouple_status;
  input aclk;
  input [0:0]s_axi_reg_awaddr;
  input s_axi_reg_awvalid;
  output s_axi_reg_awready;
  input [31:0]s_axi_reg_wdata;
  input s_axi_reg_wvalid;
  output s_axi_reg_wready;
  output [1:0]s_axi_reg_bresp;
  output s_axi_reg_bvalid;
  input s_axi_reg_bready;
  input [0:0]s_axi_reg_araddr;
  input s_axi_reg_arvalid;
  output s_axi_reg_arready;
  output [31:0]s_axi_reg_rdata;
  output [1:0]s_axi_reg_rresp;
  output s_axi_reg_rvalid;
  input s_axi_reg_rready;
  input s_axi_reg_aresetn;
endmodule

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Fri Jun  1 14:55:46 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tarafdar/workDir/galapagos/projects/dariusFlatten/0/0.srcs/sources_1/bd/srcs/shell_stub.v
// Design      : shell
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module shell(ARESETN, CLK_DATA, M_AXIS_tdata, M_AXIS_tkeep, 
  M_AXIS_tlast, M_AXIS_tready, M_AXIS_tvalid, M_AXI_CONTROL_araddr, M_AXI_CONTROL_arprot, 
  M_AXI_CONTROL_arready, M_AXI_CONTROL_arvalid, M_AXI_CONTROL_awaddr, 
  M_AXI_CONTROL_awprot, M_AXI_CONTROL_awready, M_AXI_CONTROL_awvalid, 
  M_AXI_CONTROL_bready, M_AXI_CONTROL_bresp, M_AXI_CONTROL_bvalid, M_AXI_CONTROL_rdata, 
  M_AXI_CONTROL_rready, M_AXI_CONTROL_rresp, M_AXI_CONTROL_rvalid, M_AXI_CONTROL_wdata, 
  M_AXI_CONTROL_wready, M_AXI_CONTROL_wstrb, M_AXI_CONTROL_wvalid, S_AXIS_tdata, 
  S_AXIS_tkeep, S_AXIS_tlast, S_AXIS_tready, S_AXIS_tvalid, S_AXI_MEM_araddr, 
  S_AXI_MEM_arburst, S_AXI_MEM_arcache, S_AXI_MEM_arid, S_AXI_MEM_arlen, S_AXI_MEM_arlock, 
  S_AXI_MEM_arprot, S_AXI_MEM_arqos, S_AXI_MEM_arready, S_AXI_MEM_arregion, 
  S_AXI_MEM_arsize, S_AXI_MEM_arvalid, S_AXI_MEM_awaddr, S_AXI_MEM_awburst, 
  S_AXI_MEM_awcache, S_AXI_MEM_awid, S_AXI_MEM_awlen, S_AXI_MEM_awlock, S_AXI_MEM_awprot, 
  S_AXI_MEM_awqos, S_AXI_MEM_awready, S_AXI_MEM_awregion, S_AXI_MEM_awsize, 
  S_AXI_MEM_awvalid, S_AXI_MEM_bid, S_AXI_MEM_bready, S_AXI_MEM_bresp, S_AXI_MEM_bvalid, 
  S_AXI_MEM_rdata, S_AXI_MEM_rid, S_AXI_MEM_rlast, S_AXI_MEM_rready, S_AXI_MEM_rresp, 
  S_AXI_MEM_rvalid, S_AXI_MEM_wdata, S_AXI_MEM_wlast, S_AXI_MEM_wready, S_AXI_MEM_wstrb, 
  S_AXI_MEM_wvalid, c0_ddr4_act_n_0, c0_ddr4_adr_0, c0_ddr4_ba_0, c0_ddr4_bg_0, 
  c0_ddr4_ck_c_0, c0_ddr4_ck_t_0, c0_ddr4_cke_0, c0_ddr4_cs_n_0, c0_ddr4_dg_0, 
  c0_ddr4_dm_dbi_n_0, c0_ddr4_dqs_c_0, c0_ddr4_dqs_t_0, c0_ddr4_odt_0, c0_ddr4_reset_n_0, 
  c0_sys_clk_n_0, c0_sys_clk_p_0, diff_clock_rtl_clk_n, diff_clock_rtl_clk_p, 
  pcie_7x_mgt_rtl_rxn, pcie_7x_mgt_rtl_rxp, pcie_7x_mgt_rtl_txn, pcie_7x_mgt_rtl_txp, 
  perst_n, refclk200, refclk_n, refclk_p, rxn, rxp, sfp_tx_disable, txn, txp)
/* synthesis syn_black_box black_box_pad_pin="ARESETN[0:0],CLK_DATA,M_AXIS_tdata[63:0],M_AXIS_tkeep[7:0],M_AXIS_tlast[0:0],M_AXIS_tready,M_AXIS_tvalid,M_AXI_CONTROL_araddr[31:0],M_AXI_CONTROL_arprot[2:0],M_AXI_CONTROL_arready,M_AXI_CONTROL_arvalid,M_AXI_CONTROL_awaddr[31:0],M_AXI_CONTROL_awprot[2:0],M_AXI_CONTROL_awready,M_AXI_CONTROL_awvalid,M_AXI_CONTROL_bready,M_AXI_CONTROL_bresp[1:0],M_AXI_CONTROL_bvalid,M_AXI_CONTROL_rdata[31:0],M_AXI_CONTROL_rready,M_AXI_CONTROL_rresp[1:0],M_AXI_CONTROL_rvalid,M_AXI_CONTROL_wdata[31:0],M_AXI_CONTROL_wready,M_AXI_CONTROL_wstrb[3:0],M_AXI_CONTROL_wvalid,S_AXIS_tdata[63:0],S_AXIS_tkeep[7:0],S_AXIS_tlast[0:0],S_AXIS_tready,S_AXIS_tvalid,S_AXI_MEM_araddr[31:0],S_AXI_MEM_arburst[1:0],S_AXI_MEM_arcache[3:0],S_AXI_MEM_arid[0:0],S_AXI_MEM_arlen[7:0],S_AXI_MEM_arlock[0:0],S_AXI_MEM_arprot[2:0],S_AXI_MEM_arqos[3:0],S_AXI_MEM_arready,S_AXI_MEM_arregion[3:0],S_AXI_MEM_arsize[2:0],S_AXI_MEM_arvalid,S_AXI_MEM_awaddr[31:0],S_AXI_MEM_awburst[1:0],S_AXI_MEM_awcache[3:0],S_AXI_MEM_awid[0:0],S_AXI_MEM_awlen[7:0],S_AXI_MEM_awlock[0:0],S_AXI_MEM_awprot[2:0],S_AXI_MEM_awqos[3:0],S_AXI_MEM_awready,S_AXI_MEM_awregion[3:0],S_AXI_MEM_awsize[2:0],S_AXI_MEM_awvalid,S_AXI_MEM_bid[0:0],S_AXI_MEM_bready,S_AXI_MEM_bresp[1:0],S_AXI_MEM_bvalid,S_AXI_MEM_rdata[511:0],S_AXI_MEM_rid[0:0],S_AXI_MEM_rlast,S_AXI_MEM_rready,S_AXI_MEM_rresp[1:0],S_AXI_MEM_rvalid,S_AXI_MEM_wdata[511:0],S_AXI_MEM_wlast,S_AXI_MEM_wready,S_AXI_MEM_wstrb[63:0],S_AXI_MEM_wvalid,c0_ddr4_act_n_0,c0_ddr4_adr_0[16:0],c0_ddr4_ba_0[1:0],c0_ddr4_bg_0[1:0],c0_ddr4_ck_c_0[0:0],c0_ddr4_ck_t_0[0:0],c0_ddr4_cke_0[0:0],c0_ddr4_cs_n_0[0:0],c0_ddr4_dg_0[63:0],c0_ddr4_dm_dbi_n_0[7:0],c0_ddr4_dqs_c_0[7:0],c0_ddr4_dqs_t_0[7:0],c0_ddr4_odt_0[0:0],c0_ddr4_reset_n_0,c0_sys_clk_n_0,c0_sys_clk_p_0,diff_clock_rtl_clk_n[0:0],diff_clock_rtl_clk_p[0:0],pcie_7x_mgt_rtl_rxn[7:0],pcie_7x_mgt_rtl_rxp[7:0],pcie_7x_mgt_rtl_txn[7:0],pcie_7x_mgt_rtl_txp[7:0],perst_n,refclk200,refclk_n,refclk_p,rxn,rxp,sfp_tx_disable[1:0],txn,txp" */;
  output [0:0]ARESETN;
  output CLK_DATA;
  output [63:0]M_AXIS_tdata;
  output [7:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  output [31:0]M_AXI_CONTROL_araddr;
  output [2:0]M_AXI_CONTROL_arprot;
  input M_AXI_CONTROL_arready;
  output M_AXI_CONTROL_arvalid;
  output [31:0]M_AXI_CONTROL_awaddr;
  output [2:0]M_AXI_CONTROL_awprot;
  input M_AXI_CONTROL_awready;
  output M_AXI_CONTROL_awvalid;
  output M_AXI_CONTROL_bready;
  input [1:0]M_AXI_CONTROL_bresp;
  input M_AXI_CONTROL_bvalid;
  input [31:0]M_AXI_CONTROL_rdata;
  output M_AXI_CONTROL_rready;
  input [1:0]M_AXI_CONTROL_rresp;
  input M_AXI_CONTROL_rvalid;
  output [31:0]M_AXI_CONTROL_wdata;
  input M_AXI_CONTROL_wready;
  output [3:0]M_AXI_CONTROL_wstrb;
  output M_AXI_CONTROL_wvalid;
  input [63:0]S_AXIS_tdata;
  input [7:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input [31:0]S_AXI_MEM_araddr;
  input [1:0]S_AXI_MEM_arburst;
  input [3:0]S_AXI_MEM_arcache;
  input [0:0]S_AXI_MEM_arid;
  input [7:0]S_AXI_MEM_arlen;
  input [0:0]S_AXI_MEM_arlock;
  input [2:0]S_AXI_MEM_arprot;
  input [3:0]S_AXI_MEM_arqos;
  output S_AXI_MEM_arready;
  input [3:0]S_AXI_MEM_arregion;
  input [2:0]S_AXI_MEM_arsize;
  input S_AXI_MEM_arvalid;
  input [31:0]S_AXI_MEM_awaddr;
  input [1:0]S_AXI_MEM_awburst;
  input [3:0]S_AXI_MEM_awcache;
  input [0:0]S_AXI_MEM_awid;
  input [7:0]S_AXI_MEM_awlen;
  input [0:0]S_AXI_MEM_awlock;
  input [2:0]S_AXI_MEM_awprot;
  input [3:0]S_AXI_MEM_awqos;
  output S_AXI_MEM_awready;
  input [3:0]S_AXI_MEM_awregion;
  input [2:0]S_AXI_MEM_awsize;
  input S_AXI_MEM_awvalid;
  output [0:0]S_AXI_MEM_bid;
  input S_AXI_MEM_bready;
  output [1:0]S_AXI_MEM_bresp;
  output S_AXI_MEM_bvalid;
  output [511:0]S_AXI_MEM_rdata;
  output [0:0]S_AXI_MEM_rid;
  output S_AXI_MEM_rlast;
  input S_AXI_MEM_rready;
  output [1:0]S_AXI_MEM_rresp;
  output S_AXI_MEM_rvalid;
  input [511:0]S_AXI_MEM_wdata;
  input S_AXI_MEM_wlast;
  output S_AXI_MEM_wready;
  input [63:0]S_AXI_MEM_wstrb;
  input S_AXI_MEM_wvalid;
  output c0_ddr4_act_n_0;
  output [16:0]c0_ddr4_adr_0;
  output [1:0]c0_ddr4_ba_0;
  output [1:0]c0_ddr4_bg_0;
  output [0:0]c0_ddr4_ck_c_0;
  output [0:0]c0_ddr4_ck_t_0;
  output [0:0]c0_ddr4_cke_0;
  output [0:0]c0_ddr4_cs_n_0;
  inout [63:0]c0_ddr4_dg_0;
  inout [7:0]c0_ddr4_dm_dbi_n_0;
  inout [7:0]c0_ddr4_dqs_c_0;
  inout [7:0]c0_ddr4_dqs_t_0;
  output [0:0]c0_ddr4_odt_0;
  output c0_ddr4_reset_n_0;
  input c0_sys_clk_n_0;
  input c0_sys_clk_p_0;
  input [0:0]diff_clock_rtl_clk_n;
  input [0:0]diff_clock_rtl_clk_p;
  input [7:0]pcie_7x_mgt_rtl_rxn;
  input [7:0]pcie_7x_mgt_rtl_rxp;
  output [7:0]pcie_7x_mgt_rtl_txn;
  output [7:0]pcie_7x_mgt_rtl_txp;
  input perst_n;
  input refclk200;
  input refclk_n;
  input refclk_p;
  input rxn;
  input rxp;
  output [1:0]sfp_tx_disable;
  output txn;
  output txp;
endmodule

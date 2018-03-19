//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Wed Feb  7 13:18:49 2018
//Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target shell_wrapper.bd
//Design      : shell_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module shell_wrapper
   (ARESETN,
    CLK_CONTROL,
    CLK_DATA,
    M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tdest,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tvalid,
    SLOT_10_AXIS_tdata,
    SLOT_10_AXIS_tdest,
    SLOT_10_AXIS_tlast,
    SLOT_10_AXIS_tready,
    SLOT_10_AXIS_tvalid,
    SLOT_11_AXIS_tdata,
    SLOT_11_AXIS_tdest,
    SLOT_11_AXIS_tlast,
    SLOT_11_AXIS_tready,
    SLOT_11_AXIS_tvalid,
    SLOT_12_AXIS_tdata,
    SLOT_12_AXIS_tdest,
    SLOT_12_AXIS_tlast,
    SLOT_12_AXIS_tready,
    SLOT_12_AXIS_tvalid,
    SLOT_13_AXIS_tdata,
    SLOT_13_AXIS_tdest,
    SLOT_13_AXIS_tlast,
    SLOT_13_AXIS_tready,
    SLOT_13_AXIS_tvalid,
    SLOT_14_AXIS_tdata,
    SLOT_14_AXIS_tdest,
    SLOT_14_AXIS_tlast,
    SLOT_14_AXIS_tready,
    SLOT_14_AXIS_tvalid,
    SLOT_15_AXIS_tdata,
    SLOT_15_AXIS_tdest,
    SLOT_15_AXIS_tlast,
    SLOT_15_AXIS_tready,
    SLOT_15_AXIS_tvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tdest,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tready,
    SLOT_1_AXIS_tvalid,
    SLOT_2_AXIS_tdata,
    SLOT_2_AXIS_tdest,
    SLOT_2_AXIS_tlast,
    SLOT_2_AXIS_tready,
    SLOT_2_AXIS_tvalid,
    SLOT_3_AXIS_tdata,
    SLOT_3_AXIS_tdest,
    SLOT_3_AXIS_tlast,
    SLOT_3_AXIS_tready,
    SLOT_3_AXIS_tvalid,
    SLOT_4_AXIS_tdata,
    SLOT_4_AXIS_tdest,
    SLOT_4_AXIS_tlast,
    SLOT_4_AXIS_tready,
    SLOT_4_AXIS_tvalid,
    SLOT_5_AXIS_tdata,
    SLOT_5_AXIS_tdest,
    SLOT_5_AXIS_tlast,
    SLOT_5_AXIS_tready,
    SLOT_5_AXIS_tvalid,
    SLOT_6_AXIS_tdata,
    SLOT_6_AXIS_tdest,
    SLOT_6_AXIS_tlast,
    SLOT_6_AXIS_tready,
    SLOT_6_AXIS_tvalid,
    SLOT_7_AXIS_tdata,
    SLOT_7_AXIS_tdest,
    SLOT_7_AXIS_tlast,
    SLOT_7_AXIS_tready,
    SLOT_7_AXIS_tvalid,
    SLOT_8_AXIS_tdata,
    SLOT_8_AXIS_tdest,
    SLOT_8_AXIS_tlast,
    SLOT_8_AXIS_tready,
    SLOT_8_AXIS_tvalid,
    SLOT_9_AXIS_tdata,
    SLOT_9_AXIS_tdest,
    SLOT_9_AXIS_tlast,
    SLOT_9_AXIS_tready,
    SLOT_9_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid,
    diff_clock_rtl_clk_n,
    diff_clock_rtl_clk_p,
    pcie_7x_mgt_rtl_rxn,
    pcie_7x_mgt_rtl_rxp,
    pcie_7x_mgt_rtl_txn,
    pcie_7x_mgt_rtl_txp,
    perst_n,
    refclk200,
    refclk_n,
    refclk_p,
    rxn,
    rxp,
    sfp_tx_disable,
    txn,
    txp);
  output [0:0]ARESETN;
  output CLK_CONTROL;
  output CLK_DATA;
  output [63:0]M_AXIS_tdata;
  output [7:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [4:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [4:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [4:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [4:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [63:0]SLOT_0_AXIS_tdata;
  input [7:0]SLOT_0_AXIS_tdest;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input SLOT_0_AXIS_tvalid;
  input [63:0]SLOT_10_AXIS_tdata;
  input [7:0]SLOT_10_AXIS_tdest;
  input SLOT_10_AXIS_tlast;
  input SLOT_10_AXIS_tready;
  input SLOT_10_AXIS_tvalid;
  input [63:0]SLOT_11_AXIS_tdata;
  input [7:0]SLOT_11_AXIS_tdest;
  input SLOT_11_AXIS_tlast;
  input SLOT_11_AXIS_tready;
  input SLOT_11_AXIS_tvalid;
  input [63:0]SLOT_12_AXIS_tdata;
  input [7:0]SLOT_12_AXIS_tdest;
  input SLOT_12_AXIS_tlast;
  input SLOT_12_AXIS_tready;
  input SLOT_12_AXIS_tvalid;
  input [63:0]SLOT_13_AXIS_tdata;
  input [7:0]SLOT_13_AXIS_tdest;
  input SLOT_13_AXIS_tlast;
  input SLOT_13_AXIS_tready;
  input SLOT_13_AXIS_tvalid;
  input [63:0]SLOT_14_AXIS_tdata;
  input [7:0]SLOT_14_AXIS_tdest;
  input SLOT_14_AXIS_tlast;
  input SLOT_14_AXIS_tready;
  input SLOT_14_AXIS_tvalid;
  input [63:0]SLOT_15_AXIS_tdata;
  input [7:0]SLOT_15_AXIS_tdest;
  input SLOT_15_AXIS_tlast;
  input SLOT_15_AXIS_tready;
  input SLOT_15_AXIS_tvalid;
  input [63:0]SLOT_1_AXIS_tdata;
  input [7:0]SLOT_1_AXIS_tdest;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tready;
  input SLOT_1_AXIS_tvalid;
  input [63:0]SLOT_2_AXIS_tdata;
  input [7:0]SLOT_2_AXIS_tdest;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tready;
  input SLOT_2_AXIS_tvalid;
  input [63:0]SLOT_3_AXIS_tdata;
  input [7:0]SLOT_3_AXIS_tdest;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tready;
  input SLOT_3_AXIS_tvalid;
  input [63:0]SLOT_4_AXIS_tdata;
  input [7:0]SLOT_4_AXIS_tdest;
  input SLOT_4_AXIS_tlast;
  input SLOT_4_AXIS_tready;
  input SLOT_4_AXIS_tvalid;
  input [63:0]SLOT_5_AXIS_tdata;
  input [7:0]SLOT_5_AXIS_tdest;
  input SLOT_5_AXIS_tlast;
  input SLOT_5_AXIS_tready;
  input SLOT_5_AXIS_tvalid;
  input [63:0]SLOT_6_AXIS_tdata;
  input [7:0]SLOT_6_AXIS_tdest;
  input SLOT_6_AXIS_tlast;
  input SLOT_6_AXIS_tready;
  input SLOT_6_AXIS_tvalid;
  input [63:0]SLOT_7_AXIS_tdata;
  input [7:0]SLOT_7_AXIS_tdest;
  input SLOT_7_AXIS_tlast;
  input SLOT_7_AXIS_tready;
  input SLOT_7_AXIS_tvalid;
  input [63:0]SLOT_8_AXIS_tdata;
  input [7:0]SLOT_8_AXIS_tdest;
  input SLOT_8_AXIS_tlast;
  input SLOT_8_AXIS_tready;
  input SLOT_8_AXIS_tvalid;
  input [63:0]SLOT_9_AXIS_tdata;
  input [7:0]SLOT_9_AXIS_tdest;
  input SLOT_9_AXIS_tlast;
  input SLOT_9_AXIS_tready;
  input SLOT_9_AXIS_tvalid;
  input [63:0]S_AXIS_tdata;
  input [7:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
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

  (* keep = "true" *) wire [0:0]ARESETN;
  (* keep = "true" *) wire CLK_CONTROL;
  (* keep = "true" *) wire CLK_DATA;
  (* keep = "true" *) wire [63:0]M_AXIS_tdata;
  (* keep = "true" *) wire [7:0]M_AXIS_tkeep;
  (* keep = "true" *) wire [0:0]M_AXIS_tlast;
  (* keep = "true" *) wire M_AXIS_tready;
  (* keep = "true" *) wire M_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]M_AXI_araddr;
  (* keep = "true" *) wire [1:0]M_AXI_arburst;
  (* keep = "true" *) wire [3:0]M_AXI_arcache;
  (* keep = "true" *) wire [4:0]M_AXI_arid;
  (* keep = "true" *) wire [7:0]M_AXI_arlen;
  (* keep = "true" *) wire [0:0]M_AXI_arlock;
  (* keep = "true" *) wire [2:0]M_AXI_arprot;
  (* keep = "true" *) wire [3:0]M_AXI_arqos;
  (* keep = "true" *) wire M_AXI_arready;
  (* keep = "true" *) wire [3:0]M_AXI_arregion;
  (* keep = "true" *) wire [2:0]M_AXI_arsize;
  (* keep = "true" *) wire M_AXI_arvalid;
  (* keep = "true" *) wire [63:0]M_AXI_awaddr;
  (* keep = "true" *) wire [1:0]M_AXI_awburst;
  (* keep = "true" *) wire [3:0]M_AXI_awcache;
  (* keep = "true" *) wire [4:0]M_AXI_awid;
  (* keep = "true" *) wire [7:0]M_AXI_awlen;
  (* keep = "true" *) wire [0:0]M_AXI_awlock;
  (* keep = "true" *) wire [2:0]M_AXI_awprot;
  (* keep = "true" *) wire [3:0]M_AXI_awqos;
  (* keep = "true" *) wire M_AXI_awready;
  (* keep = "true" *) wire [3:0]M_AXI_awregion;
  (* keep = "true" *) wire [2:0]M_AXI_awsize;
  (* keep = "true" *) wire M_AXI_awvalid;
  (* keep = "true" *) wire [4:0]M_AXI_bid;
  (* keep = "true" *) wire M_AXI_bready;
  (* keep = "true" *) wire [1:0]M_AXI_bresp;
  (* keep = "true" *) wire M_AXI_bvalid;
  (* keep = "true" *) wire [255:0]M_AXI_rdata;
  (* keep = "true" *) wire [4:0]M_AXI_rid;
  (* keep = "true" *) wire M_AXI_rlast;
  (* keep = "true" *) wire M_AXI_rready;
  (* keep = "true" *) wire [1:0]M_AXI_rresp;
  (* keep = "true" *) wire M_AXI_rvalid;
  (* keep = "true" *) wire [255:0]M_AXI_wdata;
  (* keep = "true" *) wire M_AXI_wlast;
  (* keep = "true" *) wire M_AXI_wready;
  (* keep = "true" *) wire [31:0]M_AXI_wstrb;
  (* keep = "true" *) wire M_AXI_wvalid;
  (* keep = "true" *) wire [63:0]SLOT_0_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_0_AXIS_tdest;
  (* keep = "true" *) wire SLOT_0_AXIS_tlast;
  (* keep = "true" *) wire SLOT_0_AXIS_tready;
  (* keep = "true" *) wire SLOT_0_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_10_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_10_AXIS_tdest;
  (* keep = "true" *) wire SLOT_10_AXIS_tlast;
  (* keep = "true" *) wire SLOT_10_AXIS_tready;
  (* keep = "true" *) wire SLOT_10_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_11_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_11_AXIS_tdest;
  (* keep = "true" *) wire SLOT_11_AXIS_tlast;
  (* keep = "true" *) wire SLOT_11_AXIS_tready;
  (* keep = "true" *) wire SLOT_11_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_12_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_12_AXIS_tdest;
  (* keep = "true" *) wire SLOT_12_AXIS_tlast;
  (* keep = "true" *) wire SLOT_12_AXIS_tready;
  (* keep = "true" *) wire SLOT_12_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_13_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_13_AXIS_tdest;
  (* keep = "true" *) wire SLOT_13_AXIS_tlast;
  (* keep = "true" *) wire SLOT_13_AXIS_tready;
  (* keep = "true" *) wire SLOT_13_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_14_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_14_AXIS_tdest;
  (* keep = "true" *) wire SLOT_14_AXIS_tlast;
  (* keep = "true" *) wire SLOT_14_AXIS_tready;
  (* keep = "true" *) wire SLOT_14_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_15_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_15_AXIS_tdest;
  (* keep = "true" *) wire SLOT_15_AXIS_tlast;
  (* keep = "true" *) wire SLOT_15_AXIS_tready;
  (* keep = "true" *) wire SLOT_15_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_1_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_1_AXIS_tdest;
  (* keep = "true" *) wire SLOT_1_AXIS_tlast;
  (* keep = "true" *) wire SLOT_1_AXIS_tready;
  (* keep = "true" *) wire SLOT_1_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_2_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_2_AXIS_tdest;
  (* keep = "true" *) wire SLOT_2_AXIS_tlast;
  (* keep = "true" *) wire SLOT_2_AXIS_tready;
  (* keep = "true" *) wire SLOT_2_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_3_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_3_AXIS_tdest;
  (* keep = "true" *) wire SLOT_3_AXIS_tlast;
  (* keep = "true" *) wire SLOT_3_AXIS_tready;
  (* keep = "true" *) wire SLOT_3_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_4_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_4_AXIS_tdest;
  (* keep = "true" *) wire SLOT_4_AXIS_tlast;
  (* keep = "true" *) wire SLOT_4_AXIS_tready;
  (* keep = "true" *) wire SLOT_4_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_5_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_5_AXIS_tdest;
  (* keep = "true" *) wire SLOT_5_AXIS_tlast;
  (* keep = "true" *) wire SLOT_5_AXIS_tready;
  (* keep = "true" *) wire SLOT_5_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_6_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_6_AXIS_tdest;
  (* keep = "true" *) wire SLOT_6_AXIS_tlast;
  (* keep = "true" *) wire SLOT_6_AXIS_tready;
  (* keep = "true" *) wire SLOT_6_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_7_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_7_AXIS_tdest;
  (* keep = "true" *) wire SLOT_7_AXIS_tlast;
  (* keep = "true" *) wire SLOT_7_AXIS_tready;
  (* keep = "true" *) wire SLOT_7_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_8_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_8_AXIS_tdest;
  (* keep = "true" *) wire SLOT_8_AXIS_tlast;
  (* keep = "true" *) wire SLOT_8_AXIS_tready;
  (* keep = "true" *) wire SLOT_8_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]SLOT_9_AXIS_tdata;
  (* keep = "true" *) wire [7:0]SLOT_9_AXIS_tdest;
  (* keep = "true" *) wire SLOT_9_AXIS_tlast;
  (* keep = "true" *) wire SLOT_9_AXIS_tready;
  (* keep = "true" *) wire SLOT_9_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]S_AXIS_tdata;
  (* keep = "true" *) wire [7:0]S_AXIS_tkeep;
  (* keep = "true" *) wire [0:0]S_AXIS_tlast;
  (* keep = "true" *) wire S_AXIS_tready;
  (* keep = "true" *) wire S_AXIS_tvalid;
  (* keep = "true" *) wire [0:0]diff_clock_rtl_clk_n;
  (* keep = "true" *) wire [0:0]diff_clock_rtl_clk_p;
  (* keep = "true" *) wire [7:0]pcie_7x_mgt_rtl_rxn;
  (* keep = "true" *) wire [7:0]pcie_7x_mgt_rtl_rxp;
  (* keep = "true" *) wire [7:0]pcie_7x_mgt_rtl_txn;
  (* keep = "true" *) wire [7:0]pcie_7x_mgt_rtl_txp;
  (* keep = "true" *) wire perst_n;
  (* keep = "true" *) wire refclk200;
  (* keep = "true" *) wire refclk_n;
  (* keep = "true" *) wire refclk_p;
  (* keep = "true" *) wire rxn;
  (* keep = "true" *) wire rxp;
  (* keep = "true" *) wire [1:0]sfp_tx_disable;
  (* keep = "true" *) wire txn;
  (* keep = "true" *) wire txp;

  shell shell_i
       (.ARESETN(ARESETN),
        .CLK_CONTROL(CLK_CONTROL),
        .CLK_DATA(CLK_DATA),
        .M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tkeep(M_AXIS_tkeep),
        .M_AXIS_tlast(M_AXIS_tlast),
        .M_AXIS_tready(M_AXIS_tready),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .M_AXI_araddr(M_AXI_araddr),
        .M_AXI_arburst(M_AXI_arburst),
        .M_AXI_arcache(M_AXI_arcache),
        .M_AXI_arid(M_AXI_arid),
        .M_AXI_arlen(M_AXI_arlen),
        .M_AXI_arlock(M_AXI_arlock),
        .M_AXI_arprot(M_AXI_arprot),
        .M_AXI_arqos(M_AXI_arqos),
        .M_AXI_arready(M_AXI_arready),
        .M_AXI_arregion(M_AXI_arregion),
        .M_AXI_arsize(M_AXI_arsize),
        .M_AXI_arvalid(M_AXI_arvalid),
        .M_AXI_awaddr(M_AXI_awaddr),
        .M_AXI_awburst(M_AXI_awburst),
        .M_AXI_awcache(M_AXI_awcache),
        .M_AXI_awid(M_AXI_awid),
        .M_AXI_awlen(M_AXI_awlen),
        .M_AXI_awlock(M_AXI_awlock),
        .M_AXI_awprot(M_AXI_awprot),
        .M_AXI_awqos(M_AXI_awqos),
        .M_AXI_awready(M_AXI_awready),
        .M_AXI_awregion(M_AXI_awregion),
        .M_AXI_awsize(M_AXI_awsize),
        .M_AXI_awvalid(M_AXI_awvalid),
        .M_AXI_bid(M_AXI_bid),
        .M_AXI_bready(M_AXI_bready),
        .M_AXI_bresp(M_AXI_bresp),
        .M_AXI_bvalid(M_AXI_bvalid),
        .M_AXI_rdata(M_AXI_rdata),
        .M_AXI_rid(M_AXI_rid),
        .M_AXI_rlast(M_AXI_rlast),
        .M_AXI_rready(M_AXI_rready),
        .M_AXI_rresp(M_AXI_rresp),
        .M_AXI_rvalid(M_AXI_rvalid),
        .M_AXI_wdata(M_AXI_wdata),
        .M_AXI_wlast(M_AXI_wlast),
        .M_AXI_wready(M_AXI_wready),
        .M_AXI_wstrb(M_AXI_wstrb),
        .M_AXI_wvalid(M_AXI_wvalid),
        .SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tdest(SLOT_0_AXIS_tdest),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .SLOT_10_AXIS_tdata(SLOT_10_AXIS_tdata),
        .SLOT_10_AXIS_tdest(SLOT_10_AXIS_tdest),
        .SLOT_10_AXIS_tlast(SLOT_10_AXIS_tlast),
        .SLOT_10_AXIS_tready(SLOT_10_AXIS_tready),
        .SLOT_10_AXIS_tvalid(SLOT_10_AXIS_tvalid),
        .SLOT_11_AXIS_tdata(SLOT_11_AXIS_tdata),
        .SLOT_11_AXIS_tdest(SLOT_11_AXIS_tdest),
        .SLOT_11_AXIS_tlast(SLOT_11_AXIS_tlast),
        .SLOT_11_AXIS_tready(SLOT_11_AXIS_tready),
        .SLOT_11_AXIS_tvalid(SLOT_11_AXIS_tvalid),
        .SLOT_12_AXIS_tdata(SLOT_12_AXIS_tdata),
        .SLOT_12_AXIS_tdest(SLOT_12_AXIS_tdest),
        .SLOT_12_AXIS_tlast(SLOT_12_AXIS_tlast),
        .SLOT_12_AXIS_tready(SLOT_12_AXIS_tready),
        .SLOT_12_AXIS_tvalid(SLOT_12_AXIS_tvalid),
        .SLOT_13_AXIS_tdata(SLOT_13_AXIS_tdata),
        .SLOT_13_AXIS_tdest(SLOT_13_AXIS_tdest),
        .SLOT_13_AXIS_tlast(SLOT_13_AXIS_tlast),
        .SLOT_13_AXIS_tready(SLOT_13_AXIS_tready),
        .SLOT_13_AXIS_tvalid(SLOT_13_AXIS_tvalid),
        .SLOT_14_AXIS_tdata(SLOT_14_AXIS_tdata),
        .SLOT_14_AXIS_tdest(SLOT_14_AXIS_tdest),
        .SLOT_14_AXIS_tlast(SLOT_14_AXIS_tlast),
        .SLOT_14_AXIS_tready(SLOT_14_AXIS_tready),
        .SLOT_14_AXIS_tvalid(SLOT_14_AXIS_tvalid),
        .SLOT_15_AXIS_tdata(SLOT_15_AXIS_tdata),
        .SLOT_15_AXIS_tdest(SLOT_15_AXIS_tdest),
        .SLOT_15_AXIS_tlast(SLOT_15_AXIS_tlast),
        .SLOT_15_AXIS_tready(SLOT_15_AXIS_tready),
        .SLOT_15_AXIS_tvalid(SLOT_15_AXIS_tvalid),
        .SLOT_1_AXIS_tdata(SLOT_1_AXIS_tdata),
        .SLOT_1_AXIS_tdest(SLOT_1_AXIS_tdest),
        .SLOT_1_AXIS_tlast(SLOT_1_AXIS_tlast),
        .SLOT_1_AXIS_tready(SLOT_1_AXIS_tready),
        .SLOT_1_AXIS_tvalid(SLOT_1_AXIS_tvalid),
        .SLOT_2_AXIS_tdata(SLOT_2_AXIS_tdata),
        .SLOT_2_AXIS_tdest(SLOT_2_AXIS_tdest),
        .SLOT_2_AXIS_tlast(SLOT_2_AXIS_tlast),
        .SLOT_2_AXIS_tready(SLOT_2_AXIS_tready),
        .SLOT_2_AXIS_tvalid(SLOT_2_AXIS_tvalid),
        .SLOT_3_AXIS_tdata(SLOT_3_AXIS_tdata),
        .SLOT_3_AXIS_tdest(SLOT_3_AXIS_tdest),
        .SLOT_3_AXIS_tlast(SLOT_3_AXIS_tlast),
        .SLOT_3_AXIS_tready(SLOT_3_AXIS_tready),
        .SLOT_3_AXIS_tvalid(SLOT_3_AXIS_tvalid),
        .SLOT_4_AXIS_tdata(SLOT_4_AXIS_tdata),
        .SLOT_4_AXIS_tdest(SLOT_4_AXIS_tdest),
        .SLOT_4_AXIS_tlast(SLOT_4_AXIS_tlast),
        .SLOT_4_AXIS_tready(SLOT_4_AXIS_tready),
        .SLOT_4_AXIS_tvalid(SLOT_4_AXIS_tvalid),
        .SLOT_5_AXIS_tdata(SLOT_5_AXIS_tdata),
        .SLOT_5_AXIS_tdest(SLOT_5_AXIS_tdest),
        .SLOT_5_AXIS_tlast(SLOT_5_AXIS_tlast),
        .SLOT_5_AXIS_tready(SLOT_5_AXIS_tready),
        .SLOT_5_AXIS_tvalid(SLOT_5_AXIS_tvalid),
        .SLOT_6_AXIS_tdata(SLOT_6_AXIS_tdata),
        .SLOT_6_AXIS_tdest(SLOT_6_AXIS_tdest),
        .SLOT_6_AXIS_tlast(SLOT_6_AXIS_tlast),
        .SLOT_6_AXIS_tready(SLOT_6_AXIS_tready),
        .SLOT_6_AXIS_tvalid(SLOT_6_AXIS_tvalid),
        .SLOT_7_AXIS_tdata(SLOT_7_AXIS_tdata),
        .SLOT_7_AXIS_tdest(SLOT_7_AXIS_tdest),
        .SLOT_7_AXIS_tlast(SLOT_7_AXIS_tlast),
        .SLOT_7_AXIS_tready(SLOT_7_AXIS_tready),
        .SLOT_7_AXIS_tvalid(SLOT_7_AXIS_tvalid),
        .SLOT_8_AXIS_tdata(SLOT_8_AXIS_tdata),
        .SLOT_8_AXIS_tdest(SLOT_8_AXIS_tdest),
        .SLOT_8_AXIS_tlast(SLOT_8_AXIS_tlast),
        .SLOT_8_AXIS_tready(SLOT_8_AXIS_tready),
        .SLOT_8_AXIS_tvalid(SLOT_8_AXIS_tvalid),
        .SLOT_9_AXIS_tdata(SLOT_9_AXIS_tdata),
        .SLOT_9_AXIS_tdest(SLOT_9_AXIS_tdest),
        .SLOT_9_AXIS_tlast(SLOT_9_AXIS_tlast),
        .SLOT_9_AXIS_tready(SLOT_9_AXIS_tready),
        .SLOT_9_AXIS_tvalid(SLOT_9_AXIS_tvalid),
        .S_AXIS_tdata(S_AXIS_tdata),
        .S_AXIS_tkeep(S_AXIS_tkeep),
        .S_AXIS_tlast(S_AXIS_tlast),
        .S_AXIS_tready(S_AXIS_tready),
        .S_AXIS_tvalid(S_AXIS_tvalid),
        .diff_clock_rtl_clk_n(diff_clock_rtl_clk_n),
        .diff_clock_rtl_clk_p(diff_clock_rtl_clk_p),
        .pcie_7x_mgt_rtl_rxn(pcie_7x_mgt_rtl_rxn),
        .pcie_7x_mgt_rtl_rxp(pcie_7x_mgt_rtl_rxp),
        .pcie_7x_mgt_rtl_txn(pcie_7x_mgt_rtl_txn),
        .pcie_7x_mgt_rtl_txp(pcie_7x_mgt_rtl_txp),
        .perst_n(perst_n),
        .refclk200(refclk200),
        .refclk_n(refclk_n),
        .refclk_p(refclk_p),
        .rxn(rxn),
        .rxp(rxp),
        .sfp_tx_disable(sfp_tx_disable),
        .txn(txn),
        .txp(txp));
endmodule

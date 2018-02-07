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
  input [15:0]SLOT_0_AXIS_tdest;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input SLOT_0_AXIS_tvalid;
  input [63:0]SLOT_10_AXIS_tdata;
  input [15:0]SLOT_10_AXIS_tdest;
  input SLOT_10_AXIS_tlast;
  input SLOT_10_AXIS_tready;
  input SLOT_10_AXIS_tvalid;
  input [7:0]SLOT_11_AXIS_tdata;
  input [15:0]SLOT_11_AXIS_tdest;
  input SLOT_11_AXIS_tlast;
  input SLOT_11_AXIS_tready;
  input SLOT_11_AXIS_tvalid;
  input [63:0]SLOT_12_AXIS_tdata;
  input [15:0]SLOT_12_AXIS_tdest;
  input SLOT_12_AXIS_tlast;
  input SLOT_12_AXIS_tready;
  input SLOT_12_AXIS_tvalid;
  input [63:0]SLOT_13_AXIS_tdata;
  input [15:0]SLOT_13_AXIS_tdest;
  input SLOT_13_AXIS_tlast;
  input SLOT_13_AXIS_tready;
  input SLOT_13_AXIS_tvalid;
  input [7:0]SLOT_14_AXIS_tdata;
  input [15:0]SLOT_14_AXIS_tdest;
  input SLOT_14_AXIS_tlast;
  input SLOT_14_AXIS_tready;
  input SLOT_14_AXIS_tvalid;
  input [63:0]SLOT_15_AXIS_tdata;
  input [15:0]SLOT_15_AXIS_tdest;
  input SLOT_15_AXIS_tlast;
  input SLOT_15_AXIS_tready;
  input SLOT_15_AXIS_tvalid;
  input [63:0]SLOT_1_AXIS_tdata;
  input [15:0]SLOT_1_AXIS_tdest;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tready;
  input SLOT_1_AXIS_tvalid;
  input [63:0]SLOT_2_AXIS_tdata;
  input [15:0]SLOT_2_AXIS_tdest;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tready;
  input SLOT_2_AXIS_tvalid;
  input [63:0]SLOT_3_AXIS_tdata;
  input [15:0]SLOT_3_AXIS_tdest;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tready;
  input SLOT_3_AXIS_tvalid;
  input [63:0]SLOT_4_AXIS_tdata;
  input [15:0]SLOT_4_AXIS_tdest;
  input SLOT_4_AXIS_tlast;
  input SLOT_4_AXIS_tready;
  input SLOT_4_AXIS_tvalid;
  input [63:0]SLOT_5_AXIS_tdata;
  input [15:0]SLOT_5_AXIS_tdest;
  input SLOT_5_AXIS_tlast;
  input SLOT_5_AXIS_tready;
  input SLOT_5_AXIS_tvalid;
  input [63:0]SLOT_6_AXIS_tdata;
  input [15:0]SLOT_6_AXIS_tdest;
  input SLOT_6_AXIS_tlast;
  input SLOT_6_AXIS_tready;
  input SLOT_6_AXIS_tvalid;
  input [63:0]SLOT_7_AXIS_tdata;
  input [15:0]SLOT_7_AXIS_tdest;
  input SLOT_7_AXIS_tlast;
  input SLOT_7_AXIS_tready;
  input SLOT_7_AXIS_tvalid;
  input [63:0]SLOT_8_AXIS_tdata;
  input [15:0]SLOT_8_AXIS_tdest;
  input SLOT_8_AXIS_tlast;
  input SLOT_8_AXIS_tready;
  input SLOT_8_AXIS_tvalid;
  input [63:0]SLOT_9_AXIS_tdata;
  input [15:0]SLOT_9_AXIS_tdest;
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

  wire [0:0]ARESETN;
  wire CLK_CONTROL;
  wire CLK_DATA;
  wire [63:0]M_AXIS_tdata;
  wire [7:0]M_AXIS_tkeep;
  wire [0:0]M_AXIS_tlast;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire [63:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [4:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire [0:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire [3:0]M_AXI_arregion;
  wire [2:0]M_AXI_arsize;
  wire M_AXI_arvalid;
  wire [63:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [4:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [3:0]M_AXI_awregion;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire [4:0]M_AXI_bid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [255:0]M_AXI_rdata;
  wire [4:0]M_AXI_rid;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [255:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [31:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [63:0]SLOT_0_AXIS_tdata;
  wire [15:0]SLOT_0_AXIS_tdest;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire SLOT_0_AXIS_tvalid;
  wire [63:0]SLOT_10_AXIS_tdata;
  wire [15:0]SLOT_10_AXIS_tdest;
  wire SLOT_10_AXIS_tlast;
  wire SLOT_10_AXIS_tready;
  wire SLOT_10_AXIS_tvalid;
  wire [7:0]SLOT_11_AXIS_tdata;
  wire [15:0]SLOT_11_AXIS_tdest;
  wire SLOT_11_AXIS_tlast;
  wire SLOT_11_AXIS_tready;
  wire SLOT_11_AXIS_tvalid;
  wire [63:0]SLOT_12_AXIS_tdata;
  wire [15:0]SLOT_12_AXIS_tdest;
  wire SLOT_12_AXIS_tlast;
  wire SLOT_12_AXIS_tready;
  wire SLOT_12_AXIS_tvalid;
  wire [63:0]SLOT_13_AXIS_tdata;
  wire [15:0]SLOT_13_AXIS_tdest;
  wire SLOT_13_AXIS_tlast;
  wire SLOT_13_AXIS_tready;
  wire SLOT_13_AXIS_tvalid;
  wire [7:0]SLOT_14_AXIS_tdata;
  wire [15:0]SLOT_14_AXIS_tdest;
  wire SLOT_14_AXIS_tlast;
  wire SLOT_14_AXIS_tready;
  wire SLOT_14_AXIS_tvalid;
  wire [63:0]SLOT_15_AXIS_tdata;
  wire [15:0]SLOT_15_AXIS_tdest;
  wire SLOT_15_AXIS_tlast;
  wire SLOT_15_AXIS_tready;
  wire SLOT_15_AXIS_tvalid;
  wire [63:0]SLOT_1_AXIS_tdata;
  wire [15:0]SLOT_1_AXIS_tdest;
  wire SLOT_1_AXIS_tlast;
  wire SLOT_1_AXIS_tready;
  wire SLOT_1_AXIS_tvalid;
  wire [63:0]SLOT_2_AXIS_tdata;
  wire [15:0]SLOT_2_AXIS_tdest;
  wire SLOT_2_AXIS_tlast;
  wire SLOT_2_AXIS_tready;
  wire SLOT_2_AXIS_tvalid;
  wire [63:0]SLOT_3_AXIS_tdata;
  wire [15:0]SLOT_3_AXIS_tdest;
  wire SLOT_3_AXIS_tlast;
  wire SLOT_3_AXIS_tready;
  wire SLOT_3_AXIS_tvalid;
  wire [63:0]SLOT_4_AXIS_tdata;
  wire [15:0]SLOT_4_AXIS_tdest;
  wire SLOT_4_AXIS_tlast;
  wire SLOT_4_AXIS_tready;
  wire SLOT_4_AXIS_tvalid;
  wire [63:0]SLOT_5_AXIS_tdata;
  wire [15:0]SLOT_5_AXIS_tdest;
  wire SLOT_5_AXIS_tlast;
  wire SLOT_5_AXIS_tready;
  wire SLOT_5_AXIS_tvalid;
  wire [63:0]SLOT_6_AXIS_tdata;
  wire [15:0]SLOT_6_AXIS_tdest;
  wire SLOT_6_AXIS_tlast;
  wire SLOT_6_AXIS_tready;
  wire SLOT_6_AXIS_tvalid;
  wire [63:0]SLOT_7_AXIS_tdata;
  wire [15:0]SLOT_7_AXIS_tdest;
  wire SLOT_7_AXIS_tlast;
  wire SLOT_7_AXIS_tready;
  wire SLOT_7_AXIS_tvalid;
  wire [63:0]SLOT_8_AXIS_tdata;
  wire [15:0]SLOT_8_AXIS_tdest;
  wire SLOT_8_AXIS_tlast;
  wire SLOT_8_AXIS_tready;
  wire SLOT_8_AXIS_tvalid;
  wire [63:0]SLOT_9_AXIS_tdata;
  wire [15:0]SLOT_9_AXIS_tdest;
  wire SLOT_9_AXIS_tlast;
  wire SLOT_9_AXIS_tready;
  wire SLOT_9_AXIS_tvalid;
  wire [63:0]S_AXIS_tdata;
  wire [7:0]S_AXIS_tkeep;
  wire [0:0]S_AXIS_tlast;
  wire S_AXIS_tready;
  wire S_AXIS_tvalid;
  wire [0:0]diff_clock_rtl_clk_n;
  wire [0:0]diff_clock_rtl_clk_p;
  wire [7:0]pcie_7x_mgt_rtl_rxn;
  wire [7:0]pcie_7x_mgt_rtl_rxp;
  wire [7:0]pcie_7x_mgt_rtl_txn;
  wire [7:0]pcie_7x_mgt_rtl_txp;
  wire perst_n;
  wire refclk200;
  wire refclk_n;
  wire refclk_p;
  wire rxn;
  wire rxp;
  wire [1:0]sfp_tx_disable;
  wire txn;
  wire txp;

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

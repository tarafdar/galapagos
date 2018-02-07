//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
//Date        : Fri Jun 30 19:52:56 2017
//Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target shell_wrapper.bd
//Design      : shell_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module shellTop
   (
	//ARESETN,
    //CLK_CONTROL,
    //CLK_DATA,
    //M_AXIS_tdata,
    //M_AXIS_tkeep,
    //M_AXIS_tlast,
    //M_AXIS_tready,
    //M_AXIS_tvalid,
    //M_AXI_araddr,
    //M_AXI_arburst,
    //M_AXI_arcache,
    //M_AXI_arid,
    //M_AXI_arlen,
    //M_AXI_arlock,
    //M_AXI_arprot,
    //M_AXI_arready,
    //M_AXI_arsize,
    //M_AXI_arvalid,
    //M_AXI_awaddr,
    //M_AXI_awburst,
    //M_AXI_awcache,
    //M_AXI_awid,
    //M_AXI_awlen,
    //M_AXI_awlock,
    //M_AXI_awprot,
    //M_AXI_awready,
    //M_AXI_awsize,
    //M_AXI_awvalid,
    //M_AXI_bid,
    //M_AXI_bready,
    //M_AXI_bresp,
    //M_AXI_bvalid,
    //M_AXI_rdata,
    //M_AXI_rid,
    //M_AXI_rlast,
    //M_AXI_rready,
    //M_AXI_rresp,
    //M_AXI_rvalid,
    //M_AXI_wdata,
    //M_AXI_wlast,
    //M_AXI_wready,
    //M_AXI_wstrb,
    //M_AXI_wvalid,
    //S_AXIS_tdata,
    //S_AXIS_tkeep,
    //S_AXIS_tlast,
    //S_AXIS_tready,
    //S_AXIS_tvalid,
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
  //output [0:0]ARESETN;
  //output CLK_CONTROL;
  //output CLK_DATA;
  //output [63:0]M_AXIS_tdata;
  //output [7:0]M_AXIS_tkeep;
  //output [0:0]M_AXIS_tlast;
  //input M_AXIS_tready;
  //output M_AXIS_tvalid;
  //output [63:0]M_AXI_araddr;
  //output [1:0]M_AXI_arburst;
  //output [3:0]M_AXI_arcache;
  //output [3:0]M_AXI_arid;
  //output [7:0]M_AXI_arlen;
  //output M_AXI_arlock;
  //output [2:0]M_AXI_arprot;
  //input M_AXI_arready;
  //output [2:0]M_AXI_arsize;
  //output M_AXI_arvalid;
  //output [63:0]M_AXI_awaddr;
  //output [1:0]M_AXI_awburst;
  //output [3:0]M_AXI_awcache;
  //output [3:0]M_AXI_awid;
  //output [7:0]M_AXI_awlen;
  //output M_AXI_awlock;
  //output [2:0]M_AXI_awprot;
  //input M_AXI_awready;
  //output [2:0]M_AXI_awsize;
  //output M_AXI_awvalid;
  //input [3:0]M_AXI_bid;
  //output M_AXI_bready;
  //input [1:0]M_AXI_bresp;
  //input M_AXI_bvalid;
  //input [255:0]M_AXI_rdata;
  //input [3:0]M_AXI_rid;
  //input M_AXI_rlast;
  //output M_AXI_rready;
  //input [1:0]M_AXI_rresp;
  //input M_AXI_rvalid;
  //output [255:0]M_AXI_wdata;
  //output M_AXI_wlast;
  //input M_AXI_wready;
  //output [31:0]M_AXI_wstrb;
  //output M_AXI_wvalid;
  //input [63:0]S_AXIS_tdata;
  //input [7:0]S_AXIS_tkeep;
  //input S_AXIS_tlast;
  //output S_AXIS_tready;
  //input S_AXIS_tvalid;
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
  wire [3:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire M_AXI_arready;
  wire [2:0]M_AXI_arsize;
  wire M_AXI_arvalid;
  wire [63:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [3:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire [3:0]M_AXI_bid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [255:0]M_AXI_rdata;
  wire [3:0]M_AXI_rid;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [255:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [31:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [63:0]S_AXIS_tdata;
  wire [7:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire S_AXIS_tready;
  wire S_AXIS_tvalid;
  //wire [0:0]diff_clock_rtl_clk_n;
  //wire [0:0]diff_clock_rtl_clk_p;
  //wire [7:0]pcie_7x_mgt_rtl_rxn;
  //wire [7:0]pcie_7x_mgt_rtl_rxp;
  //wire [7:0]pcie_7x_mgt_rtl_txn;
  //wire [7:0]pcie_7x_mgt_rtl_txp;
  //wire perst_n;
  //wire refclk200;
  //wire refclk_n;
  //wire refclk_p;
  //wire rxn;
  //wire rxp;
  //wire [1:0]sfp_tx_disable;
  //wire txn;
  //wire txp;

  wire [63:0] SLOT_AXIS_0_tdata;
  wire [15:0] SLOT_AXIS_0_tdest;
  wire SLOT_AXIS_0_tlast;
  wire SLOT_AXIS_0_tready;
  wire SLOT_AXIS_0_tvalid;
  wire [63:0] SLOT_AXIS_1_tdata;
  wire [15:0] SLOT_AXIS_1_tdest;
  wire SLOT_AXIS_1_tlast;
  wire SLOT_AXIS_1_tready;
  wire SLOT_AXIS_1_tvalid;
  wire [63:0] SLOT_AXIS_2_tdata;
  wire [15:0] SLOT_AXIS_2_tdest;
  wire SLOT_AXIS_2_tlast;
  wire SLOT_AXIS_2_tready;
  wire SLOT_AXIS_2_tvalid;
  wire [63:0] SLOT_AXIS_3_tdata;
  wire [15:0] SLOT_AXIS_3_tdest;
  wire SLOT_AXIS_3_tlast;
  wire SLOT_AXIS_3_tready;
  wire SLOT_AXIS_3_tvalid;
  wire [63:0] SLOT_AXIS_4_tdata;
  wire [15:0] SLOT_AXIS_4_tdest;
  wire SLOT_AXIS_4_tlast;
  wire SLOT_AXIS_4_tready;
  wire SLOT_AXIS_4_tvalid;
  wire [63:0] SLOT_5_tdata;
  wire [15:0] SLOT_AXIS_5_tdest;
  wire SLOT_AXIS_5_tlast;
  wire SLOT_AXIS_5_tready;
  wire SLOT_AXIS_5_tvalid;
  wire [63:0] SLOT_AXIS_6_tdata;
  wire [15:0] SLOT_AXIS_6_tdest;
  wire SLOT_AXIS_6_tlast;
  wire SLOT_AXIS_6_tready;
  wire SLOT_AXIS_6_tvalid;
  wire [63:0] SLOT_7_tdata;
  wire [15:0] SLOT_AXIS_7_tdest;
  wire SLOT_AXIS_7_tlast;
  wire SLOT_AXIS_7_tready;
  wire SLOT_AXIS_7_tvalid;
  wire [63:0] SLOT_8_tdata;
  wire [15:0] SLOT_AXIS_8_tdest;
  wire SLOT_AXIS_8_tlast;
  wire SLOT_AXIS_8_tready;
  wire SLOT_AXIS_8_tvalid;
  wire [63:0] SLOT_9_tdata;
  wire [15:0] SLOT_AXIS_9_tdest;
  wire SLOT_AXIS_9_tlast;
  wire SLOT_AXIS_9_tready;
  wire SLOT_AXIS_9_tvalid;
  wire [63:0] SLOT_10_tdata;
  wire [15:0] SLOT_AXIS_10_tdest;
  wire SLOT_AXIS_10_tlast;
  wire SLOT_AXIS_10_tready;
  wire SLOT_AXIS_10_tvalid;
  wire [63:0] SLOT_11_tdata;
  wire [15:0] SLOT_AXIS_11_tdest;
  wire SLOT_AXIS_11_tlast;
  wire SLOT_AXIS_11_tready;
  wire SLOT_AXIS_11_tvalid;
  wire [63:0] SLOT_12_tdata;
  wire [15:0] SLOT_AXIS_12_tdest;
  wire SLOT_AXIS_12_tlast;
  wire SLOT_AXIS_12_tready;
  wire SLOT_AXIS_12_tvalid;
  wire [63:0] SLOT_13_tdata;
  wire [15:0] SLOT_AXIS_13_tdest;
  wire SLOT_AXIS_13_tlast;
  wire SLOT_AXIS_13_tready;
  wire SLOT_AXIS_13_tvalid;
  wire [63:0] SLOT_14_tdata;
  wire [15:0] SLOT_AXIS_14_tdest;
  wire SLOT_AXIS_14_tlast;
  wire SLOT_AXIS_14_tready;
  wire SLOT_AXIS_14_tvalid;
  wire [63:0] SLOT_15_tdata;
  wire [15:0] SLOT_AXIS_15_tdest;
  wire SLOT_AXIS_15_tlast;
  wire SLOT_AXIS_15_tready;
  wire SLOT_AXIS_15_tvalid;
  
  shell_wrapper shell_wrapper_i
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
        .M_AXI_arready(M_AXI_arready),
        .M_AXI_arsize(M_AXI_arsize),
        .M_AXI_arvalid(M_AXI_arvalid),
        .M_AXI_awaddr(M_AXI_awaddr),
        .M_AXI_awburst(M_AXI_awburst),
        .M_AXI_awcache(M_AXI_awcache),
        .M_AXI_awid(M_AXI_awid),
        .M_AXI_awlen(M_AXI_awlen),
        .M_AXI_awlock(M_AXI_awlock),
        .M_AXI_awprot(M_AXI_awprot),
        .M_AXI_awready(M_AXI_awready),
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
        .txp(txp),
        .SLOT_0_AXIS_tdata(SLOT_AXIS_0_tdata),
        .SLOT_0_AXIS_tdest(SLOT_AXIS_0_tdest),
        .SLOT_0_AXIS_tlast(SLOT_AXIS_0_tlast),
        .SLOT_0_AXIS_tready(SLOT_AXIS_0_tready),
        .SLOT_0_AXIS_tvalid(SLOT_AXIS_0_tvalid),
        .SLOT_1_AXIS_tdata(SLOT_AXIS_1_tdata),
        .SLOT_1_AXIS_tdest(SLOT_AXIS_1_tdest),
        .SLOT_1_AXIS_tlast(SLOT_AXIS_1_tlast),
        .SLOT_1_AXIS_tready(SLOT_AXIS_1_tready),
        .SLOT_1_AXIS_tvalid(SLOT_AXIS_1_tvalid),
        .SLOT_2_AXIS_tdata(SLOT_AXIS_2_tdata),
        .SLOT_2_AXIS_tdest(SLOT_AXIS_2_tdest),
        .SLOT_2_AXIS_tlast(SLOT_AXIS_2_tlast),
        .SLOT_2_AXIS_tready(SLOT_AXIS_2_tready),
        .SLOT_2_AXIS_tvalid(SLOT_AXIS_2_tvalid),
        .SLOT_3_AXIS_tdata(SLOT_AXIS_3_tdata),
        .SLOT_3_AXIS_tdest(SLOT_AXIS_3_tdest),
        .SLOT_3_AXIS_tlast(SLOT_AXIS_3_tlast),
        .SLOT_3_AXIS_tready(SLOT_AXIS_3_tready),
        .SLOT_3_AXIS_tvalid(SLOT_AXIS_3_tvalid),
        .SLOT_4_AXIS_tdata(SLOT_AXIS_4_tdata),
        .SLOT_4_AXIS_tdest(SLOT_AXIS_4_tdest),
        .SLOT_4_AXIS_tlast(SLOT_AXIS_4_tlast),
        .SLOT_4_AXIS_tready(SLOT_AXIS_4_tready),
        .SLOT_4_AXIS_tvalid(SLOT_AXIS_4_tvalid),
        .SLOT_5_AXIS_tdata(SLOT_AXIS_5_tdata),
        .SLOT_5_AXIS_tdest(SLOT_AXIS_5_tdest),
        .SLOT_5_AXIS_tlast(SLOT_AXIS_5_tlast),
        .SLOT_5_AXIS_tready(SLOT_AXIS_5_tready),
        .SLOT_5_AXIS_tvalid(SLOT_AXIS_5_tvalid),
        .SLOT_6_AXIS_tdata(SLOT_AXIS_6_tdata),
        .SLOT_6_AXIS_tdest(SLOT_AXIS_6_tdest),
        .SLOT_6_AXIS_tlast(SLOT_AXIS_6_tlast),
        .SLOT_6_AXIS_tready(SLOT_AXIS_6_tready),
        .SLOT_6_AXIS_tvalid(SLOT_AXIS_6_tvalid),
        .SLOT_7_AXIS_tdata(SLOT_AXIS_7_tdata),
        .SLOT_7_AXIS_tdest(SLOT_AXIS_7_tdest),
        .SLOT_7_AXIS_tlast(SLOT_AXIS_7_tlast),
        .SLOT_7_AXIS_tready(SLOT_AXIS_7_tready),
        .SLOT_7_AXIS_tvalid(SLOT_AXIS_7_tvalid),
        .SLOT_8_AXIS_tdata(SLOT_AXIS_8_tdata),
        .SLOT_8_AXIS_tdest(SLOT_AXIS_8_tdest),
        .SLOT_8_AXIS_tlast(SLOT_AXIS_8_tlast),
        .SLOT_8_AXIS_tready(SLOT_AXIS_8_tready),
        .SLOT_8_AXIS_tvalid(SLOT_AXIS_8_tvalid),
        .SLOT_9_AXIS_tdata(SLOT_AXIS_9_tdata),
        .SLOT_9_AXIS_tdest(SLOT_AXIS_9_tdest),
        .SLOT_9_AXIS_tlast(SLOT_AXIS_9_tlast),
        .SLOT_9_AXIS_tready(SLOT_AXIS_9_tready),
        .SLOT_9_AXIS_tvalid(SLOT_AXIS_9_tvalid),
        .SLOT_10_AXIS_tdata(SLOT_AXIS_10_tdata),
        .SLOT_10_AXIS_tdest(SLOT_AXIS_10_tdest),
        .SLOT_10_AXIS_tlast(SLOT_AXIS_10_tlast),
        .SLOT_10_AXIS_tready(SLOT_AXIS_10_tready),
        .SLOT_10_AXIS_tvalid(SLOT_AXIS_10_tvalid),
        .SLOT_11_AXIS_tdata(SLOT_AXIS_11_tdata),
        .SLOT_11_AXIS_tdest(SLOT_AXIS_11_tdest),
        .SLOT_11_AXIS_tlast(SLOT_AXIS_11_tlast),
        .SLOT_11_AXIS_tready(SLOT_AXIS_11_tready),
        .SLOT_11_AXIS_tvalid(SLOT_AXIS_11_tvalid),
        .SLOT_12_AXIS_tdata(SLOT_AXIS_12_tdata),
        .SLOT_12_AXIS_tdest(SLOT_AXIS_12_tdest),
        .SLOT_12_AXIS_tlast(SLOT_AXIS_12_tlast),
        .SLOT_12_AXIS_tready(SLOT_AXIS_12_tready),
        .SLOT_12_AXIS_tvalid(SLOT_AXIS_12_tvalid),
        .SLOT_13_AXIS_tdata(SLOT_AXIS_13_tdata),
        .SLOT_13_AXIS_tdest(SLOT_AXIS_13_tdest),
        .SLOT_13_AXIS_tlast(SLOT_AXIS_13_tlast),
        .SLOT_13_AXIS_tready(SLOT_AXIS_13_tready),
        .SLOT_13_AXIS_tvalid(SLOT_AXIS_13_tvalid),
        .SLOT_14_AXIS_tdata(SLOT_AXIS_14_tdata),
        .SLOT_14_AXIS_tdest(SLOT_AXIS_14_tdest),
        .SLOT_14_AXIS_tlast(SLOT_AXIS_14_tlast),
        .SLOT_14_AXIS_tready(SLOT_AXIS_14_tready),
        .SLOT_14_AXIS_tvalid(SLOT_AXIS_14_tvalid),
        .SLOT_15_AXIS_tdata(SLOT_AXIS_15_tdata),
        .SLOT_15_AXIS_tdest(SLOT_AXIS_15_tdest),
        .SLOT_15_AXIS_tlast(SLOT_AXIS_15_tlast),
        .SLOT_15_AXIS_tready(SLOT_AXIS_15_tready),
        .SLOT_15_AXIS_tvalid(SLOT_AXIS_15_tvalid)
    );

   pr_wrapper pr_wrapper_i
       (.ARESETN(ARESETN),
        .CLK_CONTROL(CLK_CONTROL),
        .CLK_DATA(CLK_DATA),
        .M_AXIS_tdata(S_AXIS_tdata),
        .M_AXIS_tkeep(S_AXIS_tkeep),
        .M_AXIS_tlast(S_AXIS_tlast),
        .M_AXIS_tready(S_AXIS_tready),
        .M_AXIS_tvalid(S_AXIS_tvalid),
        .S_AXIS_tdata(M_AXIS_tdata),
        .S_AXIS_tkeep(M_AXIS_tkeep),
        .S_AXIS_tlast(M_AXIS_tlast),
        .S_AXIS_tready(M_AXIS_tready),
        .S_AXIS_tvalid(M_AXIS_tvalid),
        .S_AXI_araddr(M_AXI_araddr),
        .S_AXI_arburst(M_AXI_arburst),
        .S_AXI_arcache(M_AXI_arcache),
        .S_AXI_arlen(M_AXI_arlen),
        .S_AXI_arlock(M_AXI_arlock),
        .S_AXI_arprot(M_AXI_arprot),
        .S_AXI_arready(M_AXI_arready),
        .S_AXI_arsize(M_AXI_arsize),
        .S_AXI_arvalid(M_AXI_arvalid),
        .S_AXI_awaddr(M_AXI_awaddr),
        .S_AXI_awburst(M_AXI_awburst),
        .S_AXI_awcache(M_AXI_awcache),
        .S_AXI_awlen(M_AXI_awlen),
        .S_AXI_awlock(M_AXI_awlock),
        .S_AXI_awprot(M_AXI_awprot),
        .S_AXI_awready(M_AXI_awready),
        .S_AXI_awsize(M_AXI_awsize),
        .S_AXI_awvalid(M_AXI_awvalid),
        .S_AXI_bready(M_AXI_bready),
        .S_AXI_bresp(M_AXI_bresp),
        .S_AXI_bvalid(M_AXI_bvalid),
        .S_AXI_rdata(M_AXI_rdata),
        .S_AXI_rlast(M_AXI_rlast),
        .S_AXI_rready(M_AXI_rready),
        .S_AXI_rresp(M_AXI_rresp),
        .S_AXI_rvalid(M_AXI_rvalid),
        .S_AXI_wdata(M_AXI_wdata),
        .S_AXI_wlast(M_AXI_wlast),
        .S_AXI_wready(M_AXI_wready),
        .S_AXI_wstrb(M_AXI_wstrb),
        .S_AXI_wvalid(M_AXI_wvalid),
        .SLOT_AXIS_0_tdata(SLOT_AXIS_0_tdata),
        .SLOT_AXIS_0_tdest(SLOT_AXIS_0_tdest),
        .SLOT_AXIS_0_tlast(SLOT_AXIS_0_tlast),
        .SLOT_AXIS_0_tready(SLOT_AXIS_0_tready),
        .SLOT_AXIS_0_tvalid(SLOT_AXIS_0_tvalid),
        .SLOT_AXIS_1_tdata(SLOT_AXIS_1_tdata),
        .SLOT_AXIS_1_tdest(SLOT_AXIS_1_tdest),
        .SLOT_AXIS_1_tlast(SLOT_AXIS_1_tlast),
        .SLOT_AXIS_1_tready(SLOT_AXIS_1_tready),
        .SLOT_AXIS_1_tvalid(SLOT_AXIS_1_tvalid),
        .SLOT_AXIS_2_tdata(SLOT_AXIS_2_tdata),
        .SLOT_AXIS_2_tdest(SLOT_AXIS_2_tdest),
        .SLOT_AXIS_2_tlast(SLOT_AXIS_2_tlast),
        .SLOT_AXIS_2_tready(SLOT_AXIS_2_tready),
        .SLOT_AXIS_2_tvalid(SLOT_AXIS_2_tvalid),
        .SLOT_AXIS_3_tdata(SLOT_AXIS_3_tdata),
        .SLOT_AXIS_3_tdest(SLOT_AXIS_3_tdest),
        .SLOT_AXIS_3_tlast(SLOT_AXIS_3_tlast),
        .SLOT_AXIS_3_tready(SLOT_AXIS_3_tready),
        .SLOT_AXIS_3_tvalid(SLOT_AXIS_3_tvalid),
        .SLOT_AXIS_4_tdata(SLOT_AXIS_4_tdata),
        .SLOT_AXIS_4_tdest(SLOT_AXIS_4_tdest),
        .SLOT_AXIS_4_tlast(SLOT_AXIS_4_tlast),
        .SLOT_AXIS_4_tready(SLOT_AXIS_4_tready),
        .SLOT_AXIS_4_tvalid(SLOT_AXIS_4_tvalid),
        .SLOT_AXIS_5_tdata(SLOT_AXIS_5_tdata),
        .SLOT_AXIS_5_tdest(SLOT_AXIS_5_tdest),
        .SLOT_AXIS_5_tlast(SLOT_AXIS_5_tlast),
        .SLOT_AXIS_5_tready(SLOT_AXIS_5_tready),
        .SLOT_AXIS_5_tvalid(SLOT_AXIS_5_tvalid),
        .SLOT_AXIS_6_tdata(SLOT_AXIS_6_tdata),
        .SLOT_AXIS_6_tdest(SLOT_AXIS_6_tdest),
        .SLOT_AXIS_6_tlast(SLOT_AXIS_6_tlast),
        .SLOT_AXIS_6_tready(SLOT_AXIS_6_tready),
        .SLOT_AXIS_6_tvalid(SLOT_AXIS_6_tvalid),
        .SLOT_AXIS_7_tdata(SLOT_AXIS_7_tdata),
        .SLOT_AXIS_7_tdest(SLOT_AXIS_7_tdest),
        .SLOT_AXIS_7_tlast(SLOT_AXIS_7_tlast),
        .SLOT_AXIS_7_tready(SLOT_AXIS_7_tready),
        .SLOT_AXIS_7_tvalid(SLOT_AXIS_7_tvalid),
        .SLOT_AXIS_8_tdata(SLOT_AXIS_8_tdata),
        .SLOT_AXIS_8_tdest(SLOT_AXIS_8_tdest),
        .SLOT_AXIS_8_tlast(SLOT_AXIS_8_tlast),
        .SLOT_AXIS_8_tready(SLOT_AXIS_8_tready),
        .SLOT_AXIS_8_tvalid(SLOT_AXIS_8_tvalid),
        .SLOT_AXIS_9_tdata(SLOT_AXIS_9_tdata),
        .SLOT_AXIS_9_tdest(SLOT_AXIS_9_tdest),
        .SLOT_AXIS_9_tlast(SLOT_AXIS_9_tlast),
        .SLOT_AXIS_9_tready(SLOT_AXIS_9_tready),
        .SLOT_AXIS_9_tvalid(SLOT_AXIS_9_tvalid),
        .SLOT_AXIS_10_tdata(SLOT_AXIS_10_tdata),
        .SLOT_AXIS_10_tdest(SLOT_AXIS_10_tdest),
        .SLOT_AXIS_10_tlast(SLOT_AXIS_10_tlast),
        .SLOT_AXIS_10_tready(SLOT_AXIS_10_tready),
        .SLOT_AXIS_10_tvalid(SLOT_AXIS_10_tvalid),
        .SLOT_AXIS_11_tdata(SLOT_AXIS_11_tdata),
        .SLOT_AXIS_11_tdest(SLOT_AXIS_11_tdest),
        .SLOT_AXIS_11_tlast(SLOT_AXIS_11_tlast),
        .SLOT_AXIS_11_tready(SLOT_AXIS_11_tready),
        .SLOT_AXIS_11_tvalid(SLOT_AXIS_11_tvalid),
        .SLOT_AXIS_12_tdata(SLOT_AXIS_12_tdata),
        .SLOT_AXIS_12_tdest(SLOT_AXIS_12_tdest),
        .SLOT_AXIS_12_tlast(SLOT_AXIS_12_tlast),
        .SLOT_AXIS_12_tready(SLOT_AXIS_12_tready),
        .SLOT_AXIS_12_tvalid(SLOT_AXIS_12_tvalid),
        .SLOT_AXIS_13_tdata(SLOT_AXIS_13_tdata),
        .SLOT_AXIS_13_tdest(SLOT_AXIS_13_tdest),
        .SLOT_AXIS_13_tlast(SLOT_AXIS_13_tlast),
        .SLOT_AXIS_13_tready(SLOT_AXIS_13_tready),
        .SLOT_AXIS_13_tvalid(SLOT_AXIS_13_tvalid),
        .SLOT_AXIS_14_tdata(SLOT_AXIS_14_tdata),
        .SLOT_AXIS_14_tdest(SLOT_AXIS_14_tdest),
        .SLOT_AXIS_14_tlast(SLOT_AXIS_14_tlast),
        .SLOT_AXIS_14_tready(SLOT_AXIS_14_tready),
        .SLOT_AXIS_14_tvalid(SLOT_AXIS_14_tvalid),
        .SLOT_AXIS_15_tdata(SLOT_AXIS_15_tdata),
        .SLOT_AXIS_15_tdest(SLOT_AXIS_15_tdest),
        .SLOT_AXIS_15_tlast(SLOT_AXIS_15_tlast),
        .SLOT_AXIS_15_tready(SLOT_AXIS_15_tready),
        .SLOT_AXIS_15_tvalid(SLOT_AXIS_15_tvalid)
    );
endmodule

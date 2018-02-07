//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Wed Feb  7 13:15:02 2018
//Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target pr_wrapper.bd
//Design      : pr_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pr_wrapper
   (ARESETN,
    CLK_CONTROL,
    CLK_DATA,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    SLOT_AXIS_0_tdata,
    SLOT_AXIS_0_tdest,
    SLOT_AXIS_0_tkeep,
    SLOT_AXIS_0_tlast,
    SLOT_AXIS_0_tready,
    SLOT_AXIS_0_tvalid,
    SLOT_AXIS_10_tdata,
    SLOT_AXIS_10_tdest,
    SLOT_AXIS_10_tkeep,
    SLOT_AXIS_10_tlast,
    SLOT_AXIS_10_tready,
    SLOT_AXIS_10_tvalid,
    SLOT_AXIS_11_tdata,
    SLOT_AXIS_11_tdest,
    SLOT_AXIS_11_tkeep,
    SLOT_AXIS_11_tlast,
    SLOT_AXIS_11_tready,
    SLOT_AXIS_11_tvalid,
    SLOT_AXIS_12_tdata,
    SLOT_AXIS_12_tdest,
    SLOT_AXIS_12_tkeep,
    SLOT_AXIS_12_tlast,
    SLOT_AXIS_12_tready,
    SLOT_AXIS_12_tvalid,
    SLOT_AXIS_13_tdata,
    SLOT_AXIS_13_tdest,
    SLOT_AXIS_13_tkeep,
    SLOT_AXIS_13_tlast,
    SLOT_AXIS_13_tready,
    SLOT_AXIS_13_tvalid,
    SLOT_AXIS_14_tdata,
    SLOT_AXIS_14_tdest,
    SLOT_AXIS_14_tkeep,
    SLOT_AXIS_14_tlast,
    SLOT_AXIS_14_tready,
    SLOT_AXIS_14_tvalid,
    SLOT_AXIS_15_tdata,
    SLOT_AXIS_15_tdest,
    SLOT_AXIS_15_tkeep,
    SLOT_AXIS_15_tlast,
    SLOT_AXIS_15_tready,
    SLOT_AXIS_15_tvalid,
    SLOT_AXIS_1_tdata,
    SLOT_AXIS_1_tdest,
    SLOT_AXIS_1_tkeep,
    SLOT_AXIS_1_tlast,
    SLOT_AXIS_1_tready,
    SLOT_AXIS_1_tvalid,
    SLOT_AXIS_2_tdata,
    SLOT_AXIS_2_tdest,
    SLOT_AXIS_2_tkeep,
    SLOT_AXIS_2_tlast,
    SLOT_AXIS_2_tready,
    SLOT_AXIS_2_tvalid,
    SLOT_AXIS_3_tdata,
    SLOT_AXIS_3_tdest,
    SLOT_AXIS_3_tkeep,
    SLOT_AXIS_3_tlast,
    SLOT_AXIS_3_tready,
    SLOT_AXIS_3_tvalid,
    SLOT_AXIS_4_tdata,
    SLOT_AXIS_4_tdest,
    SLOT_AXIS_4_tkeep,
    SLOT_AXIS_4_tlast,
    SLOT_AXIS_4_tready,
    SLOT_AXIS_4_tvalid,
    SLOT_AXIS_5_tdata,
    SLOT_AXIS_5_tdest,
    SLOT_AXIS_5_tkeep,
    SLOT_AXIS_5_tlast,
    SLOT_AXIS_5_tready,
    SLOT_AXIS_5_tvalid,
    SLOT_AXIS_6_tdata,
    SLOT_AXIS_6_tdest,
    SLOT_AXIS_6_tkeep,
    SLOT_AXIS_6_tlast,
    SLOT_AXIS_6_tready,
    SLOT_AXIS_6_tvalid,
    SLOT_AXIS_7_tdata,
    SLOT_AXIS_7_tdest,
    SLOT_AXIS_7_tkeep,
    SLOT_AXIS_7_tlast,
    SLOT_AXIS_7_tready,
    SLOT_AXIS_7_tvalid,
    SLOT_AXIS_8_tdata,
    SLOT_AXIS_8_tdest,
    SLOT_AXIS_8_tkeep,
    SLOT_AXIS_8_tlast,
    SLOT_AXIS_8_tready,
    SLOT_AXIS_8_tvalid,
    SLOT_AXIS_9_tdata,
    SLOT_AXIS_9_tdest,
    SLOT_AXIS_9_tkeep,
    SLOT_AXIS_9_tlast,
    SLOT_AXIS_9_tready,
    SLOT_AXIS_9_tvalid,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input ARESETN;
  input CLK_CONTROL;
  input CLK_DATA;
  output [63:0]M_AXIS_tdata;
  output [15:0]M_AXIS_tdest;
  output [7:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  output [63:0]SLOT_AXIS_0_tdata;
  output [15:0]SLOT_AXIS_0_tdest;
  output [7:0]SLOT_AXIS_0_tkeep;
  output SLOT_AXIS_0_tlast;
  input SLOT_AXIS_0_tready;
  output SLOT_AXIS_0_tvalid;
  output [63:0]SLOT_AXIS_10_tdata;
  output [15:0]SLOT_AXIS_10_tdest;
  output [7:0]SLOT_AXIS_10_tkeep;
  output SLOT_AXIS_10_tlast;
  input SLOT_AXIS_10_tready;
  output SLOT_AXIS_10_tvalid;
  output [63:0]SLOT_AXIS_11_tdata;
  output [15:0]SLOT_AXIS_11_tdest;
  output [7:0]SLOT_AXIS_11_tkeep;
  output SLOT_AXIS_11_tlast;
  input SLOT_AXIS_11_tready;
  output SLOT_AXIS_11_tvalid;
  output [63:0]SLOT_AXIS_12_tdata;
  output [15:0]SLOT_AXIS_12_tdest;
  output [7:0]SLOT_AXIS_12_tkeep;
  output SLOT_AXIS_12_tlast;
  input SLOT_AXIS_12_tready;
  output SLOT_AXIS_12_tvalid;
  output [63:0]SLOT_AXIS_13_tdata;
  output [15:0]SLOT_AXIS_13_tdest;
  output [7:0]SLOT_AXIS_13_tkeep;
  output SLOT_AXIS_13_tlast;
  input SLOT_AXIS_13_tready;
  output SLOT_AXIS_13_tvalid;
  output [63:0]SLOT_AXIS_14_tdata;
  output [15:0]SLOT_AXIS_14_tdest;
  output [7:0]SLOT_AXIS_14_tkeep;
  output SLOT_AXIS_14_tlast;
  input SLOT_AXIS_14_tready;
  output SLOT_AXIS_14_tvalid;
  output [63:0]SLOT_AXIS_15_tdata;
  output [15:0]SLOT_AXIS_15_tdest;
  output [7:0]SLOT_AXIS_15_tkeep;
  output SLOT_AXIS_15_tlast;
  input SLOT_AXIS_15_tready;
  output SLOT_AXIS_15_tvalid;
  output [63:0]SLOT_AXIS_1_tdata;
  output [15:0]SLOT_AXIS_1_tdest;
  output [7:0]SLOT_AXIS_1_tkeep;
  output SLOT_AXIS_1_tlast;
  input SLOT_AXIS_1_tready;
  output SLOT_AXIS_1_tvalid;
  output [63:0]SLOT_AXIS_2_tdata;
  output [15:0]SLOT_AXIS_2_tdest;
  output [7:0]SLOT_AXIS_2_tkeep;
  output SLOT_AXIS_2_tlast;
  input SLOT_AXIS_2_tready;
  output SLOT_AXIS_2_tvalid;
  output [63:0]SLOT_AXIS_3_tdata;
  output [15:0]SLOT_AXIS_3_tdest;
  output [7:0]SLOT_AXIS_3_tkeep;
  output SLOT_AXIS_3_tlast;
  input SLOT_AXIS_3_tready;
  output SLOT_AXIS_3_tvalid;
  output [63:0]SLOT_AXIS_4_tdata;
  output [15:0]SLOT_AXIS_4_tdest;
  output [7:0]SLOT_AXIS_4_tkeep;
  output SLOT_AXIS_4_tlast;
  input SLOT_AXIS_4_tready;
  output SLOT_AXIS_4_tvalid;
  output [63:0]SLOT_AXIS_5_tdata;
  output [15:0]SLOT_AXIS_5_tdest;
  output [7:0]SLOT_AXIS_5_tkeep;
  output SLOT_AXIS_5_tlast;
  input SLOT_AXIS_5_tready;
  output SLOT_AXIS_5_tvalid;
  output [63:0]SLOT_AXIS_6_tdata;
  output [15:0]SLOT_AXIS_6_tdest;
  output [7:0]SLOT_AXIS_6_tkeep;
  output SLOT_AXIS_6_tlast;
  input SLOT_AXIS_6_tready;
  output SLOT_AXIS_6_tvalid;
  output [63:0]SLOT_AXIS_7_tdata;
  output [15:0]SLOT_AXIS_7_tdest;
  output [7:0]SLOT_AXIS_7_tkeep;
  output SLOT_AXIS_7_tlast;
  input SLOT_AXIS_7_tready;
  output SLOT_AXIS_7_tvalid;
  output [63:0]SLOT_AXIS_8_tdata;
  output [15:0]SLOT_AXIS_8_tdest;
  output [7:0]SLOT_AXIS_8_tkeep;
  output SLOT_AXIS_8_tlast;
  input SLOT_AXIS_8_tready;
  output SLOT_AXIS_8_tvalid;
  output [63:0]SLOT_AXIS_9_tdata;
  output [15:0]SLOT_AXIS_9_tdest;
  output [7:0]SLOT_AXIS_9_tkeep;
  output SLOT_AXIS_9_tlast;
  input SLOT_AXIS_9_tready;
  output SLOT_AXIS_9_tvalid;
  input [63:0]S_AXIS_tdata;
  input [15:0]S_AXIS_tdest;
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

  wire ARESETN;
  wire CLK_CONTROL;
  wire CLK_DATA;
  wire [63:0]M_AXIS_tdata;
  wire [15:0]M_AXIS_tdest;
  wire [7:0]M_AXIS_tkeep;
  wire M_AXIS_tlast;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire [63:0]SLOT_AXIS_0_tdata;
  wire [15:0]SLOT_AXIS_0_tdest;
  wire [7:0]SLOT_AXIS_0_tkeep;
  wire SLOT_AXIS_0_tlast;
  wire SLOT_AXIS_0_tready;
  wire SLOT_AXIS_0_tvalid;
  wire [63:0]SLOT_AXIS_10_tdata;
  wire [15:0]SLOT_AXIS_10_tdest;
  wire [7:0]SLOT_AXIS_10_tkeep;
  wire SLOT_AXIS_10_tlast;
  wire SLOT_AXIS_10_tready;
  wire SLOT_AXIS_10_tvalid;
  wire [63:0]SLOT_AXIS_11_tdata;
  wire [15:0]SLOT_AXIS_11_tdest;
  wire [7:0]SLOT_AXIS_11_tkeep;
  wire SLOT_AXIS_11_tlast;
  wire SLOT_AXIS_11_tready;
  wire SLOT_AXIS_11_tvalid;
  wire [63:0]SLOT_AXIS_12_tdata;
  wire [15:0]SLOT_AXIS_12_tdest;
  wire [7:0]SLOT_AXIS_12_tkeep;
  wire SLOT_AXIS_12_tlast;
  wire SLOT_AXIS_12_tready;
  wire SLOT_AXIS_12_tvalid;
  wire [63:0]SLOT_AXIS_13_tdata;
  wire [15:0]SLOT_AXIS_13_tdest;
  wire [7:0]SLOT_AXIS_13_tkeep;
  wire SLOT_AXIS_13_tlast;
  wire SLOT_AXIS_13_tready;
  wire SLOT_AXIS_13_tvalid;
  wire [63:0]SLOT_AXIS_14_tdata;
  wire [15:0]SLOT_AXIS_14_tdest;
  wire [7:0]SLOT_AXIS_14_tkeep;
  wire SLOT_AXIS_14_tlast;
  wire SLOT_AXIS_14_tready;
  wire SLOT_AXIS_14_tvalid;
  wire [63:0]SLOT_AXIS_15_tdata;
  wire [15:0]SLOT_AXIS_15_tdest;
  wire [7:0]SLOT_AXIS_15_tkeep;
  wire SLOT_AXIS_15_tlast;
  wire SLOT_AXIS_15_tready;
  wire SLOT_AXIS_15_tvalid;
  wire [63:0]SLOT_AXIS_1_tdata;
  wire [15:0]SLOT_AXIS_1_tdest;
  wire [7:0]SLOT_AXIS_1_tkeep;
  wire SLOT_AXIS_1_tlast;
  wire SLOT_AXIS_1_tready;
  wire SLOT_AXIS_1_tvalid;
  wire [63:0]SLOT_AXIS_2_tdata;
  wire [15:0]SLOT_AXIS_2_tdest;
  wire [7:0]SLOT_AXIS_2_tkeep;
  wire SLOT_AXIS_2_tlast;
  wire SLOT_AXIS_2_tready;
  wire SLOT_AXIS_2_tvalid;
  wire [63:0]SLOT_AXIS_3_tdata;
  wire [15:0]SLOT_AXIS_3_tdest;
  wire [7:0]SLOT_AXIS_3_tkeep;
  wire SLOT_AXIS_3_tlast;
  wire SLOT_AXIS_3_tready;
  wire SLOT_AXIS_3_tvalid;
  wire [63:0]SLOT_AXIS_4_tdata;
  wire [15:0]SLOT_AXIS_4_tdest;
  wire [7:0]SLOT_AXIS_4_tkeep;
  wire SLOT_AXIS_4_tlast;
  wire SLOT_AXIS_4_tready;
  wire SLOT_AXIS_4_tvalid;
  wire [63:0]SLOT_AXIS_5_tdata;
  wire [15:0]SLOT_AXIS_5_tdest;
  wire [7:0]SLOT_AXIS_5_tkeep;
  wire SLOT_AXIS_5_tlast;
  wire SLOT_AXIS_5_tready;
  wire SLOT_AXIS_5_tvalid;
  wire [63:0]SLOT_AXIS_6_tdata;
  wire [15:0]SLOT_AXIS_6_tdest;
  wire [7:0]SLOT_AXIS_6_tkeep;
  wire SLOT_AXIS_6_tlast;
  wire SLOT_AXIS_6_tready;
  wire SLOT_AXIS_6_tvalid;
  wire [63:0]SLOT_AXIS_7_tdata;
  wire [15:0]SLOT_AXIS_7_tdest;
  wire [7:0]SLOT_AXIS_7_tkeep;
  wire SLOT_AXIS_7_tlast;
  wire SLOT_AXIS_7_tready;
  wire SLOT_AXIS_7_tvalid;
  wire [63:0]SLOT_AXIS_8_tdata;
  wire [15:0]SLOT_AXIS_8_tdest;
  wire [7:0]SLOT_AXIS_8_tkeep;
  wire SLOT_AXIS_8_tlast;
  wire SLOT_AXIS_8_tready;
  wire SLOT_AXIS_8_tvalid;
  wire [63:0]SLOT_AXIS_9_tdata;
  wire [15:0]SLOT_AXIS_9_tdest;
  wire [7:0]SLOT_AXIS_9_tkeep;
  wire SLOT_AXIS_9_tlast;
  wire SLOT_AXIS_9_tready;
  wire SLOT_AXIS_9_tvalid;
  wire [63:0]S_AXIS_tdata;
  wire [15:0]S_AXIS_tdest;
  wire [7:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire S_AXIS_tready;
  wire S_AXIS_tvalid;
  wire [15:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [7:0]S_AXI_arlen;
  wire S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire S_AXI_arready;
  wire [2:0]S_AXI_arsize;
  wire S_AXI_arvalid;
  wire [15:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [7:0]S_AXI_awlen;
  wire S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [63:0]S_AXI_rdata;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [63:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [7:0]S_AXI_wstrb;
  wire S_AXI_wvalid;

  pr pr_i
       (.ARESETN(ARESETN),
        .CLK_CONTROL(CLK_CONTROL),
        .CLK_DATA(CLK_DATA),
        .M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tdest(M_AXIS_tdest),
        .M_AXIS_tkeep(M_AXIS_tkeep),
        .M_AXIS_tlast(M_AXIS_tlast),
        .M_AXIS_tready(M_AXIS_tready),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .SLOT_AXIS_0_tdata(SLOT_AXIS_0_tdata),
        .SLOT_AXIS_0_tdest(SLOT_AXIS_0_tdest),
        .SLOT_AXIS_0_tkeep(SLOT_AXIS_0_tkeep),
        .SLOT_AXIS_0_tlast(SLOT_AXIS_0_tlast),
        .SLOT_AXIS_0_tready(SLOT_AXIS_0_tready),
        .SLOT_AXIS_0_tvalid(SLOT_AXIS_0_tvalid),
        .SLOT_AXIS_10_tdata(SLOT_AXIS_10_tdata),
        .SLOT_AXIS_10_tdest(SLOT_AXIS_10_tdest),
        .SLOT_AXIS_10_tkeep(SLOT_AXIS_10_tkeep),
        .SLOT_AXIS_10_tlast(SLOT_AXIS_10_tlast),
        .SLOT_AXIS_10_tready(SLOT_AXIS_10_tready),
        .SLOT_AXIS_10_tvalid(SLOT_AXIS_10_tvalid),
        .SLOT_AXIS_11_tdata(SLOT_AXIS_11_tdata),
        .SLOT_AXIS_11_tdest(SLOT_AXIS_11_tdest),
        .SLOT_AXIS_11_tkeep(SLOT_AXIS_11_tkeep),
        .SLOT_AXIS_11_tlast(SLOT_AXIS_11_tlast),
        .SLOT_AXIS_11_tready(SLOT_AXIS_11_tready),
        .SLOT_AXIS_11_tvalid(SLOT_AXIS_11_tvalid),
        .SLOT_AXIS_12_tdata(SLOT_AXIS_12_tdata),
        .SLOT_AXIS_12_tdest(SLOT_AXIS_12_tdest),
        .SLOT_AXIS_12_tkeep(SLOT_AXIS_12_tkeep),
        .SLOT_AXIS_12_tlast(SLOT_AXIS_12_tlast),
        .SLOT_AXIS_12_tready(SLOT_AXIS_12_tready),
        .SLOT_AXIS_12_tvalid(SLOT_AXIS_12_tvalid),
        .SLOT_AXIS_13_tdata(SLOT_AXIS_13_tdata),
        .SLOT_AXIS_13_tdest(SLOT_AXIS_13_tdest),
        .SLOT_AXIS_13_tkeep(SLOT_AXIS_13_tkeep),
        .SLOT_AXIS_13_tlast(SLOT_AXIS_13_tlast),
        .SLOT_AXIS_13_tready(SLOT_AXIS_13_tready),
        .SLOT_AXIS_13_tvalid(SLOT_AXIS_13_tvalid),
        .SLOT_AXIS_14_tdata(SLOT_AXIS_14_tdata),
        .SLOT_AXIS_14_tdest(SLOT_AXIS_14_tdest),
        .SLOT_AXIS_14_tkeep(SLOT_AXIS_14_tkeep),
        .SLOT_AXIS_14_tlast(SLOT_AXIS_14_tlast),
        .SLOT_AXIS_14_tready(SLOT_AXIS_14_tready),
        .SLOT_AXIS_14_tvalid(SLOT_AXIS_14_tvalid),
        .SLOT_AXIS_15_tdata(SLOT_AXIS_15_tdata),
        .SLOT_AXIS_15_tdest(SLOT_AXIS_15_tdest),
        .SLOT_AXIS_15_tkeep(SLOT_AXIS_15_tkeep),
        .SLOT_AXIS_15_tlast(SLOT_AXIS_15_tlast),
        .SLOT_AXIS_15_tready(SLOT_AXIS_15_tready),
        .SLOT_AXIS_15_tvalid(SLOT_AXIS_15_tvalid),
        .SLOT_AXIS_1_tdata(SLOT_AXIS_1_tdata),
        .SLOT_AXIS_1_tdest(SLOT_AXIS_1_tdest),
        .SLOT_AXIS_1_tkeep(SLOT_AXIS_1_tkeep),
        .SLOT_AXIS_1_tlast(SLOT_AXIS_1_tlast),
        .SLOT_AXIS_1_tready(SLOT_AXIS_1_tready),
        .SLOT_AXIS_1_tvalid(SLOT_AXIS_1_tvalid),
        .SLOT_AXIS_2_tdata(SLOT_AXIS_2_tdata),
        .SLOT_AXIS_2_tdest(SLOT_AXIS_2_tdest),
        .SLOT_AXIS_2_tkeep(SLOT_AXIS_2_tkeep),
        .SLOT_AXIS_2_tlast(SLOT_AXIS_2_tlast),
        .SLOT_AXIS_2_tready(SLOT_AXIS_2_tready),
        .SLOT_AXIS_2_tvalid(SLOT_AXIS_2_tvalid),
        .SLOT_AXIS_3_tdata(SLOT_AXIS_3_tdata),
        .SLOT_AXIS_3_tdest(SLOT_AXIS_3_tdest),
        .SLOT_AXIS_3_tkeep(SLOT_AXIS_3_tkeep),
        .SLOT_AXIS_3_tlast(SLOT_AXIS_3_tlast),
        .SLOT_AXIS_3_tready(SLOT_AXIS_3_tready),
        .SLOT_AXIS_3_tvalid(SLOT_AXIS_3_tvalid),
        .SLOT_AXIS_4_tdata(SLOT_AXIS_4_tdata),
        .SLOT_AXIS_4_tdest(SLOT_AXIS_4_tdest),
        .SLOT_AXIS_4_tkeep(SLOT_AXIS_4_tkeep),
        .SLOT_AXIS_4_tlast(SLOT_AXIS_4_tlast),
        .SLOT_AXIS_4_tready(SLOT_AXIS_4_tready),
        .SLOT_AXIS_4_tvalid(SLOT_AXIS_4_tvalid),
        .SLOT_AXIS_5_tdata(SLOT_AXIS_5_tdata),
        .SLOT_AXIS_5_tdest(SLOT_AXIS_5_tdest),
        .SLOT_AXIS_5_tkeep(SLOT_AXIS_5_tkeep),
        .SLOT_AXIS_5_tlast(SLOT_AXIS_5_tlast),
        .SLOT_AXIS_5_tready(SLOT_AXIS_5_tready),
        .SLOT_AXIS_5_tvalid(SLOT_AXIS_5_tvalid),
        .SLOT_AXIS_6_tdata(SLOT_AXIS_6_tdata),
        .SLOT_AXIS_6_tdest(SLOT_AXIS_6_tdest),
        .SLOT_AXIS_6_tkeep(SLOT_AXIS_6_tkeep),
        .SLOT_AXIS_6_tlast(SLOT_AXIS_6_tlast),
        .SLOT_AXIS_6_tready(SLOT_AXIS_6_tready),
        .SLOT_AXIS_6_tvalid(SLOT_AXIS_6_tvalid),
        .SLOT_AXIS_7_tdata(SLOT_AXIS_7_tdata),
        .SLOT_AXIS_7_tdest(SLOT_AXIS_7_tdest),
        .SLOT_AXIS_7_tkeep(SLOT_AXIS_7_tkeep),
        .SLOT_AXIS_7_tlast(SLOT_AXIS_7_tlast),
        .SLOT_AXIS_7_tready(SLOT_AXIS_7_tready),
        .SLOT_AXIS_7_tvalid(SLOT_AXIS_7_tvalid),
        .SLOT_AXIS_8_tdata(SLOT_AXIS_8_tdata),
        .SLOT_AXIS_8_tdest(SLOT_AXIS_8_tdest),
        .SLOT_AXIS_8_tkeep(SLOT_AXIS_8_tkeep),
        .SLOT_AXIS_8_tlast(SLOT_AXIS_8_tlast),
        .SLOT_AXIS_8_tready(SLOT_AXIS_8_tready),
        .SLOT_AXIS_8_tvalid(SLOT_AXIS_8_tvalid),
        .SLOT_AXIS_9_tdata(SLOT_AXIS_9_tdata),
        .SLOT_AXIS_9_tdest(SLOT_AXIS_9_tdest),
        .SLOT_AXIS_9_tkeep(SLOT_AXIS_9_tkeep),
        .SLOT_AXIS_9_tlast(SLOT_AXIS_9_tlast),
        .SLOT_AXIS_9_tready(SLOT_AXIS_9_tready),
        .SLOT_AXIS_9_tvalid(SLOT_AXIS_9_tvalid),
        .S_AXIS_tdata(S_AXIS_tdata),
        .S_AXIS_tdest(S_AXIS_tdest),
        .S_AXIS_tkeep(S_AXIS_tkeep),
        .S_AXIS_tlast(S_AXIS_tlast),
        .S_AXIS_tready(S_AXIS_tready),
        .S_AXIS_tvalid(S_AXIS_tvalid),
        .S_AXI_araddr(S_AXI_araddr),
        .S_AXI_arburst(S_AXI_arburst),
        .S_AXI_arcache(S_AXI_arcache),
        .S_AXI_arlen(S_AXI_arlen),
        .S_AXI_arlock(S_AXI_arlock),
        .S_AXI_arprot(S_AXI_arprot),
        .S_AXI_arready(S_AXI_arready),
        .S_AXI_arsize(S_AXI_arsize),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr),
        .S_AXI_awburst(S_AXI_awburst),
        .S_AXI_awcache(S_AXI_awcache),
        .S_AXI_awlen(S_AXI_awlen),
        .S_AXI_awlock(S_AXI_awlock),
        .S_AXI_awprot(S_AXI_awprot),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awsize(S_AXI_awsize),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(S_AXI_bresp),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .S_AXI_rlast(S_AXI_rlast),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rresp(S_AXI_rresp),
        .S_AXI_rvalid(S_AXI_rvalid),
        .S_AXI_wdata(S_AXI_wdata),
        .S_AXI_wlast(S_AXI_wlast),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wstrb(S_AXI_wstrb),
        .S_AXI_wvalid(S_AXI_wvalid));
endmodule

//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : Mar 19, 2018
//===============================
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
  (* keep = "true" *) input ARESETN;
  (* keep = "true" *) input CLK_CONTROL;
  (* keep = "true" *) input CLK_DATA;
  (* keep = "true" *) output [63:0]M_AXIS_tdata;
  (* keep = "true" *) output [7:0]M_AXIS_tdest;
  (* keep = "true" *) output [7:0]M_AXIS_tkeep;
  (* keep = "true" *) output M_AXIS_tlast;
  (* keep = "true" *) input M_AXIS_tready;
  (* keep = "true" *) output M_AXIS_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_0_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_0_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_0_tkeep;
  (* keep = "true" *) output SLOT_AXIS_0_tlast;
  (* keep = "true" *) input SLOT_AXIS_0_tready;
  (* keep = "true" *) output SLOT_AXIS_0_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_10_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_10_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_10_tkeep;
  (* keep = "true" *) output SLOT_AXIS_10_tlast;
  (* keep = "true" *) input SLOT_AXIS_10_tready;
  (* keep = "true" *) output SLOT_AXIS_10_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_11_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_11_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_11_tkeep;
  (* keep = "true" *) output SLOT_AXIS_11_tlast;
  (* keep = "true" *) input SLOT_AXIS_11_tready;
  (* keep = "true" *) output SLOT_AXIS_11_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_12_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_12_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_12_tkeep;
  (* keep = "true" *) output SLOT_AXIS_12_tlast;
  (* keep = "true" *) input SLOT_AXIS_12_tready;
  (* keep = "true" *) output SLOT_AXIS_12_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_13_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_13_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_13_tkeep;
  (* keep = "true" *) output SLOT_AXIS_13_tlast;
  (* keep = "true" *) input SLOT_AXIS_13_tready;
  (* keep = "true" *) output SLOT_AXIS_13_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_14_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_14_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_14_tkeep;
  (* keep = "true" *) output SLOT_AXIS_14_tlast;
  (* keep = "true" *) input SLOT_AXIS_14_tready;
  (* keep = "true" *) output SLOT_AXIS_14_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_15_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_15_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_15_tkeep;
  (* keep = "true" *) output SLOT_AXIS_15_tlast;
  (* keep = "true" *) input SLOT_AXIS_15_tready;
  (* keep = "true" *) output SLOT_AXIS_15_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_1_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_1_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_1_tkeep;
  (* keep = "true" *) output SLOT_AXIS_1_tlast;
  (* keep = "true" *) input SLOT_AXIS_1_tready;
  (* keep = "true" *) output SLOT_AXIS_1_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_2_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_2_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_2_tkeep;
  (* keep = "true" *) output SLOT_AXIS_2_tlast;
  (* keep = "true" *) input SLOT_AXIS_2_tready;
  (* keep = "true" *) output SLOT_AXIS_2_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_3_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_3_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_3_tkeep;
  (* keep = "true" *) output SLOT_AXIS_3_tlast;
  (* keep = "true" *) input SLOT_AXIS_3_tready;
  (* keep = "true" *) output SLOT_AXIS_3_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_4_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_4_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_4_tkeep;
  (* keep = "true" *) output SLOT_AXIS_4_tlast;
  (* keep = "true" *) input SLOT_AXIS_4_tready;
  (* keep = "true" *) output SLOT_AXIS_4_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_5_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_5_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_5_tkeep;
  (* keep = "true" *) output SLOT_AXIS_5_tlast;
  (* keep = "true" *) input SLOT_AXIS_5_tready;
  (* keep = "true" *) output SLOT_AXIS_5_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_6_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_6_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_6_tkeep;
  (* keep = "true" *) output SLOT_AXIS_6_tlast;
  (* keep = "true" *) input SLOT_AXIS_6_tready;
  (* keep = "true" *) output SLOT_AXIS_6_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_7_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_7_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_7_tkeep;
  (* keep = "true" *) output SLOT_AXIS_7_tlast;
  (* keep = "true" *) input SLOT_AXIS_7_tready;
  (* keep = "true" *) output SLOT_AXIS_7_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_8_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_8_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_8_tkeep;
  (* keep = "true" *) output SLOT_AXIS_8_tlast;
  (* keep = "true" *) input SLOT_AXIS_8_tready;
  (* keep = "true" *) output SLOT_AXIS_8_tvalid;
  (* keep = "true" *) output [63:0]SLOT_AXIS_9_tdata;
  (* keep = "true" *) output [7:0]SLOT_AXIS_9_tdest;
  (* keep = "true" *) output [7:0]SLOT_AXIS_9_tkeep;
  (* keep = "true" *) output SLOT_AXIS_9_tlast;
  (* keep = "true" *) input SLOT_AXIS_9_tready;
  (* keep = "true" *) output SLOT_AXIS_9_tvalid;
  (* keep = "true" *) input [63:0]S_AXIS_tdata;
  (* keep = "true" *) input [7:0]S_AXIS_tdest;
  (* keep = "true" *) input [7:0]S_AXIS_tkeep;
  (* keep = "true" *) input S_AXIS_tlast;
  (* keep = "true" *) output S_AXIS_tready;
  (* keep = "true" *) input S_AXIS_tvalid;
  (* keep = "true" *) input [15:0]S_AXI_araddr;
  (* keep = "true" *) input [1:0]S_AXI_arburst;
  (* keep = "true" *) input [3:0]S_AXI_arcache;
  (* keep = "true" *) input [7:0]S_AXI_arlen;
  (* keep = "true" *) input S_AXI_arlock;
  (* keep = "true" *) input [2:0]S_AXI_arprot;
  (* keep = "true" *) output S_AXI_arready;
  (* keep = "true" *) input [2:0]S_AXI_arsize;
  (* keep = "true" *) input S_AXI_arvalid;
  (* keep = "true" *) input [15:0]S_AXI_awaddr;
  (* keep = "true" *) input [1:0]S_AXI_awburst;
  (* keep = "true" *) input [3:0]S_AXI_awcache;
  (* keep = "true" *) input [7:0]S_AXI_awlen;
  (* keep = "true" *) input S_AXI_awlock;
  (* keep = "true" *) input [2:0]S_AXI_awprot;
  (* keep = "true" *) output S_AXI_awready;
  (* keep = "true" *) input [2:0]S_AXI_awsize;
  (* keep = "true" *) input S_AXI_awvalid;
  (* keep = "true" *) input S_AXI_bready;
  (* keep = "true" *) output [1:0]S_AXI_bresp;
  (* keep = "true" *) output S_AXI_bvalid;
  (* keep = "true" *) output [63:0]S_AXI_rdata;
  (* keep = "true" *) output S_AXI_rlast;
  (* keep = "true" *) input S_AXI_rready;
  (* keep = "true" *) output [1:0]S_AXI_rresp;
  (* keep = "true" *) output S_AXI_rvalid;
  (* keep = "true" *) input [63:0]S_AXI_wdata;
  (* keep = "true" *) input S_AXI_wlast;
  (* keep = "true" *) output S_AXI_wready;
  (* keep = "true" *) input [7:0]S_AXI_wstrb;
  (* keep = "true" *) input S_AXI_wvalid;

  wire ARESETN;
  wire CLK_CONTROL;
  wire CLK_DATA;
  wire [63:0]M_AXIS_tdata;
  wire [7:0]M_AXIS_tdest;
  wire [7:0]M_AXIS_tkeep;
  wire M_AXIS_tlast;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire [63:0]SLOT_AXIS_0_tdata;
  wire [7:0]SLOT_AXIS_0_tdest;
  wire [7:0]SLOT_AXIS_0_tkeep;
  wire SLOT_AXIS_0_tlast;
  wire SLOT_AXIS_0_tready;
  wire SLOT_AXIS_0_tvalid;
  wire [63:0]SLOT_AXIS_10_tdata;
  wire [7:0]SLOT_AXIS_10_tdest;
  wire [7:0]SLOT_AXIS_10_tkeep;
  wire SLOT_AXIS_10_tlast;
  wire SLOT_AXIS_10_tready;
  wire SLOT_AXIS_10_tvalid;
  wire [63:0]SLOT_AXIS_11_tdata;
  wire [7:0]SLOT_AXIS_11_tdest;
  wire [7:0]SLOT_AXIS_11_tkeep;
  wire SLOT_AXIS_11_tlast;
  wire SLOT_AXIS_11_tready;
  wire SLOT_AXIS_11_tvalid;
  wire [63:0]SLOT_AXIS_12_tdata;
  wire [7:0]SLOT_AXIS_12_tdest;
  wire [7:0]SLOT_AXIS_12_tkeep;
  wire SLOT_AXIS_12_tlast;
  wire SLOT_AXIS_12_tready;
  wire SLOT_AXIS_12_tvalid;
  wire [63:0]SLOT_AXIS_13_tdata;
  wire [7:0]SLOT_AXIS_13_tdest;
  wire [7:0]SLOT_AXIS_13_tkeep;
  wire SLOT_AXIS_13_tlast;
  wire SLOT_AXIS_13_tready;
  wire SLOT_AXIS_13_tvalid;
  wire [63:0]SLOT_AXIS_14_tdata;
  wire [7:0]SLOT_AXIS_14_tdest;
  wire [7:0]SLOT_AXIS_14_tkeep;
  wire SLOT_AXIS_14_tlast;
  wire SLOT_AXIS_14_tready;
  wire SLOT_AXIS_14_tvalid;
  wire [63:0]SLOT_AXIS_15_tdata;
  wire [7:0]SLOT_AXIS_15_tdest;
  wire [7:0]SLOT_AXIS_15_tkeep;
  wire SLOT_AXIS_15_tlast;
  wire SLOT_AXIS_15_tready;
  wire SLOT_AXIS_15_tvalid;
  wire [63:0]SLOT_AXIS_1_tdata;
  wire [7:0]SLOT_AXIS_1_tdest;
  wire [7:0]SLOT_AXIS_1_tkeep;
  wire SLOT_AXIS_1_tlast;
  wire SLOT_AXIS_1_tready;
  wire SLOT_AXIS_1_tvalid;
  wire [63:0]SLOT_AXIS_2_tdata;
  wire [7:0]SLOT_AXIS_2_tdest;
  wire [7:0]SLOT_AXIS_2_tkeep;
  wire SLOT_AXIS_2_tlast;
  wire SLOT_AXIS_2_tready;
  wire SLOT_AXIS_2_tvalid;
  wire [63:0]SLOT_AXIS_3_tdata;
  wire [7:0]SLOT_AXIS_3_tdest;
  wire [7:0]SLOT_AXIS_3_tkeep;
  wire SLOT_AXIS_3_tlast;
  wire SLOT_AXIS_3_tready;
  wire SLOT_AXIS_3_tvalid;
  wire [63:0]SLOT_AXIS_4_tdata;
  wire [7:0]SLOT_AXIS_4_tdest;
  wire [7:0]SLOT_AXIS_4_tkeep;
  wire SLOT_AXIS_4_tlast;
  wire SLOT_AXIS_4_tready;
  wire SLOT_AXIS_4_tvalid;
  wire [63:0]SLOT_AXIS_5_tdata;
  wire [7:0]SLOT_AXIS_5_tdest;
  wire [7:0]SLOT_AXIS_5_tkeep;
  wire SLOT_AXIS_5_tlast;
  wire SLOT_AXIS_5_tready;
  wire SLOT_AXIS_5_tvalid;
  wire [63:0]SLOT_AXIS_6_tdata;
  wire [7:0]SLOT_AXIS_6_tdest;
  wire [7:0]SLOT_AXIS_6_tkeep;
  wire SLOT_AXIS_6_tlast;
  wire SLOT_AXIS_6_tready;
  wire SLOT_AXIS_6_tvalid;
  wire [63:0]SLOT_AXIS_7_tdata;
  wire [7:0]SLOT_AXIS_7_tdest;
  wire [7:0]SLOT_AXIS_7_tkeep;
  wire SLOT_AXIS_7_tlast;
  wire SLOT_AXIS_7_tready;
  wire SLOT_AXIS_7_tvalid;
  wire [63:0]SLOT_AXIS_8_tdata;
  wire [7:0]SLOT_AXIS_8_tdest;
  wire [7:0]SLOT_AXIS_8_tkeep;
  wire SLOT_AXIS_8_tlast;
  wire SLOT_AXIS_8_tready;
  wire SLOT_AXIS_8_tvalid;
  wire [63:0]SLOT_AXIS_9_tdata;
  wire [7:0]SLOT_AXIS_9_tdest;
  wire [7:0]SLOT_AXIS_9_tkeep;
  wire SLOT_AXIS_9_tlast;
  wire SLOT_AXIS_9_tready;
  wire SLOT_AXIS_9_tvalid;
  wire [63:0]S_AXIS_tdata;
  wire [7:0]S_AXIS_tdest;
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

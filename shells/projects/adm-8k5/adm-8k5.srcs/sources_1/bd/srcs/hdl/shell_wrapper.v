//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Wed May 23 17:40:36 2018
//Host        : integrators running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target shell_wrapper.bd
//Design      : shell_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module shell_wrapper
   (ARESETN,
    CLK_DATA,
    M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    M_AXI_CONTROL_araddr,
    M_AXI_CONTROL_arprot,
    M_AXI_CONTROL_arqos,
    M_AXI_CONTROL_arready,
    M_AXI_CONTROL_arregion,
    M_AXI_CONTROL_arvalid,
    M_AXI_CONTROL_awaddr,
    M_AXI_CONTROL_awprot,
    M_AXI_CONTROL_awqos,
    M_AXI_CONTROL_awready,
    M_AXI_CONTROL_awregion,
    M_AXI_CONTROL_awvalid,
    M_AXI_CONTROL_bready,
    M_AXI_CONTROL_bresp,
    M_AXI_CONTROL_bvalid,
    M_AXI_CONTROL_rdata,
    M_AXI_CONTROL_rready,
    M_AXI_CONTROL_rresp,
    M_AXI_CONTROL_rvalid,
    M_AXI_CONTROL_wdata,
    M_AXI_CONTROL_wready,
    M_AXI_CONTROL_wstrb,
    M_AXI_CONTROL_wvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_MEM_araddr,
    S_AXI_MEM_arburst,
    S_AXI_MEM_arcache,
    S_AXI_MEM_arid,
    S_AXI_MEM_arlen,
    S_AXI_MEM_arlock,
    S_AXI_MEM_arprot,
    S_AXI_MEM_arqos,
    S_AXI_MEM_arready,
    S_AXI_MEM_arregion,
    S_AXI_MEM_arsize,
    S_AXI_MEM_arvalid,
    S_AXI_MEM_awaddr,
    S_AXI_MEM_awburst,
    S_AXI_MEM_awcache,
    S_AXI_MEM_awid,
    S_AXI_MEM_awlen,
    S_AXI_MEM_awlock,
    S_AXI_MEM_awprot,
    S_AXI_MEM_awqos,
    S_AXI_MEM_awready,
    S_AXI_MEM_awregion,
    S_AXI_MEM_awsize,
    S_AXI_MEM_awvalid,
    S_AXI_MEM_bid,
    S_AXI_MEM_bready,
    S_AXI_MEM_bresp,
    S_AXI_MEM_bvalid,
    S_AXI_MEM_rdata,
    S_AXI_MEM_rid,
    S_AXI_MEM_rlast,
    S_AXI_MEM_rready,
    S_AXI_MEM_rresp,
    S_AXI_MEM_rvalid,
    S_AXI_MEM_wdata,
    S_AXI_MEM_wid,
    S_AXI_MEM_wlast,
    S_AXI_MEM_wready,
    S_AXI_MEM_wstrb,
    S_AXI_MEM_wvalid,
    c0_ddr4_act_n_0,
    c0_ddr4_adr_0,
    c0_ddr4_ba_0,
    c0_ddr4_bg_0,
    c0_ddr4_ck_c_0,
    c0_ddr4_ck_t_0,
    c0_ddr4_cke_0,
    c0_ddr4_cs_n_0,
    c0_ddr4_dg_0,
    c0_ddr4_dm_dbi_n_0,
    c0_ddr4_dqs_c_0,
    c0_ddr4_dqs_t_0,
    c0_ddr4_odt_0,
    c0_ddr4_reset_n_0,
    c0_sys_clk_n_0,
    c0_sys_clk_p_0,
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
  output CLK_DATA;
  output [63:0]M_AXIS_tdata;
  output [7:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  output [31:0]M_AXI_CONTROL_araddr;
  output [2:0]M_AXI_CONTROL_arprot;
  output [3:0]M_AXI_CONTROL_arqos;
  input M_AXI_CONTROL_arready;
  output [3:0]M_AXI_CONTROL_arregion;
  output M_AXI_CONTROL_arvalid;
  output [31:0]M_AXI_CONTROL_awaddr;
  output [2:0]M_AXI_CONTROL_awprot;
  output [3:0]M_AXI_CONTROL_awqos;
  input M_AXI_CONTROL_awready;
  output [3:0]M_AXI_CONTROL_awregion;
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
  input S_AXIS_tlast;
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
  input [0:0]S_AXI_MEM_wid;
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

  wire [0:0]ARESETN;
  wire CLK_DATA;
  wire [63:0]M_AXIS_tdata;
  wire [7:0]M_AXIS_tkeep;
  wire M_AXIS_tlast;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire [31:0]M_AXI_CONTROL_araddr;
  wire [2:0]M_AXI_CONTROL_arprot;
  wire [3:0]M_AXI_CONTROL_arqos;
  wire M_AXI_CONTROL_arready;
  wire [3:0]M_AXI_CONTROL_arregion;
  wire M_AXI_CONTROL_arvalid;
  wire [31:0]M_AXI_CONTROL_awaddr;
  wire [2:0]M_AXI_CONTROL_awprot;
  wire [3:0]M_AXI_CONTROL_awqos;
  wire M_AXI_CONTROL_awready;
  wire [3:0]M_AXI_CONTROL_awregion;
  wire M_AXI_CONTROL_awvalid;
  wire M_AXI_CONTROL_bready;
  wire [1:0]M_AXI_CONTROL_bresp;
  wire M_AXI_CONTROL_bvalid;
  wire [31:0]M_AXI_CONTROL_rdata;
  wire M_AXI_CONTROL_rready;
  wire [1:0]M_AXI_CONTROL_rresp;
  wire M_AXI_CONTROL_rvalid;
  wire [31:0]M_AXI_CONTROL_wdata;
  wire M_AXI_CONTROL_wready;
  wire [3:0]M_AXI_CONTROL_wstrb;
  wire M_AXI_CONTROL_wvalid;
  wire [63:0]S_AXIS_tdata;
  wire [7:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire S_AXIS_tready;
  wire S_AXIS_tvalid;
  wire [31:0]S_AXI_MEM_araddr;
  wire [1:0]S_AXI_MEM_arburst;
  wire [3:0]S_AXI_MEM_arcache;
  wire [0:0]S_AXI_MEM_arid;
  wire [7:0]S_AXI_MEM_arlen;
  wire [0:0]S_AXI_MEM_arlock;
  wire [2:0]S_AXI_MEM_arprot;
  wire [3:0]S_AXI_MEM_arqos;
  wire S_AXI_MEM_arready;
  wire [3:0]S_AXI_MEM_arregion;
  wire [2:0]S_AXI_MEM_arsize;
  wire S_AXI_MEM_arvalid;
  wire [31:0]S_AXI_MEM_awaddr;
  wire [1:0]S_AXI_MEM_awburst;
  wire [3:0]S_AXI_MEM_awcache;
  wire [0:0]S_AXI_MEM_awid;
  wire [7:0]S_AXI_MEM_awlen;
  wire [0:0]S_AXI_MEM_awlock;
  wire [2:0]S_AXI_MEM_awprot;
  wire [3:0]S_AXI_MEM_awqos;
  wire S_AXI_MEM_awready;
  wire [3:0]S_AXI_MEM_awregion;
  wire [2:0]S_AXI_MEM_awsize;
  wire S_AXI_MEM_awvalid;
  wire [0:0]S_AXI_MEM_bid;
  wire S_AXI_MEM_bready;
  wire [1:0]S_AXI_MEM_bresp;
  wire S_AXI_MEM_bvalid;
  wire [511:0]S_AXI_MEM_rdata;
  wire [0:0]S_AXI_MEM_rid;
  wire S_AXI_MEM_rlast;
  wire S_AXI_MEM_rready;
  wire [1:0]S_AXI_MEM_rresp;
  wire S_AXI_MEM_rvalid;
  wire [511:0]S_AXI_MEM_wdata;
  wire [0:0]S_AXI_MEM_wid;
  wire S_AXI_MEM_wlast;
  wire S_AXI_MEM_wready;
  wire [63:0]S_AXI_MEM_wstrb;
  wire S_AXI_MEM_wvalid;
  wire c0_ddr4_act_n_0;
  wire [16:0]c0_ddr4_adr_0;
  wire [1:0]c0_ddr4_ba_0;
  wire [1:0]c0_ddr4_bg_0;
  wire [0:0]c0_ddr4_ck_c_0;
  wire [0:0]c0_ddr4_ck_t_0;
  wire [0:0]c0_ddr4_cke_0;
  wire [0:0]c0_ddr4_cs_n_0;
  wire [63:0]c0_ddr4_dg_0;
  wire [7:0]c0_ddr4_dm_dbi_n_0;
  wire [7:0]c0_ddr4_dqs_c_0;
  wire [7:0]c0_ddr4_dqs_t_0;
  wire [0:0]c0_ddr4_odt_0;
  wire c0_ddr4_reset_n_0;
  wire c0_sys_clk_n_0;
  wire c0_sys_clk_p_0;
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
        .CLK_DATA(CLK_DATA),
        .M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tkeep(M_AXIS_tkeep),
        .M_AXIS_tlast(M_AXIS_tlast),
        .M_AXIS_tready(M_AXIS_tready),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .M_AXI_CONTROL_araddr(M_AXI_CONTROL_araddr),
        .M_AXI_CONTROL_arprot(M_AXI_CONTROL_arprot),
        .M_AXI_CONTROL_arqos(M_AXI_CONTROL_arqos),
        .M_AXI_CONTROL_arready(M_AXI_CONTROL_arready),
        .M_AXI_CONTROL_arregion(M_AXI_CONTROL_arregion),
        .M_AXI_CONTROL_arvalid(M_AXI_CONTROL_arvalid),
        .M_AXI_CONTROL_awaddr(M_AXI_CONTROL_awaddr),
        .M_AXI_CONTROL_awprot(M_AXI_CONTROL_awprot),
        .M_AXI_CONTROL_awqos(M_AXI_CONTROL_awqos),
        .M_AXI_CONTROL_awready(M_AXI_CONTROL_awready),
        .M_AXI_CONTROL_awregion(M_AXI_CONTROL_awregion),
        .M_AXI_CONTROL_awvalid(M_AXI_CONTROL_awvalid),
        .M_AXI_CONTROL_bready(M_AXI_CONTROL_bready),
        .M_AXI_CONTROL_bresp(M_AXI_CONTROL_bresp),
        .M_AXI_CONTROL_bvalid(M_AXI_CONTROL_bvalid),
        .M_AXI_CONTROL_rdata(M_AXI_CONTROL_rdata),
        .M_AXI_CONTROL_rready(M_AXI_CONTROL_rready),
        .M_AXI_CONTROL_rresp(M_AXI_CONTROL_rresp),
        .M_AXI_CONTROL_rvalid(M_AXI_CONTROL_rvalid),
        .M_AXI_CONTROL_wdata(M_AXI_CONTROL_wdata),
        .M_AXI_CONTROL_wready(M_AXI_CONTROL_wready),
        .M_AXI_CONTROL_wstrb(M_AXI_CONTROL_wstrb),
        .M_AXI_CONTROL_wvalid(M_AXI_CONTROL_wvalid),
        .S_AXIS_tdata(S_AXIS_tdata),
        .S_AXIS_tkeep(S_AXIS_tkeep),
        .S_AXIS_tlast(S_AXIS_tlast),
        .S_AXIS_tready(S_AXIS_tready),
        .S_AXIS_tvalid(S_AXIS_tvalid),
        .S_AXI_MEM_araddr(S_AXI_MEM_araddr),
        .S_AXI_MEM_arburst(S_AXI_MEM_arburst),
        .S_AXI_MEM_arcache(S_AXI_MEM_arcache),
        .S_AXI_MEM_arid(S_AXI_MEM_arid),
        .S_AXI_MEM_arlen(S_AXI_MEM_arlen),
        .S_AXI_MEM_arlock(S_AXI_MEM_arlock),
        .S_AXI_MEM_arprot(S_AXI_MEM_arprot),
        .S_AXI_MEM_arqos(S_AXI_MEM_arqos),
        .S_AXI_MEM_arready(S_AXI_MEM_arready),
        .S_AXI_MEM_arregion(S_AXI_MEM_arregion),
        .S_AXI_MEM_arsize(S_AXI_MEM_arsize),
        .S_AXI_MEM_arvalid(S_AXI_MEM_arvalid),
        .S_AXI_MEM_awaddr(S_AXI_MEM_awaddr),
        .S_AXI_MEM_awburst(S_AXI_MEM_awburst),
        .S_AXI_MEM_awcache(S_AXI_MEM_awcache),
        .S_AXI_MEM_awid(S_AXI_MEM_awid),
        .S_AXI_MEM_awlen(S_AXI_MEM_awlen),
        .S_AXI_MEM_awlock(S_AXI_MEM_awlock),
        .S_AXI_MEM_awprot(S_AXI_MEM_awprot),
        .S_AXI_MEM_awqos(S_AXI_MEM_awqos),
        .S_AXI_MEM_awready(S_AXI_MEM_awready),
        .S_AXI_MEM_awregion(S_AXI_MEM_awregion),
        .S_AXI_MEM_awsize(S_AXI_MEM_awsize),
        .S_AXI_MEM_awvalid(S_AXI_MEM_awvalid),
        .S_AXI_MEM_bid(S_AXI_MEM_bid),
        .S_AXI_MEM_bready(S_AXI_MEM_bready),
        .S_AXI_MEM_bresp(S_AXI_MEM_bresp),
        .S_AXI_MEM_bvalid(S_AXI_MEM_bvalid),
        .S_AXI_MEM_rdata(S_AXI_MEM_rdata),
        .S_AXI_MEM_rid(S_AXI_MEM_rid),
        .S_AXI_MEM_rlast(S_AXI_MEM_rlast),
        .S_AXI_MEM_rready(S_AXI_MEM_rready),
        .S_AXI_MEM_rresp(S_AXI_MEM_rresp),
        .S_AXI_MEM_rvalid(S_AXI_MEM_rvalid),
        .S_AXI_MEM_wdata(S_AXI_MEM_wdata),
        .S_AXI_MEM_wid(S_AXI_MEM_wid),
        .S_AXI_MEM_wlast(S_AXI_MEM_wlast),
        .S_AXI_MEM_wready(S_AXI_MEM_wready),
        .S_AXI_MEM_wstrb(S_AXI_MEM_wstrb),
        .S_AXI_MEM_wvalid(S_AXI_MEM_wvalid),
        .c0_ddr4_act_n_0(c0_ddr4_act_n_0),
        .c0_ddr4_adr_0(c0_ddr4_adr_0),
        .c0_ddr4_ba_0(c0_ddr4_ba_0),
        .c0_ddr4_bg_0(c0_ddr4_bg_0),
        .c0_ddr4_ck_c_0(c0_ddr4_ck_c_0),
        .c0_ddr4_ck_t_0(c0_ddr4_ck_t_0),
        .c0_ddr4_cke_0(c0_ddr4_cke_0),
        .c0_ddr4_cs_n_0(c0_ddr4_cs_n_0),
        .c0_ddr4_dg_0(c0_ddr4_dg_0),
        .c0_ddr4_dm_dbi_n_0(c0_ddr4_dm_dbi_n_0),
        .c0_ddr4_dqs_c_0(c0_ddr4_dqs_c_0),
        .c0_ddr4_dqs_t_0(c0_ddr4_dqs_t_0),
        .c0_ddr4_odt_0(c0_ddr4_odt_0),
        .c0_ddr4_reset_n_0(c0_ddr4_reset_n_0),
        .c0_sys_clk_n_0(c0_sys_clk_n_0),
        .c0_sys_clk_p_0(c0_sys_clk_p_0),
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

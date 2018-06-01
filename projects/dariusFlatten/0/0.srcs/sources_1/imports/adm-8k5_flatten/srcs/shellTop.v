//--------------------------------------------------------------------------------
//Galapagos Top Level Module for AlphaData 8k5
//Author: Naif Tarafdar
//Date        : Fri Jun 30 19:52:56 2017
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module shellTop
   (
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
    txp,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dm_dbi_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_reset_n,
    c0_sys_clk_n,
    c0_sys_clk_p
  ); 

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

  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [1:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_ck_c;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_cs_n;
  inout [7:0]c0_ddr4_dm_dbi_n;
  inout [63:0]c0_ddr4_dq;
  inout [7:0]c0_ddr4_dqs_c;
  inout [7:0]c0_ddr4_dqs_t;
  output [0:0]c0_ddr4_odt;
  output c0_ddr4_reset_n;
  input c0_sys_clk_n;
  input c0_sys_clk_p;
  
  (* keep = "true" *) wire [0:0]ARESETN;
  (* keep = "true" *) wire CLK_DATA;
  (* keep = "true" *) wire [63:0]M_AXIS_tdata;
  (* keep = "true" *) wire [7:0]M_AXIS_tkeep;
  (* keep = "true" *) wire [0:0]M_AXIS_tlast;
  (* keep = "true" *) wire M_AXIS_tready;
  (* keep = "true" *) wire M_AXIS_tvalid;
  (* keep = "true" *) wire [63:0]M_AXI_CONTROL_araddr;
  (* keep = "true" *) wire [2:0]M_AXI_CONTROL_arprot;
  (* keep = "true" *) wire [3:0]M_AXI_CONTROL_arqos;
  (* keep = "true" *) wire M_AXI_CONTROL_arready;
  (* keep = "true" *) wire [3:0]M_AXI_CONTROL_arregion;
  (* keep = "true" *) wire M_AXI_CONTROL_arvalid;
  (* keep = "true" *) wire [63:0]M_AXI_CONTROL_awaddr;
  (* keep = "true" *) wire [2:0]M_AXI_CONTROL_awprot;
  (* keep = "true" *) wire [3:0]M_AXI_CONTROL_awqos;
  (* keep = "true" *) wire M_AXI_CONTROL_awready;
  (* keep = "true" *) wire [3:0]M_AXI_CONTROL_awregion;
  (* keep = "true" *) wire M_AXI_CONTROL_awvalid;
  (* keep = "true" *) wire M_AXI_CONTROL_bready;
  (* keep = "true" *) wire [1:0]M_AXI_CONTROL_bresp;
  (* keep = "true" *) wire M_AXI_CONTROL_bvalid;
  (* keep = "true" *) wire [31:0]M_AXI_CONTROL_rdata;
  (* keep = "true" *) wire M_AXI_CONTROL_rready;
  (* keep = "true" *) wire [1:0]M_AXI_CONTROL_rresp;
  (* keep = "true" *) wire M_AXI_CONTROL_rvalid;
  (* keep = "true" *) wire [31:0]M_AXI_CONTROL_wdata;
  (* keep = "true" *) wire M_AXI_CONTROL_wready;
  (* keep = "true" *) wire [31:0]M_AXI_CONTROL_wstrb;
  (* keep = "true" *) wire M_AXI_CONTROL_wvalid;
  (* keep = "true" *) wire [63:0]S_AXIS_tdata;
  (* keep = "true" *) wire [7:0]S_AXIS_tkeep;
  (* keep = "true" *) wire [0:0]S_AXIS_tlast;
  (* keep = "true" *) wire S_AXIS_tready;
  (* keep = "true" *) wire S_AXIS_tvalid;
  (* keep = "true" *) wire [31:0] S_AXI_MEM_araddr;
  (* keep = "true" *) wire [1:0] S_AXI_MEM_arburst;
  (* keep = "true" *) wire [3:0] S_AXI_MEM_arcache;
  (* keep = "true" *) wire [1:0] S_AXI_MEM_arid;
  (* keep = "true" *) wire [7:0] S_AXI_MEM_arlen;
  (* keep = "true" *) wire [0:0] S_AXI_MEM_arlock;
  (* keep = "true" *) wire [2:0] S_AXI_MEM_arprot;
  (* keep = "true" *) wire [3:0] S_AXI_MEM_arqos;
  (* keep = "true" *) wire [3:0] S_AXI_MEM_arregion;
  (* keep = "true" *) wire [2:0] S_AXI_MEM_arsize;
  (* keep = "true" *) wire S_AXI_MEM_arvalid;
  (* keep = "true" *) wire [31:0] S_AXI_MEM_awaddr;
  (* keep = "true" *) wire [1:0] S_AXI_MEM_awburst;
  (* keep = "true" *) wire [3:0] S_AXI_MEM_awcache;
  (* keep = "true" *) wire [1:0] S_AXI_MEM_awid;
  (* keep = "true" *) wire [7:0] S_AXI_MEM_awlen;
  (* keep = "true" *) wire [0:0] S_AXI_MEM_awlock;
  (* keep = "true" *) wire [2:0] S_AXI_MEM_awprot;
  (* keep = "true" *) wire [3:0] S_AXI_MEM_awqos;
  (* keep = "true" *) wire [3:0] S_AXI_MEM_awregion;
  (* keep = "true" *) wire [2:0] S_AXI_MEM_awsize;
  (* keep = "true" *) wire S_AXI_MEM_awvalid;
  (* keep = "true" *) wire [1:0] S_AXI_MEM_bid;
  (* keep = "true" *) wire S_AXI_MEM_bready;
  (* keep = "true" *) wire S_AXI_MEM_rready;
  (* keep = "true" *) wire [511:0] S_AXI_MEM_wdata;
  (* keep = "true" *) wire S_AXI_MEM_wlast;
  (* keep = "true" *) wire [63:0] S_AXI_MEM_wstrb;
  (* keep = "true" *) wire S_AXI_MEM_wvalid;
  (* keep = "true" *) wire S_AXI_MEM_arready;
  (* keep = "true" *) wire S_AXI_MEM_awready;
  (* keep = "true" *) wire [1:0] S_AXI_MEM_bresp;
  (* keep = "true" *) wire S_AXI_MEM_bvalid;
  (* keep = "true" *) wire [511:0] S_AXI_MEM_rdata;
  (* keep = "true" *) wire [1:0]S_AXI_MEM_rid;
  (* keep = "true" *) wire S_AXI_MEM_rlast;
  (* keep = "true" *) wire [1:0] S_AXI_MEM_rresp;
  (* keep = "true" *) wire S_AXI_MEM_rvalid;
  (* keep = "true" *) wire S_AXI_MEM_wready;

  
   shell shell_i
       (.ARESETN(ARESETN),
        .CLK_DATA(CLK_DATA),
        .M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tkeep(M_AXIS_tkeep),
        .M_AXIS_tlast(M_AXIS_tlast),
        .M_AXIS_tready(M_AXIS_tready),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .M_AXI_CONTROL_araddr(M_AXI_CONTROL_araddr),
        //.M_AXI_CONTROL_arburst(M_AXI_CONTROL_arburst),
        //.M_AXI_CONTROL_arcache(M_AXI_CONTROL_arcache),
        //.M_AXI_CONTROL_arlen(M_AXI_CONTROL_arlen),
        //.M_AXI_CONTROL_arlock(M_AXI_CONTROL_arlock),
        .M_AXI_CONTROL_arprot(M_AXI_CONTROL_arprot),
        .M_AXI_CONTROL_arqos(M_AXI_CONTROL_arqos),
        .M_AXI_CONTROL_arready(M_AXI_CONTROL_arready),
        .M_AXI_CONTROL_arregion(M_AXI_CONTROL_arregion),
        //.M_AXI_CONTROL_arsize(M_AXI_CONTROL_arsize),
        .M_AXI_CONTROL_arvalid(M_AXI_CONTROL_arvalid),
        .M_AXI_CONTROL_awaddr(M_AXI_CONTROL_awaddr),
        //.M_AXI_CONTROL_awburst(M_AXI_CONTROL_awburst),
        //.M_AXI_CONTROL_awcache(M_AXI_CONTROL_awcache),
        //.M_AXI_CONTROL_awlen(M_AXI_CONTROL_awlen),
        //.M_AXI_CONTROL_awlock(M_AXI_CONTROL_awlock),
        .M_AXI_CONTROL_awprot(M_AXI_CONTROL_awprot),
        .M_AXI_CONTROL_awqos(M_AXI_CONTROL_awqos),
        .M_AXI_CONTROL_awready(M_AXI_CONTROL_awready),
        .M_AXI_CONTROL_awregion(M_AXI_CONTROL_awregion),
        //.M_AXI_CONTROL_awsize(M_AXI_CONTROL_awsize),
        .M_AXI_CONTROL_awvalid(M_AXI_CONTROL_awvalid),
        .M_AXI_CONTROL_bready(M_AXI_CONTROL_bready),
        .M_AXI_CONTROL_bresp(M_AXI_CONTROL_bresp),
        .M_AXI_CONTROL_bvalid(M_AXI_CONTROL_bvalid),
        .M_AXI_CONTROL_rdata(M_AXI_CONTROL_rdata),
        //.M_AXI_CONTROL_rlast(M_AXI_CONTROL_rlast),
        .M_AXI_CONTROL_rready(M_AXI_CONTROL_rready),
        .M_AXI_CONTROL_rresp(M_AXI_CONTROL_rresp),
        .M_AXI_CONTROL_rvalid(M_AXI_CONTROL_rvalid),
        .M_AXI_CONTROL_wdata(M_AXI_CONTROL_wdata),
        //.M_AXI_CONTROL_wlast(M_AXI_CONTROL_wlast),
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
        .S_AXI_MEM_awregion(S_AXI_MEM_awregion),
        .S_AXI_MEM_awsize(S_AXI_MEM_awsize),
        .S_AXI_MEM_awvalid(S_AXI_MEM_awvalid),
        .S_AXI_MEM_bid(S_AXI_MEM_bid),
        .S_AXI_MEM_bready(S_AXI_MEM_bready),
        .S_AXI_MEM_rready(S_AXI_MEM_rready),
        .S_AXI_MEM_wdata(S_AXI_MEM_wdata),
        .S_AXI_MEM_wlast(S_AXI_MEM_wlast),
        .S_AXI_MEM_wstrb(S_AXI_MEM_wstrb),
        .S_AXI_MEM_wvalid(S_AXI_MEM_wvalid),
        .S_AXI_MEM_arready(S_AXI_MEM_arready),
        .S_AXI_MEM_awready(S_AXI_MEM_awready),
        .S_AXI_MEM_bresp(S_AXI_MEM_bresp),
        .S_AXI_MEM_bvalid(S_AXI_MEM_bvalid),
        .S_AXI_MEM_rdata(S_AXI_MEM_rdata),
        .S_AXI_MEM_rid(S_AXI_MEM_rid),
        .S_AXI_MEM_rlast(S_AXI_MEM_rlast),
        .S_AXI_MEM_rresp(S_AXI_MEM_rresp),
        .S_AXI_MEM_rvalid(S_AXI_MEM_rvalid),
        .S_AXI_MEM_wready(S_AXI_MEM_wready),
        .c0_ddr4_act_n_0(c0_ddr4_act_n),
        .c0_ddr4_adr_0(c0_ddr4_adr),
        .c0_ddr4_ba_0(c0_ddr4_ba),
        .c0_ddr4_bg_0(c0_ddr4_bg),
        .c0_ddr4_ck_c_0(c0_ddr4_ck_c),
        .c0_ddr4_ck_t_0(c0_ddr4_ck_t),
        .c0_ddr4_cke_0(c0_ddr4_cke),
        .c0_ddr4_cs_n_0(c0_ddr4_cs_n),
        .c0_ddr4_dg_0(c0_ddr4_dq),
        .c0_ddr4_dm_dbi_n_0(c0_ddr4_dm_dbi_n),
        .c0_ddr4_dqs_c_0(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t_0(c0_ddr4_dqs_t),
        .c0_ddr4_odt_0(c0_ddr4_odt),
        .c0_ddr4_reset_n_0(c0_ddr4_reset_n),
        .c0_sys_clk_n_0(c0_sys_clk_n),
        .c0_sys_clk_p_0(c0_sys_clk_p),
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

   pr pr_i
       (.ARESETN(ARESETN),
        .CLK(CLK_DATA),
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
        .S_AXI_CONTROL_araddr(M_AXI_CONTROL_araddr),
        .S_AXI_CONTROL_arprot(M_AXI_CONTROL_arprot),
        .S_AXI_CONTROL_arqos(M_AXI_CONTROL_arqos),
        .S_AXI_CONTROL_arready(M_AXI_CONTROL_arready),
        .S_AXI_CONTROL_arvalid(M_AXI_CONTROL_arvalid),
        .S_AXI_CONTROL_awaddr(M_AXI_CONTROL_awaddr),
        .S_AXI_CONTROL_awprot(M_AXI_CONTROL_awprot),
        .S_AXI_CONTROL_awqos(M_AXI_CONTROL_awqos),
        .S_AXI_CONTROL_awready(M_AXI_CONTROL_awready),
        .S_AXI_CONTROL_awvalid(M_AXI_CONTROL_awvalid),
        .S_AXI_CONTROL_bready(M_AXI_CONTROL_bready),
        .S_AXI_CONTROL_bresp(M_AXI_CONTROL_bresp),
        .S_AXI_CONTROL_bvalid(M_AXI_CONTROL_bvalid),
        .S_AXI_CONTROL_rdata(M_AXI_CONTROL_rdata),
        .S_AXI_CONTROL_rready(M_AXI_CONTROL_rready),
        .S_AXI_CONTROL_rresp(M_AXI_CONTROL_rresp),
        .S_AXI_CONTROL_rvalid(M_AXI_CONTROL_rvalid),
        .S_AXI_CONTROL_wdata(M_AXI_CONTROL_wdata),
        .S_AXI_CONTROL_wready(M_AXI_CONTROL_wready),
        .S_AXI_CONTROL_wstrb(M_AXI_CONTROL_wstrb),
        .S_AXI_CONTROL_wvalid(M_AXI_CONTROL_wvalid),
        .S_AXI_MEM_araddr(S_AXI_MEM_araddr),
        .S_AXI_MEM_arburst(S_AXI_MEM_arburst),
        .S_AXI_MEM_arcache(S_AXI_MEM_arcache),
        .S_AXI_MEM_arid(S_AXI_MEM_arid),
        .S_AXI_MEM_arlen(S_AXI_MEM_arlen),
        .S_AXI_MEM_arlock(S_AXI_MEM_arlock),
        .S_AXI_MEM_arprot(S_AXI_MEM_arprot),
        .S_AXI_MEM_arqos(S_AXI_MEM_arqos),
        .S_AXI_MEM_arready(S_AXI_MEM_arready),
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
        .S_AXI_MEM_wlast(S_AXI_MEM_wlast),
        .S_AXI_MEM_wready(S_AXI_MEM_wready),
        .S_AXI_MEM_wstrb(S_AXI_MEM_wstrb),
        .S_AXI_MEM_wvalid(S_AXI_MEM_wvalid)
    );
endmodule

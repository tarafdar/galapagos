//--------------------------------------------------------------------------------
//Galapagos Top Level Module for Fidus Sidewinder
//Author: Varun Sharma, Naif Tarafdar
//Date        : Feb 13 2019
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module shellTop
   (gt_refclk_n_1,
    gt_refclk_p_1,
    // perst_n,
    qsfp0_4x_grx_n,
    qsfp0_4x_grx_p,
    qsfp0_4x_gtx_n,
    qsfp0_4x_gtx_p,
    qsfp0_lp_mode_1v8,
    qsfp0_sel_1v8_l,
    c0_sys_clk_n,
    c0_sys_clk_p,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dm_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_reset_n
  );

    input gt_refclk_n_1;
    input gt_refclk_p_1;
    // input perst_n;
    input qsfp0_4x_grx_n;
    input qsfp0_4x_grx_p;
    output qsfp0_4x_gtx_n;
    output qsfp0_4x_gtx_p;
    output qsfp0_lp_mode_1v8;
    output qsfp0_sel_1v8_l;

    output c0_ddr4_act_n;
    output [16:0]c0_ddr4_adr;
    output [1:0]c0_ddr4_ba;
    output [1:0]c0_ddr4_bg;
    output [1:0]c0_ddr4_ck_c;
    output [1:0]c0_ddr4_ck_t;
    output [1:0]c0_ddr4_cke;
    output [1:0]c0_ddr4_cs_n;
    inout [7:0]c0_ddr4_dm_n;
    inout [63:0]c0_ddr4_dq;
    inout [7:0]c0_ddr4_dqs_c;
    inout [7:0]c0_ddr4_dqs_t;
    output [1:0]c0_ddr4_odt;
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
    (* keep = "true" *) wire [31:0] S_AXI_MEM_0_araddr;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_0_arburst;
    (* keep = "true" *) wire [3:0] S_AXI_MEM_0_arcache;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_0_arid;
    (* keep = "true" *) wire [7:0] S_AXI_MEM_0_arlen;
    (* keep = "true" *) wire [0:0] S_AXI_MEM_0_arlock;
    (* keep = "true" *) wire [2:0] S_AXI_MEM_0_arprot;
    (* keep = "true" *) wire [3:0] S_AXI_MEM_0_arqos;
    (* keep = "true" *) wire [3:0] S_AXI_MEM_0_arregion;
    (* keep = "true" *) wire [2:0] S_AXI_MEM_0_arsize;
    (* keep = "true" *) wire S_AXI_MEM_0_arvalid;
    (* keep = "true" *) wire [31:0] S_AXI_MEM_0_awaddr;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_0_awburst;
    (* keep = "true" *) wire [3:0] S_AXI_MEM_0_awcache;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_0_awid;
    (* keep = "true" *) wire [7:0] S_AXI_MEM_0_awlen;
    (* keep = "true" *) wire [0:0] S_AXI_MEM_0_awlock;
    (* keep = "true" *) wire [2:0] S_AXI_MEM_0_awprot;
    (* keep = "true" *) wire [3:0] S_AXI_MEM_0_awqos;
    (* keep = "true" *) wire [3:0] S_AXI_MEM_0_awregion;
    (* keep = "true" *) wire [2:0] S_AXI_MEM_0_awsize;
    (* keep = "true" *) wire S_AXI_MEM_0_awvalid;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_0_bid;
    (* keep = "true" *) wire S_AXI_MEM_0_bready;
    (* keep = "true" *) wire S_AXI_MEM_0_rready;
    (* keep = "true" *) wire [511:0] S_AXI_MEM_0_wdata;
    (* keep = "true" *) wire S_AXI_MEM_0_wlast;
    (* keep = "true" *) wire [63:0] S_AXI_MEM_0_wstrb;
    (* keep = "true" *) wire S_AXI_MEM_0_wvalid;
    (* keep = "true" *) wire S_AXI_MEM_0_arready;
    (* keep = "true" *) wire S_AXI_MEM_0_awready;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_0_bresp;
    (* keep = "true" *) wire S_AXI_MEM_0_bvalid;
    (* keep = "true" *) wire [511:0] S_AXI_MEM_0_rdata;
    (* keep = "true" *) wire [1:0]S_AXI_MEM_0_rid;
    (* keep = "true" *) wire S_AXI_MEM_0_rlast;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_0_rresp;
    (* keep = "true" *) wire S_AXI_MEM_0_rvalid;
    (* keep = "true" *) wire S_AXI_MEM_0_wready;
    (* keep = "true" *) wire [31:0] S_AXI_MEM_1_araddr;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_1_arburst;
    (* keep = "true" *) wire [3:0] S_AXI_MEM_1_arcache;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_1_arid;
    (* keep = "true" *) wire [7:0] S_AXI_MEM_1_arlen;
    (* keep = "true" *) wire [0:0] S_AXI_MEM_1_arlock;
    (* keep = "true" *) wire [2:0] S_AXI_MEM_1_arprot;
    (* keep = "true" *) wire [3:0] S_AXI_MEM_1_arqos;
    // (* keep = "true" *) wire [3:0] S_AXI_MEM_1_arregion;
    (* keep = "true" *) wire [2:0] S_AXI_MEM_1_arsize;
    (* keep = "true" *) wire S_AXI_MEM_1_arvalid;
    (* keep = "true" *) wire [31:0] S_AXI_MEM_1_awaddr;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_1_awburst;
    (* keep = "true" *) wire [3:0] S_AXI_MEM_1_awcache;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_1_awid;
    (* keep = "true" *) wire [7:0] S_AXI_MEM_1_awlen;
    (* keep = "true" *) wire [0:0] S_AXI_MEM_1_awlock;
    (* keep = "true" *) wire [2:0] S_AXI_MEM_1_awprot;
    (* keep = "true" *) wire [3:0] S_AXI_MEM_1_awqos;
    // (* keep = "true" *) wire [3:0] S_AXI_MEM_1_awregion;
    (* keep = "true" *) wire [2:0] S_AXI_MEM_1_awsize;
    (* keep = "true" *) wire S_AXI_MEM_1_awvalid;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_1_bid;
    (* keep = "true" *) wire S_AXI_MEM_1_bready;
    (* keep = "true" *) wire S_AXI_MEM_1_rready;
    (* keep = "true" *) wire [127:0] S_AXI_MEM_1_wdata;
    (* keep = "true" *) wire S_AXI_MEM_1_wlast;
    (* keep = "true" *) wire [63:0] S_AXI_MEM_1_wstrb;
    (* keep = "true" *) wire S_AXI_MEM_1_wvalid;
    (* keep = "true" *) wire S_AXI_MEM_1_arready;
    (* keep = "true" *) wire S_AXI_MEM_1_awready;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_1_bresp;
    (* keep = "true" *) wire S_AXI_MEM_1_bvalid;
    (* keep = "true" *) wire [127:0] S_AXI_MEM_1_rdata;
    (* keep = "true" *) wire [1:0]S_AXI_MEM_1_rid;
    (* keep = "true" *) wire S_AXI_MEM_1_rlast;
    (* keep = "true" *) wire [1:0] S_AXI_MEM_1_rresp;
    (* keep = "true" *) wire S_AXI_MEM_1_rvalid;
    (* keep = "true" *) wire S_AXI_MEM_1_wready;

  
    shell shell_i (
        .ARESETN(ARESETN),
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
        //.M_AXI_CONTROL_arqos(M_AXI_CONTROL_arqos),
        .M_AXI_CONTROL_arready(M_AXI_CONTROL_arready),
        //.M_AXI_CONTROL_arregion(M_AXI_CONTROL_arregion),
        //.M_AXI_CONTROL_arsize(M_AXI_CONTROL_arsize),
        .M_AXI_CONTROL_arvalid(M_AXI_CONTROL_arvalid),
        .M_AXI_CONTROL_awaddr(M_AXI_CONTROL_awaddr),
        //.M_AXI_CONTROL_awburst(M_AXI_CONTROL_awburst),
        //.M_AXI_CONTROL_awcache(M_AXI_CONTROL_awcache),
        //.M_AXI_CONTROL_awlen(M_AXI_CONTROL_awlen),
        //.M_AXI_CONTROL_awlock(M_AXI_CONTROL_awlock),
        .M_AXI_CONTROL_awprot(M_AXI_CONTROL_awprot),
        //.M_AXI_CONTROL_awqos(M_AXI_CONTROL_awqos),
        .M_AXI_CONTROL_awready(M_AXI_CONTROL_awready),
        //.M_AXI_CONTROL_awregion(M_AXI_CONTROL_awregion),
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
        .S_AXI_MEM_0_araddr(S_AXI_MEM_0_araddr),
        .S_AXI_MEM_0_arburst(S_AXI_MEM_0_arburst),
        .S_AXI_MEM_0_arcache(S_AXI_MEM_0_arcache),
        .S_AXI_MEM_0_arid(S_AXI_MEM_0_arid),
        .S_AXI_MEM_0_arlen(S_AXI_MEM_0_arlen),
        .S_AXI_MEM_0_arlock(S_AXI_MEM_0_arlock),
        .S_AXI_MEM_0_arprot(S_AXI_MEM_0_arprot),
        .S_AXI_MEM_0_arqos(S_AXI_MEM_0_arqos),
        .S_AXI_MEM_0_arregion(S_AXI_MEM_0_arregion),
        .S_AXI_MEM_0_arsize(S_AXI_MEM_0_arsize),
        .S_AXI_MEM_0_arvalid(S_AXI_MEM_0_arvalid),
        .S_AXI_MEM_0_awaddr(S_AXI_MEM_0_awaddr),
        .S_AXI_MEM_0_awburst(S_AXI_MEM_0_awburst),
        .S_AXI_MEM_0_awcache(S_AXI_MEM_0_awcache),
        .S_AXI_MEM_0_awid(S_AXI_MEM_0_awid),
        .S_AXI_MEM_0_awlen(S_AXI_MEM_0_awlen),
        .S_AXI_MEM_0_awlock(S_AXI_MEM_0_awlock),
        .S_AXI_MEM_0_awprot(S_AXI_MEM_0_awprot),
        .S_AXI_MEM_0_awqos(S_AXI_MEM_0_awqos),
        .S_AXI_MEM_0_awregion(S_AXI_MEM_0_awregion),
        .S_AXI_MEM_0_awsize(S_AXI_MEM_0_awsize),
        .S_AXI_MEM_0_awvalid(S_AXI_MEM_0_awvalid),
        .S_AXI_MEM_0_bid(S_AXI_MEM_0_bid),
        .S_AXI_MEM_0_bready(S_AXI_MEM_0_bready),
        .S_AXI_MEM_0_rready(S_AXI_MEM_0_rready),
        .S_AXI_MEM_0_wdata(S_AXI_MEM_0_wdata),
        .S_AXI_MEM_0_wlast(S_AXI_MEM_0_wlast),
        .S_AXI_MEM_0_wstrb(S_AXI_MEM_0_wstrb),
        .S_AXI_MEM_0_wvalid(S_AXI_MEM_0_wvalid),
        .S_AXI_MEM_0_arready(S_AXI_MEM_0_arready),
        .S_AXI_MEM_0_awready(S_AXI_MEM_0_awready),
        .S_AXI_MEM_0_bresp(S_AXI_MEM_0_bresp),
        .S_AXI_MEM_0_bvalid(S_AXI_MEM_0_bvalid),
        .S_AXI_MEM_0_rdata(S_AXI_MEM_0_rdata),
        .S_AXI_MEM_0_rid(S_AXI_MEM_0_rid),
        .S_AXI_MEM_0_rlast(S_AXI_MEM_0_rlast),
        .S_AXI_MEM_0_rresp(S_AXI_MEM_0_rresp),
        .S_AXI_MEM_0_rvalid(S_AXI_MEM_0_rvalid),
        .S_AXI_MEM_0_wready(S_AXI_MEM_0_wready),
        .S_AXI_MEM_1_araddr(S_AXI_MEM_1_araddr),
        .S_AXI_MEM_1_arburst(S_AXI_MEM_1_arburst),
        .S_AXI_MEM_1_arcache(S_AXI_MEM_1_arcache),
        .S_AXI_MEM_1_arid(S_AXI_MEM_1_arid),
        .S_AXI_MEM_1_arlen(S_AXI_MEM_1_arlen),
        .S_AXI_MEM_1_arlock(S_AXI_MEM_1_arlock),
        .S_AXI_MEM_1_arprot(S_AXI_MEM_1_arprot),
        .S_AXI_MEM_1_arqos(S_AXI_MEM_1_arqos),
        // .S_AXI_MEM_1_arregion(S_AXI_MEM_1_arregion),
        .S_AXI_MEM_1_arsize(S_AXI_MEM_1_arsize),
        .S_AXI_MEM_1_arvalid(S_AXI_MEM_1_arvalid),
        .S_AXI_MEM_1_awaddr(S_AXI_MEM_1_awaddr),
        .S_AXI_MEM_1_awburst(S_AXI_MEM_1_awburst),
        .S_AXI_MEM_1_awcache(S_AXI_MEM_1_awcache),
        .S_AXI_MEM_1_awid(S_AXI_MEM_1_awid),
        .S_AXI_MEM_1_awlen(S_AXI_MEM_1_awlen),
        .S_AXI_MEM_1_awlock(S_AXI_MEM_1_awlock),
        .S_AXI_MEM_1_awprot(S_AXI_MEM_1_awprot),
        .S_AXI_MEM_1_awqos(S_AXI_MEM_1_awqos),
        // .S_AXI_MEM_1_awregion(S_AXI_MEM_1_awregion),
        .S_AXI_MEM_1_awsize(S_AXI_MEM_1_awsize),
        .S_AXI_MEM_1_awvalid(S_AXI_MEM_1_awvalid),
        .S_AXI_MEM_1_bid(S_AXI_MEM_1_bid),
        .S_AXI_MEM_1_bready(S_AXI_MEM_1_bready),
        .S_AXI_MEM_1_rready(S_AXI_MEM_1_rready),
        .S_AXI_MEM_1_wdata(S_AXI_MEM_1_wdata),
        .S_AXI_MEM_1_wlast(S_AXI_MEM_1_wlast),
        .S_AXI_MEM_1_wstrb(S_AXI_MEM_1_wstrb),
        .S_AXI_MEM_1_wvalid(S_AXI_MEM_1_wvalid),
        .S_AXI_MEM_1_arready(S_AXI_MEM_1_arready),
        .S_AXI_MEM_1_awready(S_AXI_MEM_1_awready),
        .S_AXI_MEM_1_bresp(S_AXI_MEM_1_bresp),
        .S_AXI_MEM_1_bvalid(S_AXI_MEM_1_bvalid),
        .S_AXI_MEM_1_rdata(S_AXI_MEM_1_rdata),
        .S_AXI_MEM_1_rid(S_AXI_MEM_1_rid),
        .S_AXI_MEM_1_rlast(S_AXI_MEM_1_rlast),
        .S_AXI_MEM_1_rresp(S_AXI_MEM_1_rresp),
        .S_AXI_MEM_1_rvalid(S_AXI_MEM_1_rvalid),
        .S_AXI_MEM_1_wready(S_AXI_MEM_1_wready),
        .c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
        .c0_ddr4_ba(c0_ddr4_ba),
        .c0_ddr4_bg(c0_ddr4_bg),
        .c0_ddr4_ck_c(c0_ddr4_ck_c),
        .c0_ddr4_ck_t(c0_ddr4_ck_t),
        .c0_ddr4_cke(c0_ddr4_cke),
        .c0_ddr4_cs_n(c0_ddr4_cs_n),
        .c0_ddr4_dq(c0_ddr4_dq),
        .c0_ddr4_dm_n(c0_ddr4_dm_n),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t),
        .c0_ddr4_odt(c0_ddr4_odt),
        .c0_ddr4_reset_n(c0_ddr4_reset_n),
        .C0_SYS_CLK_clk_n(c0_sys_clk_n),
        .C0_SYS_CLK_clk_p(c0_sys_clk_p),
        .gt_ref_clk_clk_n(gt_refclk_n_1),
        .gt_ref_clk_clk_p(gt_refclk_p_1),
        // .perst_n(perst_n),
        .qsfp0_4x_grx_n(qsfp0_4x_grx_n),
        .qsfp0_4x_grx_p(qsfp0_4x_grx_p),
        .qsfp0_4x_gtx_n(qsfp0_4x_gtx_n),
        .qsfp0_4x_gtx_p(qsfp0_4x_gtx_p),
        .qsfp0_lp_mode_1v8(qsfp0_lp_mode_1v8),
        .qsfp0_sel_1v8_l(qsfp0_sel_1v8_l)
    );

   pr pr_i(
        .ARESETN(ARESETN),
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
        // .S_AXI_CONTROL_arprot(M_AXI_CONTROL_arprot),
        //.S_AXI_CONTROL_arqos(M_AXI_CONTROL_arqos),
        .S_AXI_CONTROL_arready(M_AXI_CONTROL_arready),
        .S_AXI_CONTROL_arvalid(M_AXI_CONTROL_arvalid),
        .S_AXI_CONTROL_awaddr(M_AXI_CONTROL_awaddr),
        //.S_AXI_CONTROL_awprot(M_AXI_CONTROL_awprot),
        //.S_AXI_CONTROL_awqos(M_AXI_CONTROL_awqos),
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
        .S_AXI_MEM_0_araddr(S_AXI_MEM_0_araddr),
        .S_AXI_MEM_0_arburst(S_AXI_MEM_0_arburst),
        .S_AXI_MEM_0_arcache(S_AXI_MEM_0_arcache),
        //.S_AXI_MEM_0_arid(S_AXI_MEM_0_arid),
        .S_AXI_MEM_0_arlen(S_AXI_MEM_0_arlen),
        .S_AXI_MEM_0_arlock(S_AXI_MEM_0_arlock),
        .S_AXI_MEM_0_arprot(S_AXI_MEM_0_arprot),
        .S_AXI_MEM_0_arqos(S_AXI_MEM_0_arqos),
        .S_AXI_MEM_0_arready(S_AXI_MEM_0_arready),
        .S_AXI_MEM_0_arsize(S_AXI_MEM_0_arsize),
        .S_AXI_MEM_0_arvalid(S_AXI_MEM_0_arvalid),
        .S_AXI_MEM_0_awaddr(S_AXI_MEM_0_awaddr),
        .S_AXI_MEM_0_awburst(S_AXI_MEM_0_awburst),
        .S_AXI_MEM_0_awcache(S_AXI_MEM_0_awcache),
        //.S_AXI_MEM_0_awid(S_AXI_MEM_0_awid),
        .S_AXI_MEM_0_awlen(S_AXI_MEM_0_awlen),
        .S_AXI_MEM_0_awlock(S_AXI_MEM_0_awlock),
        .S_AXI_MEM_0_awprot(S_AXI_MEM_0_awprot),
        .S_AXI_MEM_0_awqos(S_AXI_MEM_0_awqos),
        .S_AXI_MEM_0_awready(S_AXI_MEM_0_awready),
        .S_AXI_MEM_0_awsize(S_AXI_MEM_0_awsize),
        .S_AXI_MEM_0_awvalid(S_AXI_MEM_0_awvalid),
        //.S_AXI_MEM_0_bid(S_AXI_MEM_0_bid),
        .S_AXI_MEM_0_bready(S_AXI_MEM_0_bready),
        .S_AXI_MEM_0_bresp(S_AXI_MEM_0_bresp),
        .S_AXI_MEM_0_bvalid(S_AXI_MEM_0_bvalid),
        .S_AXI_MEM_0_rdata(S_AXI_MEM_0_rdata),
        //.S_AXI_MEM_0_rid(S_AXI_MEM_0_rid),
        .S_AXI_MEM_0_rlast(S_AXI_MEM_0_rlast),
        .S_AXI_MEM_0_rready(S_AXI_MEM_0_rready),
        .S_AXI_MEM_0_rresp(S_AXI_MEM_0_rresp),
        .S_AXI_MEM_0_rvalid(S_AXI_MEM_0_rvalid),
        .S_AXI_MEM_0_wdata(S_AXI_MEM_0_wdata),
        .S_AXI_MEM_0_wlast(S_AXI_MEM_0_wlast),
        .S_AXI_MEM_0_wready(S_AXI_MEM_0_wready),
        .S_AXI_MEM_0_wstrb(S_AXI_MEM_0_wstrb),
        .S_AXI_MEM_0_wvalid(S_AXI_MEM_0_wvalid),
        .S_AXI_MEM_1_araddr(S_AXI_MEM_1_araddr),
        .S_AXI_MEM_1_arburst(S_AXI_MEM_1_arburst),
        .S_AXI_MEM_1_arcache(S_AXI_MEM_1_arcache),
        //.S_AXI_MEM_1_arid(S_AXI_MEM_1_arid),
        .S_AXI_MEM_1_arlen(S_AXI_MEM_1_arlen),
        .S_AXI_MEM_1_arlock(S_AXI_MEM_1_arlock),
        .S_AXI_MEM_1_arprot(S_AXI_MEM_1_arprot),
        .S_AXI_MEM_1_arqos(S_AXI_MEM_1_arqos),
        .S_AXI_MEM_1_arready(S_AXI_MEM_1_arready),
        .S_AXI_MEM_1_arsize(S_AXI_MEM_1_arsize),
        .S_AXI_MEM_1_arvalid(S_AXI_MEM_1_arvalid),
        .S_AXI_MEM_1_awaddr(S_AXI_MEM_1_awaddr),
        .S_AXI_MEM_1_awburst(S_AXI_MEM_1_awburst),
        .S_AXI_MEM_1_awcache(S_AXI_MEM_1_awcache),
        //.S_AXI_MEM_1_awid(S_AXI_MEM_1_awid),
        .S_AXI_MEM_1_awlen(S_AXI_MEM_1_awlen),
        .S_AXI_MEM_1_awlock(S_AXI_MEM_1_awlock),
        .S_AXI_MEM_1_awprot(S_AXI_MEM_1_awprot),
        .S_AXI_MEM_1_awqos(S_AXI_MEM_1_awqos),
        .S_AXI_MEM_1_awready(S_AXI_MEM_1_awready),
        .S_AXI_MEM_1_awsize(S_AXI_MEM_1_awsize),
        .S_AXI_MEM_1_awvalid(S_AXI_MEM_1_awvalid),
        //.S_AXI_MEM_1_bid(S_AXI_MEM_1_bid),
        .S_AXI_MEM_1_bready(S_AXI_MEM_1_bready),
        .S_AXI_MEM_1_bresp(S_AXI_MEM_1_bresp),
        .S_AXI_MEM_1_bvalid(S_AXI_MEM_1_bvalid),
        .S_AXI_MEM_1_rdata(S_AXI_MEM_1_rdata),
        //.S_AXI_MEM_1_rid(S_AXI_MEM_1_rid),
        .S_AXI_MEM_1_rlast(S_AXI_MEM_1_rlast),
        .S_AXI_MEM_1_rready(S_AXI_MEM_1_rready),
        .S_AXI_MEM_1_rresp(S_AXI_MEM_1_rresp),
        .S_AXI_MEM_1_rvalid(S_AXI_MEM_1_rvalid),
        .S_AXI_MEM_1_wdata(S_AXI_MEM_1_wdata),
        .S_AXI_MEM_1_wlast(S_AXI_MEM_1_wlast),
        .S_AXI_MEM_1_wready(S_AXI_MEM_1_wready),
        .S_AXI_MEM_1_wstrb(S_AXI_MEM_1_wstrb),
        .S_AXI_MEM_1_wvalid(S_AXI_MEM_1_wvalid)
    );
endmodule

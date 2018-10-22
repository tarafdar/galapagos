`timescale 1 ns/ 1ps



module top_sim(
    input clk,
    input sys_resetn,
    //from stimulus
    input [7:0] keep,
    input last,
    input [63:0] data,
    input valid,
    output ready,
    output [7:0] keep_out,
    output last_out,
    output [63:0] data_out,
    output valid_out,
    input ready_out,
    input mem_sys_clk_n,
    input mem_sys_clk_p,
    output mem_ready

);

//parameter SIM_BYPASS_INIT_CAL = "FAST";
//parameter SIM_INIT_OPTION = "SKIP_PU_DLY";
//parameter SIM_CAL_OPTION = "FAST_CAL";  
   

 

    //mem
    wire [14:0]S_AXI_MEM_0_araddr;
    wire [1:0]S_AXI_MEM_0_arburst;
    wire [3:0]S_AXI_MEM_0_arcache;
    wire [0:0]S_AXI_MEM_0_arid;
    wire [7:0]S_AXI_MEM_0_arlen;
    wire S_AXI_MEM_0_arlock;
    wire [2:0]S_AXI_MEM_0_arprot;
    wire  S_AXI_MEM_0_arready;
    wire [2:0]S_AXI_MEM_0_arsize;
    wire S_AXI_MEM_0_arvalid;
    wire [14:0]S_AXI_MEM_0_awaddr;
    wire [1:0]S_AXI_MEM_0_awburst;
    wire [3:0]S_AXI_MEM_0_awcache;
    wire [0:0]S_AXI_MEM_0_awid;
    wire [7:0]S_AXI_MEM_0_awlen;
    wire S_AXI_MEM_0_awlock;
    wire [2:0]S_AXI_MEM_0_awprot;
    wire  S_AXI_MEM_0_awready;
    wire [2:0]S_AXI_MEM_0_awsize;
    wire S_AXI_MEM_0_awvalid;
    wire  [0:0]S_AXI_MEM_0_bid;
    wire S_AXI_MEM_0_bready;
    wire  [1:0]S_AXI_MEM_0_bresp;
    wire  S_AXI_MEM_0_bvalid;
    wire  [511:0]S_AXI_MEM_0_rdata;
    wire  [0:0]S_AXI_MEM_0_rid;
    wire  S_AXI_MEM_0_rlast;
    wire S_AXI_MEM_0_rready;
    wire  [1:0]S_AXI_MEM_0_rresp;
    wire  S_AXI_MEM_0_rvalid;
    wire [511:0]S_AXI_MEM_0_wdata;
    wire S_AXI_MEM_0_wlast;
    wire  S_AXI_MEM_0_wready;
    wire [63:0]S_AXI_MEM_0_wstrb;
    wire S_AXI_MEM_0_wvalid;
    wire [14:0]S_AXI_MEM_1_araddr;
    wire [1:0]S_AXI_MEM_1_arburst;
    wire [3:0]S_AXI_MEM_1_arcache;
    wire [0:0]S_AXI_MEM_1_arid;
    wire [7:0]S_AXI_MEM_1_arlen;
    wire S_AXI_MEM_1_arlock;
    wire [2:0]S_AXI_MEM_1_arprot;
    wire  S_AXI_MEM_1_arready;
    wire [2:0]S_AXI_MEM_1_arsize;
    wire S_AXI_MEM_1_arvalid;
    wire [14:0]S_AXI_MEM_1_awaddr;
    wire [1:0]S_AXI_MEM_1_awburst;
    wire [3:0]S_AXI_MEM_1_awcache;
    wire [0:0]S_AXI_MEM_1_awid;
    wire [7:0]S_AXI_MEM_1_awlen;
    wire S_AXI_MEM_1_awlock;
    wire [2:0]S_AXI_MEM_1_awprot;
    wire  S_AXI_MEM_1_awready;
    wire [2:0]S_AXI_MEM_1_awsize;
    wire S_AXI_MEM_1_awvalid;
    wire  [0:0]S_AXI_MEM_1_bid;
    wire S_AXI_MEM_1_bready;
    wire  [1:0]S_AXI_MEM_1_bresp;
    wire  S_AXI_MEM_1_bvalid;
    wire  [511:0]S_AXI_MEM_1_rdata;
    wire  [0:0]S_AXI_MEM_1_rid;
    wire  S_AXI_MEM_1_rlast;
    wire S_AXI_MEM_1_rready;
    wire [1:0]S_AXI_MEM_1_rresp;
    wire  S_AXI_MEM_1_rvalid;
    wire [511:0]S_AXI_MEM_1_wdata;
    wire S_AXI_MEM_1_wlast;
    wire  S_AXI_MEM_1_wready;
    wire [63:0]S_AXI_MEM_1_wstrb;
    wire S_AXI_MEM_1_wvalid;
    
    
    
    wire pr_resetn;
    
    assign mem_ready = pr_resetn;


   mem mem_i                   
   (
        .S_AXI_MEM_0_araddr(S_AXI_MEM_0_araddr),
        .S_AXI_MEM_0_arburst(S_AXI_MEM_0_arburst),
        .S_AXI_MEM_0_arcache(S_AXI_MEM_0_arcache),
        //.S_AXI_MEM_0_arid(S_AXI_MEM_0_arid),
        .S_AXI_MEM_0_arlen(S_AXI_MEM_0_arlen),
        .S_AXI_MEM_0_arlock(S_AXI_MEM_0_arlock),
        .S_AXI_MEM_0_arprot(S_AXI_MEM_0_arprot),
//        .S_AXI_MEM_0_arqos(S_AXI_MEM_0_arqos),
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
//        .S_AXI_MEM_0_awqos(S_AXI_MEM_0_awqos),
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
//        .S_AXI_MEM_1_arqos(S_AXI_MEM_1_arqos),
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
//        .S_AXI_MEM_1_awqos(S_AXI_MEM_1_awqos),
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
        .S_AXI_MEM_1_wvalid(S_AXI_MEM_1_wvalid),
        .c0_sys_clk_n(mem_sys_clk_n),
        .c0_sys_clk_p(mem_sys_clk_p),
        .c1_sys_clk_n(mem_sys_clk_n),
        .c1_sys_clk_p(mem_sys_clk_p),
        .sys_reset_n(sys_resetn),
        .user_clk(clk),
        .user_resetn(pr_resetn)
    );


    pr pr_i
    (
        .ARESETN(pr_resetn),
        .CLK(clk),
        .M_AXIS_tdata(data_out),
        .M_AXIS_tkeep(keep_out),
        .M_AXIS_tlast(last_out),
        .M_AXIS_tready(ready_out),
        .M_AXIS_tvalid(valid_out),
        .S_AXIS_tdata(data),
        .S_AXIS_tkeep(keep),
        .S_AXIS_tlast(last),
        .S_AXIS_tready(ready),
        .S_AXIS_tvalid(valid),
        .S_AXI_CONTROL_araddr(M_AXI_CONTROL_araddr),
        //.S_AXI_CONTROL_arprot(M_AXI_CONTROL_arprot),
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

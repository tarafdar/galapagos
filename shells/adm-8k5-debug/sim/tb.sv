import axi4stream_vip_pkg::*;
import vip_axi4stream_vip_0_0_pkg::*;
import vip_axi4stream_vip_1_0_pkg::*;



module testbench();



    
    bit clk;
    bit resetn;
    
    always #5 clk = ~clk;
    
    initial begin
        resetn=0;
        #5 resetn = 1;

    end

   vip_tb vip_tb_i
	(.aclk (clk),
	.resetn(resetn),
	.S_AXIS_tdata(S_AXIS_tdata),
        .S_AXIS_tkeep(S_AXIS_tkeep),
        .S_AXIS_tlast(S_AXIS_tlast),
        .S_AXIS_tready(S_AXIS_tready),
        .S_AXIS_tvalid(S_AXIS_tvalid),
        .M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tkeep(M_AXIS_tkeep),
        .M_AXIS_tlast(M_AXIS_tlast),
        .M_AXIS_tready(M_AXIS_tready),
        .M_AXIS_tvalid(M_AXIS_tvalid)
    );



    pr dut_pr 
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

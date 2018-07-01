`timescale 1 ns/ 1ps

import axi4stream_vip_pkg::*;
import vip_axi4stream_vip_0_0_pkg::*;
import vip_axi4stream_vip_1_0_pkg::*;

module vip_tb(
	input aclk,
	input resetn,
	input [63:0] S_AXIS_tdata,
        input [7:0] S_AXIS_tkeep,
        input S_AXIS_tlast,
        output S_AXIS_tready,
        input S_AXIS_tvalid,
        output [63:0] M_AXIS_tdata,
        output [7:0] M_AXIS_tkeep,
        output M_AXIS_tlast,
        input M_AXIS_tready,
        output M_AXIS_tvalid,



);

    axi4stream_transaction wr_transaction;
    axi4stream_ready_gen ready_gen;
    
    vip_axi4stream_vip_0_0_mst_t mst_agent;
    vip_axi4stream_vip_1_0_slv_t slv_agent;
    
    mst_agent = new("master vip agent",DUT.vip.axi4stream_vip_0_0.inst.IF);
    slv_agent = new("slave vip agent",DUT.vip.axi4stream_vip_1_0.inst.IF);
    

    mst_agent.start_master();
    slv_agent.start_slave();
    
    wr_transaction = mst_agent.driver.create_transaction("write_transaction");
    
    wr_transaction.set_data(64'hc40c02ca553e16fa);
    wt_transaction.set_keep(8'hff);
    wt_transaction.set_last(0);
    mst_agent.wr_driver.send(wr_transaction);

    wr_transaction.set_data(64'h0000007447c0887a);
    wt_transaction.set_keep(8'hff);
    wt_transaction.set_last(0);
    mst_agent.wr_driver.send(wr_transaction);

    wr_transaction.set_data(64'h0100000100030000);
    wt_transaction.set_keep(8'hff);
    wt_transaction.set_last(0);
    mst_agent.wr_driver.send(wr_transaction);

    wr_transaction.set_data(64'h0000000000000000);
    wt_transaction.set_keep(8'hff);
    wt_transaction.set_last(0);
    mst_agent.wr_driver.send(wr_transaction);
    
    wr_transaction.set_data(64'h5073930200000000);
    wt_transaction.set_keep(8'h0f);
    wt_transaction.set_last(1);
    mst_agent.wr_driver.send(wr_transaction);
    
    vip vip_i
        (.aclk_0(clk),
	 .aresetn_0(resetn),
	.M_AXIS_tdata(S_AXIS_tdata),
        .M_AXIS_tkeep(S_AXIS_tkeep),
        .M_AXIS_tlast(S_AXIS_tlast),
        .M_AXIS_tready(S_AXIS_tready),
        .M_AXIS_tvalid(S_AXIS_tvalid),
        .S_AXIS_tdata(M_AXIS_tdata),
        .S_AXIS_tkeep(M_AXIS_tkeep),
        .S_AXIS_tlast(M_AXIS_tlast),
        .S_AXIS_tready(M_AXIS_tready),
        .S_AXIS_tvalid(M_AXIS_tvalid)
	);

endmodule

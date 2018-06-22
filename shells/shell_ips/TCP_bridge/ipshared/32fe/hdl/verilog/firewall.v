// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module firewall (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxData_V_dout,
        rxData_V_empty_n,
        rxData_V_read,
        firewal_read_sid_V_V_dout,
        firewal_read_sid_V_V_empty_n,
        firewal_read_sid_V_V_read,
        rxMetaData_V_V_dout,
        rxMetaData_V_V_empty_n,
        rxMetaData_V_V_read,
        stream_out_V_din,
        stream_out_V_full_n,
        stream_out_V_write,
        firewal_write_dest_V_din,
        firewal_write_dest_V_full_n,
        firewal_write_dest_V_write,
        firewal_write_sid_V_s_din,
        firewal_write_sid_V_s_full_n,
        firewal_write_sid_V_s_write,
        firewal_read_dest_V_s_din,
        firewal_read_dest_V_s_full_n,
        firewal_read_dest_V_s_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [72:0] rxData_V_dout;
input   rxData_V_empty_n;
output   rxData_V_read;
input  [15:0] firewal_read_sid_V_V_dout;
input   firewal_read_sid_V_V_empty_n;
output   firewal_read_sid_V_V_read;
input  [15:0] rxMetaData_V_V_dout;
input   rxMetaData_V_V_empty_n;
output   rxMetaData_V_V_read;
output  [88:0] stream_out_V_din;
input   stream_out_V_full_n;
output   stream_out_V_write;
output  [15:0] firewal_write_dest_V_din;
input   firewal_write_dest_V_full_n;
output   firewal_write_dest_V_write;
output  [15:0] firewal_write_sid_V_s_din;
input   firewal_write_sid_V_s_full_n;
output   firewal_write_sid_V_s_write;
output  [15:0] firewal_read_dest_V_s_din;
input   firewal_read_dest_V_s_full_n;
output   firewal_read_dest_V_s_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxData_V_read;
reg firewal_read_sid_V_V_read;
reg rxMetaData_V_V_read;
reg[88:0] stream_out_V_din;
reg stream_out_V_write;
reg firewal_write_dest_V_write;
reg firewal_write_sid_V_s_write;
reg firewal_read_dest_V_s_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [2:0] ksvs_fsmState_V_load_load_fu_184_p1;
wire   [0:0] packet_last_V_load_load_fu_188_p1;
wire   [0:0] grp_nbreadreq_fu_86_p3;
reg    ap_predicate_op8_read_state1;
wire   [0:0] tmp_10_nbreadreq_fu_100_p3;
reg    ap_predicate_op20_read_state1;
reg    ap_predicate_op25_read_state1;
wire   [0:0] tmp_nbreadreq_fu_114_p3;
reg    ap_predicate_op36_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [2:0] ksvs_fsmState_V_load_reg_326;
reg   [0:0] packet_last_V_load_reg_330;
reg   [0:0] tmp_15_reg_334;
reg    ap_predicate_op52_write_state2;
reg   [0:0] tmp_9_reg_357;
reg    ap_predicate_op67_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [2:0] ksvs_fsmState_V;
reg   [0:0] packet_last_V;
reg   [15:0] sessionID_V;
reg   [7:0] src_V;
reg    rxMetaData_V_V_blk_n;
wire    ap_block_pp0_stage0;
reg    rxData_V_blk_n;
reg    stream_out_V_blk_n;
reg    firewal_read_dest_V_s_blk_n;
reg    firewal_read_sid_V_V_blk_n;
reg    firewal_write_dest_V_blk_n;
reg    firewal_write_sid_V_s_blk_n;
reg   [7:0] reg_180;
wire   [63:0] p_Val2_1_fu_192_p1;
reg   [63:0] p_Val2_1_reg_338;
reg   [0:0] tmp_last_V_1_reg_343;
wire   [15:0] tmp_dest_V_1_fu_196_p1;
reg   [15:0] tmp_dest_V_1_reg_348;
wire   [63:0] p_Val2_s_fu_246_p1;
reg   [63:0] p_Val2_s_reg_361;
reg   [0:0] tmp_last_V_reg_366;
wire   [15:0] tmp_dest_V_fu_250_p1;
reg   [15:0] tmp_dest_V_reg_371;
reg   [7:0] p_Result_1_i_reg_376;
reg    ap_block_pp0_stage0_subdone;
wire   [88:0] tmp_3_fu_288_p5;
reg    ap_block_pp0_stage0_01001;
wire   [88:0] tmp_1_fu_312_p5;
wire   [2:0] storemerge_cast_i_ca_fu_212_p3;
wire   [2:0] storemerge1_cast_i_c_fu_232_p3;
wire   [0:0] tmp_i_fu_226_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_148;
reg    ap_condition_226;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ksvs_fsmState_V = 3'd0;
#0 packet_last_V = 1'd0;
#0 sessionID_V = 16'd0;
#0 src_V = 8'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_148)) begin
        if ((ap_predicate_op36_read_state1 == 1'b1)) begin
            ksvs_fsmState_V <= 3'd1;
        end else if ((ap_predicate_op25_read_state1 == 1'b1)) begin
            ksvs_fsmState_V <= 3'd4;
        end else if ((ap_predicate_op20_read_state1 == 1'b1)) begin
            ksvs_fsmState_V <= storemerge1_cast_i_c_fu_232_p3;
        end else if ((ksvs_fsmState_V_load_load_fu_184_p1 == 3'd2)) begin
            ksvs_fsmState_V <= storemerge_cast_i_ca_fu_212_p3;
        end else if (((packet_last_V_load_load_fu_188_p1 == 1'd1) & (ksvs_fsmState_V == 3'd3))) begin
            ksvs_fsmState_V <= 3'd0;
        end else if ((ap_predicate_op8_read_state1 == 1'b1)) begin
            ksvs_fsmState_V <= 3'd3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ksvs_fsmState_V_load_reg_326 <= ksvs_fsmState_V;
        packet_last_V_load_reg_330 <= packet_last_V;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op25_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Result_1_i_reg_376 <= {{rxData_V_dout[23:16]}};
        p_Val2_s_reg_361 <= p_Val2_s_fu_246_p1;
        tmp_dest_V_reg_371 <= tmp_dest_V_fu_250_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op8_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_1_reg_338 <= p_Val2_1_fu_192_p1;
        tmp_dest_V_1_reg_348 <= tmp_dest_V_1_fu_196_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op25_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op8_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        packet_last_V <= rxData_V_dout[32'd72];
        reg_180 <= {{rxData_V_dout[71:64]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op36_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sessionID_V <= rxMetaData_V_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op25_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_V <= {{rxData_V_dout[23:16]}};
        tmp_last_V_reg_366 <= rxData_V_dout[32'd72];
    end
end

always @ (posedge ap_clk) begin
    if (((packet_last_V == 1'd0) & (ksvs_fsmState_V == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_15_reg_334 <= rxData_V_empty_n;
    end
end

always @ (posedge ap_clk) begin
    if (((ksvs_fsmState_V == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_9_reg_357 <= rxData_V_empty_n;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op8_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_last_V_1_reg_343 <= rxData_V_dout[32'd72];
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op67_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        firewal_read_dest_V_s_blk_n = firewal_read_dest_V_s_full_n;
    end else begin
        firewal_read_dest_V_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op67_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        firewal_read_dest_V_s_write = 1'b1;
    end else begin
        firewal_read_dest_V_s_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op20_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        firewal_read_sid_V_V_blk_n = firewal_read_sid_V_V_empty_n;
    end else begin
        firewal_read_sid_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op20_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        firewal_read_sid_V_V_read = 1'b1;
    end else begin
        firewal_read_sid_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((ksvs_fsmState_V_load_reg_326 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        firewal_write_dest_V_blk_n = firewal_write_dest_V_full_n;
    end else begin
        firewal_write_dest_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ksvs_fsmState_V_load_reg_326 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        firewal_write_dest_V_write = 1'b1;
    end else begin
        firewal_write_dest_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ksvs_fsmState_V_load_reg_326 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        firewal_write_sid_V_s_blk_n = firewal_write_sid_V_s_full_n;
    end else begin
        firewal_write_sid_V_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ksvs_fsmState_V_load_reg_326 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        firewal_write_sid_V_s_write = 1'b1;
    end else begin
        firewal_write_sid_V_s_write = 1'b0;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op25_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op8_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        rxData_V_blk_n = rxData_V_empty_n;
    end else begin
        rxData_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op25_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op8_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        rxData_V_read = 1'b1;
    end else begin
        rxData_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op36_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxMetaData_V_V_blk_n = rxMetaData_V_V_empty_n;
    end else begin
        rxMetaData_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op36_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxMetaData_V_V_read = 1'b1;
    end else begin
        rxMetaData_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op67_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op52_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        stream_out_V_blk_n = stream_out_V_full_n;
    end else begin
        stream_out_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_226)) begin
        if ((ap_predicate_op67_write_state2 == 1'b1)) begin
            stream_out_V_din = tmp_1_fu_312_p5;
        end else if ((ap_predicate_op52_write_state2 == 1'b1)) begin
            stream_out_V_din = tmp_3_fu_288_p5;
        end else begin
            stream_out_V_din = 'bx;
        end
    end else begin
        stream_out_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op67_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op52_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        stream_out_V_write = 1'b1;
    end else begin
        stream_out_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxMetaData_V_V_empty_n == 1'b0) & (ap_predicate_op36_read_state1 == 1'b1)) | ((firewal_read_sid_V_V_empty_n == 1'b0) & (ap_predicate_op20_read_state1 == 1'b1)) | ((rxData_V_empty_n == 1'b0) & (ap_predicate_op25_read_state1 == 1'b1)) | ((rxData_V_empty_n == 1'b0) & (ap_predicate_op8_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((stream_out_V_full_n == 1'b0) & (ap_predicate_op67_write_state2 == 1'b1)) | ((stream_out_V_full_n == 1'b0) & (ap_predicate_op52_write_state2 == 1'b1)) | ((firewal_read_dest_V_s_full_n == 1'b0) & (ap_predicate_op67_write_state2 == 1'b1)) | ((ksvs_fsmState_V_load_reg_326 == 3'd2) & (firewal_write_sid_V_s_full_n == 1'b0)) | ((ksvs_fsmState_V_load_reg_326 == 3'd2) & (firewal_write_dest_V_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxMetaData_V_V_empty_n == 1'b0) & (ap_predicate_op36_read_state1 == 1'b1)) | ((firewal_read_sid_V_V_empty_n == 1'b0) & (ap_predicate_op20_read_state1 == 1'b1)) | ((rxData_V_empty_n == 1'b0) & (ap_predicate_op25_read_state1 == 1'b1)) | ((rxData_V_empty_n == 1'b0) & (ap_predicate_op8_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((stream_out_V_full_n == 1'b0) & (ap_predicate_op67_write_state2 == 1'b1)) | ((stream_out_V_full_n == 1'b0) & (ap_predicate_op52_write_state2 == 1'b1)) | ((firewal_read_dest_V_s_full_n == 1'b0) & (ap_predicate_op67_write_state2 == 1'b1)) | ((ksvs_fsmState_V_load_reg_326 == 3'd2) & (firewal_write_sid_V_s_full_n == 1'b0)) | ((ksvs_fsmState_V_load_reg_326 == 3'd2) & (firewal_write_dest_V_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxMetaData_V_V_empty_n == 1'b0) & (ap_predicate_op36_read_state1 == 1'b1)) | ((firewal_read_sid_V_V_empty_n == 1'b0) & (ap_predicate_op20_read_state1 == 1'b1)) | ((rxData_V_empty_n == 1'b0) & (ap_predicate_op25_read_state1 == 1'b1)) | ((rxData_V_empty_n == 1'b0) & (ap_predicate_op8_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((stream_out_V_full_n == 1'b0) & (ap_predicate_op67_write_state2 == 1'b1)) | ((stream_out_V_full_n == 1'b0) & (ap_predicate_op52_write_state2 == 1'b1)) | ((firewal_read_dest_V_s_full_n == 1'b0) & (ap_predicate_op67_write_state2 == 1'b1)) | ((ksvs_fsmState_V_load_reg_326 == 3'd2) & (firewal_write_sid_V_s_full_n == 1'b0)) | ((ksvs_fsmState_V_load_reg_326 == 3'd2) & (firewal_write_dest_V_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxMetaData_V_V_empty_n == 1'b0) & (ap_predicate_op36_read_state1 == 1'b1)) | ((firewal_read_sid_V_V_empty_n == 1'b0) & (ap_predicate_op20_read_state1 == 1'b1)) | ((rxData_V_empty_n == 1'b0) & (ap_predicate_op25_read_state1 == 1'b1)) | ((rxData_V_empty_n == 1'b0) & (ap_predicate_op8_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((stream_out_V_full_n == 1'b0) & (ap_predicate_op67_write_state2 == 1'b1)) | ((stream_out_V_full_n == 1'b0) & (ap_predicate_op52_write_state2 == 1'b1)) | ((firewal_read_dest_V_s_full_n == 1'b0) & (ap_predicate_op67_write_state2 == 1'b1)) | ((ksvs_fsmState_V_load_reg_326 == 3'd2) & (firewal_write_sid_V_s_full_n == 1'b0)) | ((ksvs_fsmState_V_load_reg_326 == 3'd2) & (firewal_write_dest_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_148 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_226 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op20_read_state1 = ((tmp_10_nbreadreq_fu_100_p3 == 1'd1) & (ksvs_fsmState_V == 3'd4));
end

always @ (*) begin
    ap_predicate_op25_read_state1 = ((grp_nbreadreq_fu_86_p3 == 1'd1) & (ksvs_fsmState_V == 3'd1));
end

always @ (*) begin
    ap_predicate_op36_read_state1 = ((tmp_nbreadreq_fu_114_p3 == 1'd1) & (ksvs_fsmState_V == 3'd0));
end

always @ (*) begin
    ap_predicate_op52_write_state2 = ((tmp_15_reg_334 == 1'd1) & (packet_last_V_load_reg_330 == 1'd0) & (ksvs_fsmState_V_load_reg_326 == 3'd3));
end

always @ (*) begin
    ap_predicate_op67_write_state2 = ((ksvs_fsmState_V_load_reg_326 == 3'd1) & (tmp_9_reg_357 == 1'd1));
end

always @ (*) begin
    ap_predicate_op8_read_state1 = ((grp_nbreadreq_fu_86_p3 == 1'd1) & (packet_last_V == 1'd0) & (ksvs_fsmState_V == 3'd3));
end

assign firewal_read_dest_V_s_din = p_Result_1_i_reg_376;

assign firewal_write_dest_V_din = src_V;

assign firewal_write_sid_V_s_din = sessionID_V;

assign grp_nbreadreq_fu_86_p3 = rxData_V_empty_n;

assign ksvs_fsmState_V_load_load_fu_184_p1 = ksvs_fsmState_V;

assign p_Val2_1_fu_192_p1 = rxData_V_dout[63:0];

assign p_Val2_s_fu_246_p1 = rxData_V_dout[63:0];

assign packet_last_V_load_load_fu_188_p1 = packet_last_V;

assign storemerge1_cast_i_c_fu_232_p3 = ((tmp_i_fu_226_p2[0:0] === 1'b1) ? 3'd2 : 3'd3);

assign storemerge_cast_i_ca_fu_212_p3 = ((packet_last_V[0:0] === 1'b1) ? 3'd0 : 3'd3);

assign tmp_10_nbreadreq_fu_100_p3 = firewal_read_sid_V_V_empty_n;

assign tmp_1_fu_312_p5 = {{{{reg_180}, {tmp_last_V_reg_366}}, {tmp_dest_V_reg_371}}, {p_Val2_s_reg_361}};

assign tmp_3_fu_288_p5 = {{{{reg_180}, {tmp_last_V_1_reg_343}}, {tmp_dest_V_1_reg_348}}, {p_Val2_1_reg_338}};

assign tmp_dest_V_1_fu_196_p1 = rxData_V_dout[15:0];

assign tmp_dest_V_fu_250_p1 = rxData_V_dout[15:0];

assign tmp_i_fu_226_p2 = ((firewal_read_sid_V_V_dout == 16'd1000) ? 1'b1 : 1'b0);

assign tmp_nbreadreq_fu_114_p3 = rxMetaData_V_V_empty_n;

endmodule //firewall

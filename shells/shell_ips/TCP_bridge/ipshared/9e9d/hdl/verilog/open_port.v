// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module open_port (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        listenPortStatus_V_dout,
        listenPortStatus_V_empty_n,
        listenPortStatus_V_read,
        notifications_V_dout,
        notifications_V_empty_n,
        notifications_V_read,
        listenPort_V_V_din,
        listenPort_V_V_full_n,
        listenPort_V_V_write,
        readRequest_V_din,
        readRequest_V_full_n,
        readRequest_V_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   listenPortStatus_V_dout;
input   listenPortStatus_V_empty_n;
output   listenPortStatus_V_read;
input  [80:0] notifications_V_dout;
input   notifications_V_empty_n;
output   notifications_V_read;
output  [15:0] listenPort_V_V_din;
input   listenPort_V_V_full_n;
output   listenPort_V_V_write;
output  [31:0] readRequest_V_din;
input   readRequest_V_full_n;
output   readRequest_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg listenPortStatus_V_read;
reg notifications_V_read;
reg listenPort_V_V_write;
reg readRequest_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] brmerge_fu_117_p2;
wire   [0:0] tmp_nbreadreq_fu_66_p3;
reg    ap_predicate_op11_read_state1;
wire   [0:0] tmp_7_nbreadreq_fu_80_p3;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] brmerge_reg_165;
reg   [0:0] tmp_7_reg_173;
reg   [0:0] tmp_s_reg_177;
reg    ap_predicate_op34_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] listenDone;
reg   [0:0] waitPortStatus;
reg    listenPort_V_V_blk_n;
wire    ap_block_pp0_stage0;
reg    listenPortStatus_V_blk_n;
reg    notifications_V_blk_n;
reg    readRequest_V_blk_n;
wire   [0:0] tmp_s_fu_151_p2;
wire   [31:0] tmp_1_fu_157_p1;
reg   [31:0] tmp_1_reg_181;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] tmp_length_V_fu_141_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_96;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 listenDone = 1'd0;
#0 waitPortStatus = 1'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_96)) begin
        if ((ap_predicate_op11_read_state1 == 1'b1)) begin
            waitPortStatus <= 1'd0;
        end else if ((brmerge_fu_117_p2 == 1'd0)) begin
            waitPortStatus <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        brmerge_reg_165 <= brmerge_fu_117_p2;
        tmp_7_reg_173 <= notifications_V_empty_n;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op11_read_state1 == 1'b1))) begin
        listenDone <= listenPortStatus_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_s_fu_151_p2 == 1'd0) & (tmp_7_nbreadreq_fu_80_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_181 <= tmp_1_fu_157_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_7_nbreadreq_fu_80_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_s_reg_177 <= tmp_s_fu_151_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op11_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        listenPortStatus_V_blk_n = listenPortStatus_V_empty_n;
    end else begin
        listenPortStatus_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op11_read_state1 == 1'b1))) begin
        listenPortStatus_V_read = 1'b1;
    end else begin
        listenPortStatus_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((brmerge_reg_165 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        listenPort_V_V_blk_n = listenPort_V_V_full_n;
    end else begin
        listenPort_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (brmerge_reg_165 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        listenPort_V_V_write = 1'b1;
    end else begin
        listenPort_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_7_nbreadreq_fu_80_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        notifications_V_blk_n = notifications_V_empty_n;
    end else begin
        notifications_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_7_nbreadreq_fu_80_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        notifications_V_read = 1'b1;
    end else begin
        notifications_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op34_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        readRequest_V_blk_n = readRequest_V_full_n;
    end else begin
        readRequest_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op34_write_state2 == 1'b1))) begin
        readRequest_V_write = 1'b1;
    end else begin
        readRequest_V_write = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((readRequest_V_full_n == 1'b0) & (ap_predicate_op34_write_state2 == 1'b1)) | ((brmerge_reg_165 == 1'd0) & (listenPort_V_V_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_7_nbreadreq_fu_80_p3 == 1'd1) & (notifications_V_empty_n == 1'b0)) | ((listenPortStatus_V_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((readRequest_V_full_n == 1'b0) & (ap_predicate_op34_write_state2 == 1'b1)) | ((brmerge_reg_165 == 1'd0) & (listenPort_V_V_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_7_nbreadreq_fu_80_p3 == 1'd1) & (notifications_V_empty_n == 1'b0)) | ((listenPortStatus_V_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((readRequest_V_full_n == 1'b0) & (ap_predicate_op34_write_state2 == 1'b1)) | ((brmerge_reg_165 == 1'd0) & (listenPort_V_V_full_n == 1'b0)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_7_nbreadreq_fu_80_p3 == 1'd1) & (notifications_V_empty_n == 1'b0)) | ((listenPortStatus_V_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_7_nbreadreq_fu_80_p3 == 1'd1) & (notifications_V_empty_n == 1'b0)) | ((listenPortStatus_V_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((readRequest_V_full_n == 1'b0) & (ap_predicate_op34_write_state2 == 1'b1)) | ((brmerge_reg_165 == 1'd0) & (listenPort_V_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_96 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op11_read_state1 = ((tmp_nbreadreq_fu_66_p3 == 1'd1) & (waitPortStatus == 1'd1) & (brmerge_fu_117_p2 == 1'd1));
end

always @ (*) begin
    ap_predicate_op34_write_state2 = ((tmp_s_reg_177 == 1'd0) & (tmp_7_reg_173 == 1'd1));
end

assign brmerge_fu_117_p2 = (waitPortStatus | listenDone);

assign listenPort_V_V_din = 16'd7;

assign readRequest_V_din = tmp_1_reg_181;

assign tmp_1_fu_157_p1 = notifications_V_dout[31:0];

assign tmp_7_nbreadreq_fu_80_p3 = notifications_V_empty_n;

assign tmp_length_V_fu_141_p4 = {{notifications_V_dout[31:16]}};

assign tmp_nbreadreq_fu_66_p3 = listenPortStatus_V_empty_n;

assign tmp_s_fu_151_p2 = ((tmp_length_V_fu_141_p4 == 16'd0) ? 1'b1 : 1'b0);

endmodule //open_port

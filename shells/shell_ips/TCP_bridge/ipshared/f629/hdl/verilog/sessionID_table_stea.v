// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sessionID_table_stea (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        firewal_read_dest_V_s_dout,
        firewal_read_dest_V_s_empty_n,
        firewal_read_dest_V_s_read,
        sessionID_table_V_address0,
        sessionID_table_V_ce0,
        sessionID_table_V_we0,
        sessionID_table_V_d0,
        sessionID_table_V_q0,
        firewal_read_sid_V_V_din,
        firewal_read_sid_V_V_full_n,
        firewal_read_sid_V_V_write,
        firewal_write_dest_V_dout,
        firewal_write_dest_V_empty_n,
        firewal_write_dest_V_read,
        firewal_write_sid_V_s_dout,
        firewal_write_sid_V_s_empty_n,
        firewal_write_sid_V_s_read,
        client_read_dest_V_V_dout,
        client_read_dest_V_V_empty_n,
        client_read_dest_V_V_read,
        client_read_sid_V_V_din,
        client_read_sid_V_V_full_n,
        client_read_sid_V_V_write,
        client_write_dest_V_s_dout,
        client_write_dest_V_s_empty_n,
        client_write_dest_V_s_read,
        client_write_sid_V_V_dout,
        client_write_sid_V_V_empty_n,
        client_write_sid_V_V_read
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] firewal_read_dest_V_s_dout;
input   firewal_read_dest_V_s_empty_n;
output   firewal_read_dest_V_s_read;
output  [7:0] sessionID_table_V_address0;
output   sessionID_table_V_ce0;
output   sessionID_table_V_we0;
output  [31:0] sessionID_table_V_d0;
input  [31:0] sessionID_table_V_q0;
output  [15:0] firewal_read_sid_V_V_din;
input   firewal_read_sid_V_V_full_n;
output   firewal_read_sid_V_V_write;
input  [15:0] firewal_write_dest_V_dout;
input   firewal_write_dest_V_empty_n;
output   firewal_write_dest_V_read;
input  [15:0] firewal_write_sid_V_s_dout;
input   firewal_write_sid_V_s_empty_n;
output   firewal_write_sid_V_s_read;
input  [15:0] client_read_dest_V_V_dout;
input   client_read_dest_V_V_empty_n;
output   client_read_dest_V_V_read;
output  [15:0] client_read_sid_V_V_din;
input   client_read_sid_V_V_full_n;
output   client_read_sid_V_V_write;
input  [15:0] client_write_dest_V_s_dout;
input   client_write_dest_V_s_empty_n;
output   client_write_dest_V_s_read;
input  [15:0] client_write_sid_V_V_dout;
input   client_write_sid_V_V_empty_n;
output   client_write_sid_V_V_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg firewal_read_dest_V_s_read;
reg[7:0] sessionID_table_V_address0;
reg sessionID_table_V_ce0;
reg sessionID_table_V_we0;
reg[31:0] sessionID_table_V_d0;
reg firewal_read_sid_V_V_write;
reg firewal_write_dest_V_read;
reg firewal_write_sid_V_s_read;
reg client_read_dest_V_V_read;
reg client_read_sid_V_V_write;
reg client_write_dest_V_s_read;
reg client_write_sid_V_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    firewal_read_dest_V_s_blk_n;
wire   [0:0] tmp_nbreadreq_fu_40_p3;
reg    firewal_read_sid_V_V_blk_n;
wire    ap_CS_fsm_state2;
reg   [0:0] tmp_reg_214;
reg    firewal_write_dest_V_blk_n;
wire   [0:0] tmp_1_nbreadreq_fu_48_p3;
wire   [0:0] tmp_2_nbreadreq_fu_56_p3;
reg    firewal_write_sid_V_s_blk_n;
reg    client_read_dest_V_V_blk_n;
wire   [0:0] tmp_3_nbreadreq_fu_64_p3;
reg    client_read_sid_V_V_blk_n;
reg   [0:0] tmp_1_reg_218;
reg   [0:0] tmp_3_reg_226;
reg   [0:0] tmp_2_reg_222;
reg    client_write_dest_V_s_blk_n;
wire   [0:0] tmp_4_nbreadreq_fu_72_p3;
wire   [0:0] tmp_5_nbreadreq_fu_80_p3;
reg    client_write_sid_V_V_blk_n;
reg    ap_predicate_op23_read_state1;
reg    ap_predicate_op31_read_state1;
reg    ap_predicate_op35_read_state1;
reg    ap_block_state1;
wire   [63:0] tmp_7_i_fu_174_p1;
wire   [63:0] tmp_i_fu_184_p1;
wire   [63:0] tmp_8_i_fu_189_p1;
wire   [63:0] tmp_2_i_fu_199_p1;
reg    ap_predicate_op48_write_state2;
reg    ap_block_state2;
wire   [31:0] p_3_i_fu_179_p1;
wire   [31:0] p_1_i_fu_194_p1;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if ((~(((tmp_reg_214 == 1'd1) & (firewal_read_sid_V_V_full_n == 1'b0)) | ((client_read_sid_V_V_full_n == 1'b0) & (ap_predicate_op48_write_state2 == 1'b1))) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (tmp_nbreadreq_fu_40_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_1_reg_218 <= firewal_write_dest_V_empty_n;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (tmp_1_nbreadreq_fu_48_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_2_reg_222 <= firewal_write_sid_V_s_empty_n;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (((tmp_1_nbreadreq_fu_48_p3 == 1'd0) & (tmp_nbreadreq_fu_40_p3 == 1'd0)) | ((tmp_2_nbreadreq_fu_56_p3 == 1'd0) & (tmp_nbreadreq_fu_40_p3 == 1'd0))))) begin
        tmp_3_reg_226 <= client_read_dest_V_V_empty_n;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_214 <= firewal_read_dest_V_s_empty_n;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_214 == 1'd1) & (firewal_read_sid_V_V_full_n == 1'b0)) | ((client_read_sid_V_V_full_n == 1'b0) & (ap_predicate_op48_write_state2 == 1'b1))) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_214 == 1'd1) & (firewal_read_sid_V_V_full_n == 1'b0)) | ((client_read_sid_V_V_full_n == 1'b0) & (ap_predicate_op48_write_state2 == 1'b1))) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1) & (((tmp_2_nbreadreq_fu_56_p3 == 1'd0) & (tmp_3_nbreadreq_fu_64_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0)) | ((tmp_1_nbreadreq_fu_48_p3 == 1'd0) & (tmp_3_nbreadreq_fu_64_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0))))) begin
        client_read_dest_V_V_blk_n = client_read_dest_V_V_empty_n;
    end else begin
        client_read_dest_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op31_read_state1 == 1'b1))) begin
        client_read_dest_V_V_read = 1'b1;
    end else begin
        client_read_dest_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (((tmp_2_reg_222 == 1'd0) & (tmp_reg_214 == 1'd0) & (tmp_3_reg_226 == 1'd1)) | ((tmp_1_reg_218 == 1'd0) & (tmp_reg_214 == 1'd0) & (tmp_3_reg_226 == 1'd1))))) begin
        client_read_sid_V_V_blk_n = client_read_sid_V_V_full_n;
    end else begin
        client_read_sid_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_214 == 1'd1) & (firewal_read_sid_V_V_full_n == 1'b0)) | ((client_read_sid_V_V_full_n == 1'b0) & (ap_predicate_op48_write_state2 == 1'b1))) & (1'b1 == ap_CS_fsm_state2) & (ap_predicate_op48_write_state2 == 1'b1))) begin
        client_read_sid_V_V_write = 1'b1;
    end else begin
        client_read_sid_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1) & (((tmp_3_nbreadreq_fu_64_p3 == 1'd0) & (tmp_1_nbreadreq_fu_48_p3 == 1'd0) & (tmp_5_nbreadreq_fu_80_p3 == 1'd1) & (tmp_4_nbreadreq_fu_72_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0)) | ((tmp_3_nbreadreq_fu_64_p3 == 1'd0) & (tmp_2_nbreadreq_fu_56_p3 == 1'd0) & (tmp_5_nbreadreq_fu_80_p3 == 1'd1) & (tmp_4_nbreadreq_fu_72_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0))))) begin
        client_write_dest_V_s_blk_n = client_write_dest_V_s_empty_n;
    end else begin
        client_write_dest_V_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op23_read_state1 == 1'b1))) begin
        client_write_dest_V_s_read = 1'b1;
    end else begin
        client_write_dest_V_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1) & (((tmp_3_nbreadreq_fu_64_p3 == 1'd0) & (tmp_1_nbreadreq_fu_48_p3 == 1'd0) & (tmp_5_nbreadreq_fu_80_p3 == 1'd1) & (tmp_4_nbreadreq_fu_72_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0)) | ((tmp_3_nbreadreq_fu_64_p3 == 1'd0) & (tmp_2_nbreadreq_fu_56_p3 == 1'd0) & (tmp_5_nbreadreq_fu_80_p3 == 1'd1) & (tmp_4_nbreadreq_fu_72_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0))))) begin
        client_write_sid_V_V_blk_n = client_write_sid_V_V_empty_n;
    end else begin
        client_write_sid_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op23_read_state1 == 1'b1))) begin
        client_write_sid_V_V_read = 1'b1;
    end else begin
        client_write_sid_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_nbreadreq_fu_40_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        firewal_read_dest_V_s_blk_n = firewal_read_dest_V_s_empty_n;
    end else begin
        firewal_read_dest_V_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (tmp_nbreadreq_fu_40_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        firewal_read_dest_V_s_read = 1'b1;
    end else begin
        firewal_read_dest_V_s_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_214 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        firewal_read_sid_V_V_blk_n = firewal_read_sid_V_V_full_n;
    end else begin
        firewal_read_sid_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_214 == 1'd1) & (firewal_read_sid_V_V_full_n == 1'b0)) | ((client_read_sid_V_V_full_n == 1'b0) & (ap_predicate_op48_write_state2 == 1'b1))) & (tmp_reg_214 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        firewal_read_sid_V_V_write = 1'b1;
    end else begin
        firewal_read_sid_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_2_nbreadreq_fu_56_p3 == 1'd1) & (tmp_1_nbreadreq_fu_48_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        firewal_write_dest_V_blk_n = firewal_write_dest_V_empty_n;
    end else begin
        firewal_write_dest_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op35_read_state1 == 1'b1))) begin
        firewal_write_dest_V_read = 1'b1;
    end else begin
        firewal_write_dest_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_2_nbreadreq_fu_56_p3 == 1'd1) & (tmp_1_nbreadreq_fu_48_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        firewal_write_sid_V_s_blk_n = firewal_write_sid_V_s_empty_n;
    end else begin
        firewal_write_sid_V_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op35_read_state1 == 1'b1))) begin
        firewal_write_sid_V_s_read = 1'b1;
    end else begin
        firewal_write_sid_V_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if ((tmp_nbreadreq_fu_40_p3 == 1'd1)) begin
            sessionID_table_V_address0 = tmp_2_i_fu_199_p1;
        end else if ((ap_predicate_op35_read_state1 == 1'b1)) begin
            sessionID_table_V_address0 = tmp_8_i_fu_189_p1;
        end else if ((ap_predicate_op31_read_state1 == 1'b1)) begin
            sessionID_table_V_address0 = tmp_i_fu_184_p1;
        end else if ((ap_predicate_op23_read_state1 == 1'b1)) begin
            sessionID_table_V_address0 = tmp_7_i_fu_174_p1;
        end else begin
            sessionID_table_V_address0 = 'bx;
        end
    end else begin
        sessionID_table_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (tmp_nbreadreq_fu_40_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op35_read_state1 == 1'b1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op31_read_state1 == 1'b1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op23_read_state1 == 1'b1)))) begin
        sessionID_table_V_ce0 = 1'b1;
    end else begin
        sessionID_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if ((ap_predicate_op35_read_state1 == 1'b1)) begin
            sessionID_table_V_d0 = p_1_i_fu_194_p1;
        end else if ((ap_predicate_op23_read_state1 == 1'b1)) begin
            sessionID_table_V_d0 = p_3_i_fu_179_p1;
        end else begin
            sessionID_table_V_d0 = 'bx;
        end
    end else begin
        sessionID_table_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op35_read_state1 == 1'b1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op23_read_state1 == 1'b1)))) begin
        sessionID_table_V_we0 = 1'b1;
    end else begin
        sessionID_table_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~(((tmp_reg_214 == 1'd1) & (firewal_read_sid_V_V_full_n == 1'b0)) | ((client_read_sid_V_V_full_n == 1'b0) & (ap_predicate_op48_write_state2 == 1'b1))) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p3 == 1'd1) & (firewal_read_dest_V_s_empty_n == 1'b0)) | ((firewal_write_sid_V_s_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((firewal_write_dest_V_empty_n == 1'b0) & (ap_predicate_op35_read_state1 == 1'b1)) | ((client_read_dest_V_V_empty_n == 1'b0) & (ap_predicate_op31_read_state1 == 1'b1)) | ((client_write_sid_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((client_write_dest_V_s_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2 = (((tmp_reg_214 == 1'd1) & (firewal_read_sid_V_V_full_n == 1'b0)) | ((client_read_sid_V_V_full_n == 1'b0) & (ap_predicate_op48_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_predicate_op23_read_state1 = (((tmp_3_nbreadreq_fu_64_p3 == 1'd0) & (tmp_1_nbreadreq_fu_48_p3 == 1'd0) & (tmp_5_nbreadreq_fu_80_p3 == 1'd1) & (tmp_4_nbreadreq_fu_72_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0)) | ((tmp_3_nbreadreq_fu_64_p3 == 1'd0) & (tmp_2_nbreadreq_fu_56_p3 == 1'd0) & (tmp_5_nbreadreq_fu_80_p3 == 1'd1) & (tmp_4_nbreadreq_fu_72_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0)));
end

always @ (*) begin
    ap_predicate_op31_read_state1 = (((tmp_2_nbreadreq_fu_56_p3 == 1'd0) & (tmp_3_nbreadreq_fu_64_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0)) | ((tmp_1_nbreadreq_fu_48_p3 == 1'd0) & (tmp_3_nbreadreq_fu_64_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0)));
end

always @ (*) begin
    ap_predicate_op35_read_state1 = ((tmp_2_nbreadreq_fu_56_p3 == 1'd1) & (tmp_1_nbreadreq_fu_48_p3 == 1'd1) & (tmp_nbreadreq_fu_40_p3 == 1'd0));
end

always @ (*) begin
    ap_predicate_op48_write_state2 = (((tmp_2_reg_222 == 1'd0) & (tmp_reg_214 == 1'd0) & (tmp_3_reg_226 == 1'd1)) | ((tmp_1_reg_218 == 1'd0) & (tmp_reg_214 == 1'd0) & (tmp_3_reg_226 == 1'd1)));
end

assign client_read_sid_V_V_din = sessionID_table_V_q0[15:0];

assign firewal_read_sid_V_V_din = sessionID_table_V_q0[15:0];

assign p_1_i_fu_194_p1 = firewal_write_sid_V_s_dout;

assign p_3_i_fu_179_p1 = client_write_sid_V_V_dout;

assign tmp_1_nbreadreq_fu_48_p3 = firewal_write_dest_V_empty_n;

assign tmp_2_i_fu_199_p1 = firewal_read_dest_V_s_dout;

assign tmp_2_nbreadreq_fu_56_p3 = firewal_write_sid_V_s_empty_n;

assign tmp_3_nbreadreq_fu_64_p3 = client_read_dest_V_V_empty_n;

assign tmp_4_nbreadreq_fu_72_p3 = client_write_dest_V_s_empty_n;

assign tmp_5_nbreadreq_fu_80_p3 = client_write_sid_V_V_empty_n;

assign tmp_7_i_fu_174_p1 = client_write_dest_V_s_dout;

assign tmp_8_i_fu_189_p1 = firewal_write_dest_V_dout;

assign tmp_i_fu_184_p1 = client_read_dest_V_V_dout;

assign tmp_nbreadreq_fu_40_p3 = firewal_read_dest_V_s_empty_n;

endmodule //sessionID_table_stea

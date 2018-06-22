// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module client (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        stream_in_V_dout,
        stream_in_V_empty_n,
        stream_in_V_read,
        sessionID_fifo_V_V_dout,
        sessionID_fifo_V_V_empty_n,
        sessionID_fifo_V_V_read,
        client_read_sid_V_V_dout,
        client_read_sid_V_V_empty_n,
        client_read_sid_V_V_read,
        txStatus_V_V_dout,
        txStatus_V_V_empty_n,
        txStatus_V_V_read,
        txData_V_din,
        txData_V_full_n,
        txData_V_write,
        txMetaData_V_din,
        txMetaData_V_full_n,
        txMetaData_V_write,
        client_write_sid_V_V_din,
        client_write_sid_V_V_full_n,
        client_write_sid_V_V_write,
        client_write_dest_V_s_din,
        client_write_dest_V_s_full_n,
        client_write_dest_V_s_write,
        ip_fifo_V_V_din,
        ip_fifo_V_V_full_n,
        ip_fifo_V_V_write,
        client_read_dest_V_V_din,
        client_read_dest_V_V_full_n,
        client_read_dest_V_V_write,
        start_out,
        start_write,
        ip_table_V_address0,
        ip_table_V_ce0,
        ip_table_V_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [88:0] stream_in_V_dout;
input   stream_in_V_empty_n;
output   stream_in_V_read;
input  [15:0] sessionID_fifo_V_V_dout;
input   sessionID_fifo_V_V_empty_n;
output   sessionID_fifo_V_V_read;
input  [15:0] client_read_sid_V_V_dout;
input   client_read_sid_V_V_empty_n;
output   client_read_sid_V_V_read;
input  [16:0] txStatus_V_V_dout;
input   txStatus_V_V_empty_n;
output   txStatus_V_V_read;
output  [72:0] txData_V_din;
input   txData_V_full_n;
output   txData_V_write;
output  [31:0] txMetaData_V_din;
input   txMetaData_V_full_n;
output   txMetaData_V_write;
output  [15:0] client_write_sid_V_V_din;
input   client_write_sid_V_V_full_n;
output   client_write_sid_V_V_write;
output  [15:0] client_write_dest_V_s_din;
input   client_write_dest_V_s_full_n;
output   client_write_dest_V_s_write;
output  [31:0] ip_fifo_V_V_din;
input   ip_fifo_V_V_full_n;
output   ip_fifo_V_V_write;
output  [15:0] client_read_dest_V_V_din;
input   client_read_dest_V_V_full_n;
output   client_read_dest_V_V_write;
output   start_out;
output   start_write;
output  [7:0] ip_table_V_address0;
output   ip_table_V_ce0;
input  [31:0] ip_table_V_q0;

reg ap_done;
reg ap_idle;
reg stream_in_V_read;
reg sessionID_fifo_V_V_read;
reg client_read_sid_V_V_read;
reg txStatus_V_V_read;
reg[72:0] txData_V_din;
reg txData_V_write;
reg[31:0] txMetaData_V_din;
reg txMetaData_V_write;
reg client_write_sid_V_V_write;
reg client_write_dest_V_s_write;
reg ip_fifo_V_V_write;
reg client_read_dest_V_V_write;
reg start_write;
reg ip_table_V_ce0;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    internal_ap_ready;
wire   [2:0] esac_fsmState_V_load_load_fu_330_p1;
wire   [0:0] grp_nbreadreq_fu_132_p3;
reg    ap_predicate_op9_read_state1;
wire   [0:0] tmp_19_nbreadreq_fu_146_p3;
reg    ap_predicate_op23_read_state1;
wire   [0:0] tmp_18_nbreadreq_fu_160_p3;
reg    ap_predicate_op30_read_state1;
reg    ap_predicate_op45_read_state1;
wire   [0:0] tmp_25_nbreadreq_fu_174_p3;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [2:0] esac_fsmState_V_load_reg_473;
reg   [0:0] tmp_20_reg_493;
reg    ap_predicate_op75_write_state2;
reg   [0:0] tmp_19_reg_512;
reg   [0:0] tmp_10_i_reg_523;
reg    ap_predicate_op85_write_state2;
reg    ap_predicate_op90_write_state2;
reg    ap_predicate_op92_write_state2;
reg   [0:0] tmp_18_reg_527;
reg   [0:0] tmp_i_reg_537;
reg   [0:0] tmp_12_i_reg_541;
reg    ap_predicate_op97_write_state2;
reg    ap_predicate_op102_write_state2;
reg    ap_predicate_op105_write_state2;
reg   [0:0] tmp_reg_550;
reg    ap_predicate_op109_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [2:0] esac_fsmState_V;
reg   [63:0] packet_data_V;
reg   [15:0] packet_dest_V;
reg   [0:0] packet_last_V_1;
reg   [7:0] packet_keep_V;
reg    stream_in_V_blk_n;
wire    ap_block_pp0_stage0;
reg    txStatus_V_V_blk_n;
reg    txMetaData_V_blk_n;
reg    txData_V_blk_n;
reg    client_read_dest_V_V_blk_n;
reg    client_read_sid_V_V_blk_n;
reg    ip_fifo_V_V_blk_n;
reg    sessionID_fifo_V_V_blk_n;
reg    client_write_sid_V_V_blk_n;
reg    client_write_dest_V_s_blk_n;
reg   [63:0] p_Val2_s_reg_477;
reg   [15:0] tmp_V_17_reg_483;
reg   [0:0] currWord_last_V_reg_488;
wire   [63:0] currWord_data_V_fu_347_p1;
reg   [63:0] currWord_data_V_reg_497;
wire   [0:0] grp_fu_270_p3;
reg   [0:0] currWord_last_V_1_reg_502;
reg   [7:0] currWord_keep_V_1_reg_507;
reg   [15:0] tmp_V_16_reg_516;
wire   [0:0] grp_fu_309_p2;
reg   [15:0] tmp_V_18_reg_531;
wire   [0:0] tmp_i_fu_383_p2;
reg   [15:0] tmp_V_reg_554;
reg    ap_block_pp0_stage0_subdone;
reg   [1:0] ap_phi_mux_storemerge2_i_phi_fu_246_p4;
wire   [1:0] ap_phi_reg_pp0_iter0_storemerge2_i_reg_243;
wire   [63:0] tmp_11_i_fu_389_p1;
wire   [72:0] tmp_7_fu_420_p4;
reg    ap_block_pp0_stage0_01001;
wire   [72:0] tmp_5_fu_432_p4;
wire   [31:0] tmp_3_fu_441_p3;
wire   [31:0] tmp_4_fu_449_p3;
wire   [31:0] tmp_1_fu_457_p3;
wire   [31:0] tmp_2_fu_465_p3;
wire   [2:0] storemerge_cast_i_ca_fu_363_p3;
wire   [2:0] storemerge2_cast_i_fu_394_p1;
wire   [63:0] tmp_21_fu_404_p1;
wire   [7:0] grp_fu_300_p4;
wire   [15:0] grp_fu_315_p4;
wire   [15:0] grp_fu_324_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_489;
reg    ap_condition_369;
reg    ap_condition_213;
reg    ap_condition_343;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 esac_fsmState_V = 3'd0;
#0 packet_data_V = 64'd0;
#0 packet_dest_V = 16'd0;
#0 packet_last_V_1 = 1'd0;
#0 packet_keep_V = 8'd0;
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= real_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_213)) begin
        if ((ap_predicate_op45_read_state1 == 1'b1)) begin
            esac_fsmState_V <= 3'd4;
        end else if (((tmp_18_nbreadreq_fu_160_p3 == 1'd1) & (esac_fsmState_V == 3'd4))) begin
            esac_fsmState_V <= storemerge2_cast_i_fu_394_p1;
        end else if (((tmp_19_nbreadreq_fu_146_p3 == 1'd1) & (esac_fsmState_V == 3'd1))) begin
            esac_fsmState_V <= 3'd2;
        end else if ((esac_fsmState_V_load_load_fu_330_p1 == 3'd2)) begin
            esac_fsmState_V <= storemerge_cast_i_ca_fu_363_p3;
        end else if ((1'b1 == ap_condition_369)) begin
            esac_fsmState_V <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_213)) begin
        if ((ap_predicate_op45_read_state1 == 1'b1)) begin
            packet_data_V <= tmp_21_fu_404_p1;
        end else if ((ap_predicate_op9_read_state1 == 1'b1)) begin
            packet_data_V <= currWord_data_V_fu_347_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1))) begin
        currWord_data_V_reg_497 <= currWord_data_V_fu_347_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1))) begin
        currWord_keep_V_1_reg_507 <= {{stream_in_V_dout[88:81]}};
        currWord_last_V_1_reg_502 <= stream_in_V_dout[32'd80];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        currWord_last_V_reg_488 <= packet_last_V_1;
        esac_fsmState_V_load_reg_473 <= esac_fsmState_V;
        p_Val2_s_reg_477 <= packet_data_V;
        tmp_V_17_reg_483 <= packet_dest_V;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op45_read_state1 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1)))) begin
        packet_dest_V <= {{stream_in_V_dout[79:64]}};
        packet_keep_V <= {{stream_in_V_dout[88:81]}};
        packet_last_V_1 <= stream_in_V_dout[32'd80];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op23_read_state1 == 1'b1))) begin
        tmp_10_i_reg_523 <= grp_fu_309_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_18_nbreadreq_fu_160_p3 == 1'd1) & (esac_fsmState_V == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_i_fu_383_p2 == 1'd0))) begin
        tmp_12_i_reg_541 <= grp_fu_309_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((esac_fsmState_V == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_18_reg_527 <= client_read_sid_V_V_empty_n;
    end
end

always @ (posedge ap_clk) begin
    if (((esac_fsmState_V == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_19_reg_512 <= sessionID_fifo_V_V_empty_n;
    end
end

always @ (posedge ap_clk) begin
    if (((esac_fsmState_V == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_20_reg_493 <= stream_in_V_empty_n;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op23_read_state1 == 1'b1))) begin
        tmp_V_16_reg_516 <= sessionID_fifo_V_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op30_read_state1 == 1'b1))) begin
        tmp_V_18_reg_531 <= client_read_sid_V_V_dout;
        tmp_i_reg_537 <= tmp_i_fu_383_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op45_read_state1 == 1'b1))) begin
        tmp_V_reg_554 <= {{stream_in_V_dout[79:64]}};
    end
end

always @ (posedge ap_clk) begin
    if (((esac_fsmState_V == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_550 <= stream_in_V_empty_n;
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
    if (((real_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_condition_489)) begin
        if ((tmp_i_fu_383_p2 == 1'd0)) begin
            ap_phi_mux_storemerge2_i_phi_fu_246_p4 = 2'd2;
        end else if ((tmp_i_fu_383_p2 == 1'd1)) begin
            ap_phi_mux_storemerge2_i_phi_fu_246_p4 = 2'd1;
        end else begin
            ap_phi_mux_storemerge2_i_phi_fu_246_p4 = ap_phi_reg_pp0_iter0_storemerge2_i_reg_243;
        end
    end else begin
        ap_phi_mux_storemerge2_i_phi_fu_246_p4 = ap_phi_reg_pp0_iter0_storemerge2_i_reg_243;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op109_write_state2 == 1'b1))) begin
        client_read_dest_V_V_blk_n = client_read_dest_V_V_full_n;
    end else begin
        client_read_dest_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op109_write_state2 == 1'b1))) begin
        client_read_dest_V_V_write = 1'b1;
    end else begin
        client_read_dest_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op30_read_state1 == 1'b1))) begin
        client_read_sid_V_V_blk_n = client_read_sid_V_V_empty_n;
    end else begin
        client_read_sid_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op30_read_state1 == 1'b1))) begin
        client_read_sid_V_V_read = 1'b1;
    end else begin
        client_read_sid_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op92_write_state2 == 1'b1))) begin
        client_write_dest_V_s_blk_n = client_write_dest_V_s_full_n;
    end else begin
        client_write_dest_V_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op92_write_state2 == 1'b1))) begin
        client_write_dest_V_s_write = 1'b1;
    end else begin
        client_write_dest_V_s_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op92_write_state2 == 1'b1))) begin
        client_write_sid_V_V_blk_n = client_write_sid_V_V_full_n;
    end else begin
        client_write_sid_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op92_write_state2 == 1'b1))) begin
        client_write_sid_V_V_write = 1'b1;
    end else begin
        client_write_sid_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op105_write_state2 == 1'b1))) begin
        ip_fifo_V_V_blk_n = ip_fifo_V_V_full_n;
    end else begin
        ip_fifo_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op105_write_state2 == 1'b1))) begin
        ip_fifo_V_V_write = 1'b1;
    end else begin
        ip_fifo_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ip_table_V_ce0 = 1'b1;
    end else begin
        ip_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op23_read_state1 == 1'b1))) begin
        sessionID_fifo_V_V_blk_n = sessionID_fifo_V_V_empty_n;
    end else begin
        sessionID_fifo_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op23_read_state1 == 1'b1))) begin
        sessionID_fifo_V_V_read = 1'b1;
    end else begin
        sessionID_fifo_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if (((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op45_read_state1 == 1'b1)) | (~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1)))) begin
        stream_in_V_blk_n = stream_in_V_empty_n;
    end else begin
        stream_in_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op45_read_state1 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1)))) begin
        stream_in_V_read = 1'b1;
    end else begin
        stream_in_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (esac_fsmState_V_load_reg_473 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op75_write_state2 == 1'b1)))) begin
        txData_V_blk_n = txData_V_full_n;
    end else begin
        txData_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_343)) begin
        if ((esac_fsmState_V_load_reg_473 == 3'd2)) begin
            txData_V_din = tmp_5_fu_432_p4;
        end else if ((ap_predicate_op75_write_state2 == 1'b1)) begin
            txData_V_din = tmp_7_fu_420_p4;
        end else begin
            txData_V_din = 'bx;
        end
    end else begin
        txData_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (esac_fsmState_V_load_reg_473 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op75_write_state2 == 1'b1)))) begin
        txData_V_write = 1'b1;
    end else begin
        txData_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op102_write_state2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op97_write_state2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op90_write_state2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op85_write_state2 == 1'b1)))) begin
        txMetaData_V_blk_n = txMetaData_V_full_n;
    end else begin
        txMetaData_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_343)) begin
        if ((ap_predicate_op102_write_state2 == 1'b1)) begin
            txMetaData_V_din = tmp_2_fu_465_p3;
        end else if ((ap_predicate_op97_write_state2 == 1'b1)) begin
            txMetaData_V_din = tmp_1_fu_457_p3;
        end else if ((ap_predicate_op90_write_state2 == 1'b1)) begin
            txMetaData_V_din = tmp_4_fu_449_p3;
        end else if ((ap_predicate_op85_write_state2 == 1'b1)) begin
            txMetaData_V_din = tmp_3_fu_441_p3;
        end else begin
            txMetaData_V_din = 'bx;
        end
    end else begin
        txMetaData_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op102_write_state2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op97_write_state2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op90_write_state2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op85_write_state2 == 1'b1)))) begin
        txMetaData_V_write = 1'b1;
    end else begin
        txMetaData_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_25_nbreadreq_fu_174_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txStatus_V_V_blk_n = txStatus_V_V_empty_n;
    end else begin
        txStatus_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_25_nbreadreq_fu_174_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txStatus_V_V_read = 1'b1;
    end else begin
        txStatus_V_V_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((real_start == 1'b1) & ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_25_nbreadreq_fu_174_p3 == 1'd1) & (txStatus_V_V_empty_n == 1'b0)) | ((client_read_sid_V_V_empty_n == 1'b0) & (ap_predicate_op30_read_state1 == 1'b1)) | ((sessionID_fifo_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((stream_in_V_empty_n == 1'b0) & (ap_predicate_op45_read_state1 == 1'b1)) | ((stream_in_V_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((client_read_dest_V_V_full_n == 1'b0) & (ap_predicate_op109_write_state2 == 1'b1)) | ((ip_fifo_V_V_full_n == 1'b0) & (ap_predicate_op105_write_state2 == 1'b1)) | ((client_write_dest_V_s_full_n == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((client_write_sid_V_V_full_n == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op102_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op97_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op90_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op85_write_state2 == 1'b1)) | ((txData_V_full_n == 1'b0) & (esac_fsmState_V_load_reg_473 == 3'd2)) | ((txData_V_full_n == 1'b0) & (ap_predicate_op75_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((real_start == 1'b1) & ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_25_nbreadreq_fu_174_p3 == 1'd1) & (txStatus_V_V_empty_n == 1'b0)) | ((client_read_sid_V_V_empty_n == 1'b0) & (ap_predicate_op30_read_state1 == 1'b1)) | ((sessionID_fifo_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((stream_in_V_empty_n == 1'b0) & (ap_predicate_op45_read_state1 == 1'b1)) | ((stream_in_V_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((client_read_dest_V_V_full_n == 1'b0) & (ap_predicate_op109_write_state2 == 1'b1)) | ((ip_fifo_V_V_full_n == 1'b0) & (ap_predicate_op105_write_state2 == 1'b1)) | ((client_write_dest_V_s_full_n == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((client_write_sid_V_V_full_n == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op102_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op97_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op90_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op85_write_state2 == 1'b1)) | ((txData_V_full_n == 1'b0) & (esac_fsmState_V_load_reg_473 == 3'd2)) | ((txData_V_full_n == 1'b0) & (ap_predicate_op75_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((real_start == 1'b1) & ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_25_nbreadreq_fu_174_p3 == 1'd1) & (txStatus_V_V_empty_n == 1'b0)) | ((client_read_sid_V_V_empty_n == 1'b0) & (ap_predicate_op30_read_state1 == 1'b1)) | ((sessionID_fifo_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((stream_in_V_empty_n == 1'b0) & (ap_predicate_op45_read_state1 == 1'b1)) | ((stream_in_V_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((client_read_dest_V_V_full_n == 1'b0) & (ap_predicate_op109_write_state2 == 1'b1)) | ((ip_fifo_V_V_full_n == 1'b0) & (ap_predicate_op105_write_state2 == 1'b1)) | ((client_write_dest_V_s_full_n == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((client_write_sid_V_V_full_n == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op102_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op97_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op90_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op85_write_state2 == 1'b1)) | ((txData_V_full_n == 1'b0) & (esac_fsmState_V_load_reg_473 == 3'd2)) | ((txData_V_full_n == 1'b0) & (ap_predicate_op75_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_25_nbreadreq_fu_174_p3 == 1'd1) & (txStatus_V_V_empty_n == 1'b0)) | ((client_read_sid_V_V_empty_n == 1'b0) & (ap_predicate_op30_read_state1 == 1'b1)) | ((sessionID_fifo_V_V_empty_n == 1'b0) & (ap_predicate_op23_read_state1 == 1'b1)) | ((stream_in_V_empty_n == 1'b0) & (ap_predicate_op45_read_state1 == 1'b1)) | ((stream_in_V_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((client_read_dest_V_V_full_n == 1'b0) & (ap_predicate_op109_write_state2 == 1'b1)) | ((ip_fifo_V_V_full_n == 1'b0) & (ap_predicate_op105_write_state2 == 1'b1)) | ((client_write_dest_V_s_full_n == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((client_write_sid_V_V_full_n == 1'b0) & (ap_predicate_op92_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op102_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op97_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op90_write_state2 == 1'b1)) | ((txMetaData_V_full_n == 1'b0) & (ap_predicate_op85_write_state2 == 1'b1)) | ((txData_V_full_n == 1'b0) & (esac_fsmState_V_load_reg_473 == 3'd2)) | ((txData_V_full_n == 1'b0) & (ap_predicate_op75_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_condition_213 = ((1'b0 == ap_block_pp0_stage0_11001) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_343 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_369 = ((grp_fu_270_p3 == 1'd1) & (grp_nbreadreq_fu_132_p3 == 1'd1) & (esac_fsmState_V == 3'd3));
end

always @ (*) begin
    ap_condition_489 = ((tmp_18_nbreadreq_fu_160_p3 == 1'd1) & (esac_fsmState_V == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = real_start;

assign ap_phi_reg_pp0_iter0_storemerge2_i_reg_243 = 'bx;

always @ (*) begin
    ap_predicate_op102_write_state2 = ((esac_fsmState_V_load_reg_473 == 3'd4) & (tmp_12_i_reg_541 == 1'd1) & (tmp_18_reg_527 == 1'd1) & (tmp_i_reg_537 == 1'd0));
end

always @ (*) begin
    ap_predicate_op105_write_state2 = ((esac_fsmState_V_load_reg_473 == 3'd4) & (tmp_i_reg_537 == 1'd1) & (tmp_18_reg_527 == 1'd1));
end

always @ (*) begin
    ap_predicate_op109_write_state2 = ((esac_fsmState_V_load_reg_473 == 3'd0) & (tmp_reg_550 == 1'd1));
end

always @ (*) begin
    ap_predicate_op23_read_state1 = ((tmp_19_nbreadreq_fu_146_p3 == 1'd1) & (esac_fsmState_V == 3'd1));
end

always @ (*) begin
    ap_predicate_op30_read_state1 = ((tmp_18_nbreadreq_fu_160_p3 == 1'd1) & (esac_fsmState_V == 3'd4));
end

always @ (*) begin
    ap_predicate_op45_read_state1 = ((grp_nbreadreq_fu_132_p3 == 1'd1) & (esac_fsmState_V == 3'd0));
end

always @ (*) begin
    ap_predicate_op75_write_state2 = ((tmp_20_reg_493 == 1'd1) & (esac_fsmState_V_load_reg_473 == 3'd3));
end

always @ (*) begin
    ap_predicate_op85_write_state2 = ((esac_fsmState_V_load_reg_473 == 3'd1) & (tmp_19_reg_512 == 1'd1) & (tmp_10_i_reg_523 == 1'd0));
end

always @ (*) begin
    ap_predicate_op90_write_state2 = ((esac_fsmState_V_load_reg_473 == 3'd1) & (tmp_10_i_reg_523 == 1'd1) & (tmp_19_reg_512 == 1'd1));
end

always @ (*) begin
    ap_predicate_op92_write_state2 = ((esac_fsmState_V_load_reg_473 == 3'd1) & (tmp_19_reg_512 == 1'd1));
end

always @ (*) begin
    ap_predicate_op97_write_state2 = ((esac_fsmState_V_load_reg_473 == 3'd4) & (tmp_18_reg_527 == 1'd1) & (tmp_12_i_reg_541 == 1'd0) & (tmp_i_reg_537 == 1'd0));
end

always @ (*) begin
    ap_predicate_op9_read_state1 = ((grp_nbreadreq_fu_132_p3 == 1'd1) & (esac_fsmState_V == 3'd3));
end

assign ap_ready = internal_ap_ready;

assign client_read_dest_V_V_din = tmp_V_reg_554;

assign client_write_dest_V_s_din = tmp_V_17_reg_483;

assign client_write_sid_V_V_din = tmp_V_16_reg_516;

assign currWord_data_V_fu_347_p1 = stream_in_V_dout[63:0];

assign esac_fsmState_V_load_load_fu_330_p1 = esac_fsmState_V;

assign grp_fu_270_p3 = stream_in_V_dout[32'd80];

assign grp_fu_300_p4 = {{packet_data_V[31:24]}};

assign grp_fu_309_p2 = ((grp_fu_300_p4 == 8'd2) ? 1'b1 : 1'b0);

assign grp_fu_315_p4 = {{p_Val2_s_reg_477[47:32]}};

assign grp_fu_324_p2 = (grp_fu_315_p4 + 16'd8);

assign grp_nbreadreq_fu_132_p3 = stream_in_V_empty_n;

assign ip_fifo_V_V_din = ip_table_V_q0;

assign ip_table_V_address0 = tmp_11_i_fu_389_p1;

assign start_out = real_start;

assign storemerge2_cast_i_fu_394_p1 = ap_phi_mux_storemerge2_i_phi_fu_246_p4;

assign storemerge_cast_i_ca_fu_363_p3 = ((packet_last_V_1[0:0] === 1'b1) ? 3'd0 : 3'd3);

assign tmp_11_i_fu_389_p1 = packet_dest_V;

assign tmp_18_nbreadreq_fu_160_p3 = client_read_sid_V_V_empty_n;

assign tmp_19_nbreadreq_fu_146_p3 = sessionID_fifo_V_V_empty_n;

assign tmp_1_fu_457_p3 = {{16'd8}, {tmp_V_18_reg_531}};

assign tmp_21_fu_404_p1 = stream_in_V_dout[63:0];

assign tmp_25_nbreadreq_fu_174_p3 = txStatus_V_V_empty_n;

assign tmp_2_fu_465_p3 = {{grp_fu_324_p2}, {tmp_V_18_reg_531}};

assign tmp_3_fu_441_p3 = {{16'd8}, {tmp_V_16_reg_516}};

assign tmp_4_fu_449_p3 = {{grp_fu_324_p2}, {tmp_V_16_reg_516}};

assign tmp_5_fu_432_p4 = {{{currWord_last_V_reg_488}, {packet_keep_V}}, {p_Val2_s_reg_477}};

assign tmp_7_fu_420_p4 = {{{currWord_last_V_1_reg_502}, {currWord_keep_V_1_reg_507}}, {currWord_data_V_reg_497}};

assign tmp_i_fu_383_p2 = ((client_read_sid_V_V_dout == 16'd1000) ? 1'b1 : 1'b0);

endmodule //client

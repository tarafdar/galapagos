// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module arp_server_subnet_arp_table (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        macIpEncode_req_V_V_dout,
        macIpEncode_req_V_V_empty_n,
        macIpEncode_req_V_V_read,
        arpTableInsertFifo_V_dout,
        arpTableInsertFifo_V_empty_n,
        arpTableInsertFifo_V_read,
        arpRequestMetaFifo_V_V_din,
        arpRequestMetaFifo_V_V_full_n,
        arpRequestMetaFifo_V_V_write,
        macIpEncode_rsp_V_din,
        macIpEncode_rsp_V_full_n,
        macIpEncode_rsp_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_4F = 32'b1001111;
parameter    ap_const_lv32_50 = 32'b1010000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] macIpEncode_req_V_V_dout;
input   macIpEncode_req_V_V_empty_n;
output   macIpEncode_req_V_V_read;
input  [80:0] arpTableInsertFifo_V_dout;
input   arpTableInsertFifo_V_empty_n;
output   arpTableInsertFifo_V_read;
output  [31:0] arpRequestMetaFifo_V_V_din;
input   arpRequestMetaFifo_V_V_full_n;
output   arpRequestMetaFifo_V_V_write;
output  [48:0] macIpEncode_rsp_V_din;
input   macIpEncode_rsp_V_full_n;
output   macIpEncode_rsp_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg macIpEncode_req_V_V_read;
reg arpTableInsertFifo_V_read;
reg arpRequestMetaFifo_V_V_write;
reg macIpEncode_rsp_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
wire   [0:0] tmp_2_nbreadreq_fu_100_p3;
wire   [0:0] tmp_3_nbreadreq_fu_108_p3;
reg    ap_sig_bdd_63;
reg   [0:0] tmp_2_reg_260;
reg   [0:0] ap_reg_ppstg_tmp_2_reg_260_pp0_it1;
reg   [0:0] tmp_3_reg_264;
reg   [0:0] ap_reg_ppstg_tmp_3_reg_264_pp0_it1;
reg   [0:0] tmp_hit_reg_288;
reg    ap_sig_bdd_90;
wire   [7:0] arpTable_ipAddress_V_address0;
reg    arpTable_ipAddress_V_ce0;
reg    arpTable_ipAddress_V_we0;
wire   [31:0] arpTable_ipAddress_V_d0;
reg   [7:0] arpTable_macAddress_V_address0;
reg    arpTable_macAddress_V_ce0;
reg    arpTable_macAddress_V_we0;
wire   [47:0] arpTable_macAddress_V_d0;
wire   [47:0] arpTable_macAddress_V_q0;
reg   [7:0] arpTable_valid_address0;
reg    arpTable_valid_ce0;
reg    arpTable_valid_we0;
wire   [0:0] arpTable_valid_d0;
wire   [0:0] arpTable_valid_q0;
reg   [31:0] tmp_V_reg_268;
reg   [31:0] ap_reg_ppstg_tmp_V_reg_268_pp0_it1;
reg   [47:0] tmp_macAddress_V_reg_283;
wire   [63:0] tmp_4_fu_205_p1;
wire   [63:0] tmp_s_fu_246_p1;
wire   [7:0] p_Result_s_32_fu_195_p4;
wire   [7:0] p_Result_s_fu_236_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_50;
reg    ap_sig_bdd_38;


arp_server_subnet_arp_table_arpTable_ipAddress_V #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
arpTable_ipAddress_V_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( arpTable_ipAddress_V_address0 ),
    .ce0( arpTable_ipAddress_V_ce0 ),
    .we0( arpTable_ipAddress_V_we0 ),
    .d0( arpTable_ipAddress_V_d0 )
);

arp_server_subnet_arp_table_arpTable_macAddress_V #(
    .DataWidth( 48 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
arpTable_macAddress_V_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( arpTable_macAddress_V_address0 ),
    .ce0( arpTable_macAddress_V_ce0 ),
    .we0( arpTable_macAddress_V_we0 ),
    .d0( arpTable_macAddress_V_d0 ),
    .q0( arpTable_macAddress_V_q0 )
);

arp_server_subnet_arp_table_arpTable_valid #(
    .DataWidth( 1 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
arpTable_valid_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( arpTable_valid_address0 ),
    .ce0( arpTable_valid_ce0 ),
    .we0( arpTable_valid_we0 ),
    .d0( arpTable_valid_d0 ),
    .q0( arpTable_valid_q0 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        ap_reg_ppstg_tmp_2_reg_260_pp0_it1 <= tmp_2_reg_260;
        ap_reg_ppstg_tmp_3_reg_264_pp0_it1 <= tmp_3_reg_264;
        ap_reg_ppstg_tmp_V_reg_268_pp0_it1 <= tmp_V_reg_268;
        tmp_2_reg_260 <= tmp_2_nbreadreq_fu_100_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_3_reg_264 <= tmp_3_nbreadreq_fu_108_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_108_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_V_reg_268 <= macIpEncode_req_V_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & (ap_const_lv1_0 == tmp_2_reg_260) & ~(ap_const_lv1_0 == tmp_3_reg_264))) begin
        tmp_hit_reg_288 <= arpTable_valid_q0;
        tmp_macAddress_V_reg_283 <= arpTable_macAddress_V_q0;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_63 or ap_sig_bdd_90)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_63 or ap_sig_bdd_90)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// arpRequestMetaFifo_V_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_63 or ap_reg_ppstg_tmp_2_reg_260_pp0_it1 or ap_reg_ppstg_tmp_3_reg_264_pp0_it1 or tmp_hit_reg_288 or ap_sig_bdd_90)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_2_reg_260_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_3_reg_264_pp0_it1) & (ap_const_lv1_0 == tmp_hit_reg_288) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        arpRequestMetaFifo_V_V_write = ap_const_logic_1;
    end else begin
        arpRequestMetaFifo_V_V_write = ap_const_logic_0;
    end
end

/// arpTableInsertFifo_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp_2_nbreadreq_fu_100_p3 or ap_sig_bdd_63 or ap_sig_bdd_90)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        arpTableInsertFifo_V_read = ap_const_logic_1;
    end else begin
        arpTableInsertFifo_V_read = ap_const_logic_0;
    end
end

/// arpTable_ipAddress_V_ce0 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_63 or ap_sig_bdd_90)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        arpTable_ipAddress_V_ce0 = ap_const_logic_1;
    end else begin
        arpTable_ipAddress_V_ce0 = ap_const_logic_0;
    end
end

/// arpTable_ipAddress_V_we0 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp_2_nbreadreq_fu_100_p3 or ap_sig_bdd_63 or ap_sig_bdd_90)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        arpTable_ipAddress_V_we0 = ap_const_logic_1;
    end else begin
        arpTable_ipAddress_V_we0 = ap_const_logic_0;
    end
end

/// arpTable_macAddress_V_address0 assign process. ///
always @ (tmp_2_nbreadreq_fu_100_p3 or tmp_4_fu_205_p1 or tmp_s_fu_246_p1 or ap_sig_bdd_50 or ap_sig_bdd_38)
begin
    if (ap_sig_bdd_38) begin
        if (~(tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0)) begin
            arpTable_macAddress_V_address0 = tmp_s_fu_246_p1;
        end else if (ap_sig_bdd_50) begin
            arpTable_macAddress_V_address0 = tmp_4_fu_205_p1;
        end else begin
            arpTable_macAddress_V_address0 = 'bx;
        end
    end else begin
        arpTable_macAddress_V_address0 = 'bx;
    end
end

/// arpTable_macAddress_V_ce0 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp_2_nbreadreq_fu_100_p3 or tmp_3_nbreadreq_fu_108_p3 or ap_sig_bdd_63 or ap_sig_bdd_90)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_108_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        arpTable_macAddress_V_ce0 = ap_const_logic_1;
    end else begin
        arpTable_macAddress_V_ce0 = ap_const_logic_0;
    end
end

/// arpTable_macAddress_V_we0 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp_2_nbreadreq_fu_100_p3 or ap_sig_bdd_63 or ap_sig_bdd_90)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        arpTable_macAddress_V_we0 = ap_const_logic_1;
    end else begin
        arpTable_macAddress_V_we0 = ap_const_logic_0;
    end
end

/// arpTable_valid_address0 assign process. ///
always @ (tmp_2_nbreadreq_fu_100_p3 or tmp_4_fu_205_p1 or tmp_s_fu_246_p1 or ap_sig_bdd_50 or ap_sig_bdd_38)
begin
    if (ap_sig_bdd_38) begin
        if (~(tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0)) begin
            arpTable_valid_address0 = tmp_s_fu_246_p1;
        end else if (ap_sig_bdd_50) begin
            arpTable_valid_address0 = tmp_4_fu_205_p1;
        end else begin
            arpTable_valid_address0 = 'bx;
        end
    end else begin
        arpTable_valid_address0 = 'bx;
    end
end

/// arpTable_valid_ce0 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp_2_nbreadreq_fu_100_p3 or tmp_3_nbreadreq_fu_108_p3 or ap_sig_bdd_63 or ap_sig_bdd_90)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_108_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        arpTable_valid_ce0 = ap_const_logic_1;
    end else begin
        arpTable_valid_ce0 = ap_const_logic_0;
    end
end

/// arpTable_valid_we0 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp_2_nbreadreq_fu_100_p3 or ap_sig_bdd_63 or ap_sig_bdd_90)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        arpTable_valid_we0 = ap_const_logic_1;
    end else begin
        arpTable_valid_we0 = ap_const_logic_0;
    end
end

/// macIpEncode_req_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp_2_nbreadreq_fu_100_p3 or tmp_3_nbreadreq_fu_108_p3 or ap_sig_bdd_63 or ap_sig_bdd_90)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_108_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        macIpEncode_req_V_V_read = ap_const_logic_1;
    end else begin
        macIpEncode_req_V_V_read = ap_const_logic_0;
    end
end

/// macIpEncode_rsp_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_63 or ap_reg_ppstg_tmp_2_reg_260_pp0_it1 or ap_reg_ppstg_tmp_3_reg_264_pp0_it1 or ap_sig_bdd_90)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_2_reg_260_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_3_reg_264_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_63) | (ap_sig_bdd_90 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        macIpEncode_rsp_V_write = ap_const_logic_1;
    end else begin
        macIpEncode_rsp_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_63 or ap_sig_bdd_90 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_38 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0)
begin
    ap_sig_bdd_38 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0));
end

/// ap_sig_bdd_50 assign process. ///
always @ (tmp_2_nbreadreq_fu_100_p3 or tmp_3_nbreadreq_fu_108_p3)
begin
    ap_sig_bdd_50 = ((tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_108_p3));
end

/// ap_sig_bdd_63 assign process. ///
always @ (ap_start or ap_done_reg or macIpEncode_req_V_V_empty_n or tmp_2_nbreadreq_fu_100_p3 or tmp_3_nbreadreq_fu_108_p3 or arpTableInsertFifo_V_empty_n)
begin
    ap_sig_bdd_63 = (((macIpEncode_req_V_V_empty_n == ap_const_logic_0) & (tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_108_p3)) | ((arpTableInsertFifo_V_empty_n == ap_const_logic_0) & ~(tmp_2_nbreadreq_fu_100_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_90 assign process. ///
always @ (arpRequestMetaFifo_V_V_full_n or ap_reg_ppstg_tmp_2_reg_260_pp0_it1 or ap_reg_ppstg_tmp_3_reg_264_pp0_it1 or tmp_hit_reg_288 or macIpEncode_rsp_V_full_n)
begin
    ap_sig_bdd_90 = (((arpRequestMetaFifo_V_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_2_reg_260_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_3_reg_264_pp0_it1) & (ap_const_lv1_0 == tmp_hit_reg_288)) | ((ap_const_lv1_0 == ap_reg_ppstg_tmp_2_reg_260_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_3_reg_264_pp0_it1) & (macIpEncode_rsp_V_full_n == ap_const_logic_0)));
end
assign arpRequestMetaFifo_V_V_din = ap_reg_ppstg_tmp_V_reg_268_pp0_it1;
assign arpTable_ipAddress_V_address0 = tmp_s_fu_246_p1;
assign arpTable_ipAddress_V_d0 = arpTableInsertFifo_V_dout[31:0];
assign arpTable_macAddress_V_d0 = {{arpTableInsertFifo_V_dout[ap_const_lv32_4F : ap_const_lv32_20]}};
assign arpTable_valid_d0 = arpTableInsertFifo_V_dout[ap_const_lv32_50];
assign macIpEncode_rsp_V_din = {{tmp_hit_reg_288}, {tmp_macAddress_V_reg_283}};
assign p_Result_s_32_fu_195_p4 = {{macIpEncode_req_V_V_dout[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_s_fu_236_p4 = {{arpTableInsertFifo_V_dout[ap_const_lv32_1F : ap_const_lv32_18]}};
assign tmp_2_nbreadreq_fu_100_p3 = arpTableInsertFifo_V_empty_n;
assign tmp_3_nbreadreq_fu_108_p3 = macIpEncode_req_V_V_empty_n;
assign tmp_4_fu_205_p1 = p_Result_s_32_fu_195_p4;
assign tmp_s_fu_246_p1 = p_Result_s_fu_236_p4;


endmodule //arp_server_subnet_arp_table


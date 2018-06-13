// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_rx_sar_table (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txEng2rxSar_req_V_V_dout,
        txEng2rxSar_req_V_V_empty_n,
        txEng2rxSar_req_V_V_read,
        rxApp2rxSar_upd_req_V_dout,
        rxApp2rxSar_upd_req_V_empty_n,
        rxApp2rxSar_upd_req_V_read,
        rxEng2rxSar_upd_req_V_dout,
        rxEng2rxSar_upd_req_V_empty_n,
        rxEng2rxSar_upd_req_V_read,
        rxSar2rxEng_upd_rsp_V_din,
        rxSar2rxEng_upd_rsp_V_full_n,
        rxSar2rxEng_upd_rsp_V_write,
        rxSar2rxApp_upd_rsp_V_din,
        rxSar2rxApp_upd_rsp_V_full_n,
        rxSar2rxApp_upd_rsp_V_write,
        rxSar2txEng_rsp_V_din,
        rxSar2txEng_rsp_V_full_n,
        rxSar2txEng_rsp_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv32_30 = 32'b110000;
parameter    ap_const_lv32_31 = 32'b110001;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] txEng2rxSar_req_V_V_dout;
input   txEng2rxSar_req_V_V_empty_n;
output   txEng2rxSar_req_V_V_read;
input  [32:0] rxApp2rxSar_upd_req_V_dout;
input   rxApp2rxSar_upd_req_V_empty_n;
output   rxApp2rxSar_upd_req_V_read;
input  [49:0] rxEng2rxSar_upd_req_V_dout;
input   rxEng2rxSar_upd_req_V_empty_n;
output   rxEng2rxSar_upd_req_V_read;
output  [47:0] rxSar2rxEng_upd_rsp_V_din;
input   rxSar2rxEng_upd_rsp_V_full_n;
output   rxSar2rxEng_upd_rsp_V_write;
output  [32:0] rxSar2rxApp_upd_rsp_V_din;
input   rxSar2rxApp_upd_rsp_V_full_n;
output   rxSar2rxApp_upd_rsp_V_write;
output  [47:0] rxSar2txEng_rsp_V_din;
input   rxSar2txEng_rsp_V_full_n;
output   rxSar2txEng_rsp_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txEng2rxSar_req_V_V_read;
reg rxApp2rxSar_upd_req_V_read;
reg rxEng2rxSar_upd_req_V_read;
reg rxSar2rxEng_upd_rsp_V_write;
reg rxSar2rxApp_upd_rsp_V_write;
reg rxSar2txEng_rsp_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
reg    ap_reg_ppiten_pp0_it3 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_138_p3;
reg    ap_sig_bdd_55;
reg   [0:0] tmp_reg_366;
wire   [0:0] tmp_86_nbreadreq_fu_152_p3;
reg    ap_sig_bdd_69;
reg   [0:0] ap_reg_ppstg_tmp_reg_366_pp0_it1;
reg   [0:0] tmp_86_reg_375;
wire   [0:0] tmp_87_nbreadreq_fu_166_p3;
reg    ap_sig_bdd_88;
reg   [0:0] ap_reg_ppstg_tmp_reg_366_pp0_it2;
reg   [0:0] ap_reg_ppstg_tmp_86_reg_375_pp0_it2;
reg   [0:0] tmp_87_reg_394;
reg   [0:0] tmp_365_reg_398;
reg   [0:0] tmp_363_reg_390;
reg   [0:0] ap_reg_ppstg_tmp_363_reg_390_pp0_it2;
reg    ap_sig_bdd_131;
reg   [6:0] rx_table_recvd_V_address0;
reg    rx_table_recvd_V_ce0;
reg    rx_table_recvd_V_we0;
wire   [31:0] rx_table_recvd_V_d0;
wire   [31:0] rx_table_recvd_V_q0;
reg   [6:0] rx_table_appd_V_address0;
reg    rx_table_appd_V_ce0;
reg    rx_table_appd_V_we0;
reg   [15:0] rx_table_appd_V_d0;
wire   [15:0] rx_table_appd_V_q0;
reg   [15:0] tmp_V_reg_370;
reg   [15:0] ap_reg_ppstg_tmp_V_reg_370_pp0_it1;
wire   [15:0] tmp_sessionID_V_fu_258_p1;
reg   [15:0] tmp_sessionID_V_reg_379;
reg   [15:0] ap_reg_ppstg_tmp_sessionID_V_reg_379_pp0_it2;
reg   [15:0] tmp_appd_V_5_load_new_reg_385;
wire   [0:0] tmp_365_fu_295_p3;
wire   [0:0] tmp_366_fu_303_p3;
wire   [63:0] tmp_103_fu_311_p1;
wire   [6:0] rx_table_appd_V_addr_3_gep_fu_225_p3;
wire   [63:0] tmp_102_fu_329_p1;
wire   [63:0] tmp_s_fu_333_p1;
wire   [15:0] tmp_364_fu_280_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_333;
reg    ap_sig_bdd_335;
reg    ap_sig_bdd_330;


toe_rx_sar_table_rx_table_recvd_V #(
    .DataWidth( 32 ),
    .AddressRange( 100 ),
    .AddressWidth( 7 ))
rx_table_recvd_V_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( rx_table_recvd_V_address0 ),
    .ce0( rx_table_recvd_V_ce0 ),
    .we0( rx_table_recvd_V_we0 ),
    .d0( rx_table_recvd_V_d0 ),
    .q0( rx_table_recvd_V_q0 )
);

toe_rx_sar_table_rx_table_appd_V #(
    .DataWidth( 16 ),
    .AddressRange( 100 ),
    .AddressWidth( 7 ))
rx_table_appd_V_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( rx_table_appd_V_address0 ),
    .ce0( rx_table_appd_V_ce0 ),
    .we0( rx_table_appd_V_we0 ),
    .d0( rx_table_appd_V_d0 ),
    .q0( rx_table_appd_V_q0 )
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
        end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
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
        if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// ap_reg_ppiten_pp0_it3 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it3
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
    end else begin
        if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
        ap_reg_ppstg_tmp_363_reg_390_pp0_it2 <= tmp_363_reg_390;
        ap_reg_ppstg_tmp_86_reg_375_pp0_it2 <= tmp_86_reg_375;
        ap_reg_ppstg_tmp_reg_366_pp0_it2 <= ap_reg_ppstg_tmp_reg_366_pp0_it1;
        ap_reg_ppstg_tmp_sessionID_V_reg_379_pp0_it2 <= tmp_sessionID_V_reg_379;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        ap_reg_ppstg_tmp_V_reg_370_pp0_it1 <= tmp_V_reg_370;
        ap_reg_ppstg_tmp_reg_366_pp0_it1 <= tmp_reg_366;
        tmp_reg_366 <= tmp_nbreadreq_fu_138_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_366) & ~(ap_const_lv1_0 == tmp_86_nbreadreq_fu_152_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        tmp_363_reg_390 <= rxApp2rxSar_upd_req_V_dout[ap_const_lv32_20];
        tmp_appd_V_5_load_new_reg_385 <= {{rxApp2rxSar_upd_req_V_dout[ap_const_lv32_1F : ap_const_lv32_10]}};
        tmp_sessionID_V_reg_379 <= tmp_sessionID_V_fu_258_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        tmp_365_reg_398 <= rxEng2rxSar_upd_req_V_dout[ap_const_lv32_30];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_366) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        tmp_86_reg_375 <= tmp_86_nbreadreq_fu_152_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        tmp_87_reg_394 <= tmp_87_nbreadreq_fu_166_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        tmp_V_reg_370 <= txEng2rxSar_req_V_V_dout;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_88 or ap_sig_bdd_131)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it3))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_88 or ap_sig_bdd_131)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
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
always @ (ap_start or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// rxApp2rxSar_upd_req_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or tmp_reg_366 or tmp_86_nbreadreq_fu_152_p3 or ap_sig_bdd_69 or ap_sig_bdd_88 or ap_sig_bdd_131)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_366) & ~(ap_const_lv1_0 == tmp_86_nbreadreq_fu_152_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        rxApp2rxSar_upd_req_V_read = ap_const_logic_1;
    end else begin
        rxApp2rxSar_upd_req_V_read = ap_const_logic_0;
    end
end

/// rxEng2rxSar_upd_req_V_read assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_reg_ppstg_tmp_reg_366_pp0_it1 or tmp_86_reg_375 or tmp_87_nbreadreq_fu_166_p3 or ap_sig_bdd_88 or ap_sig_bdd_131)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        rxEng2rxSar_upd_req_V_read = ap_const_logic_1;
    end else begin
        rxEng2rxSar_upd_req_V_read = ap_const_logic_0;
    end
end

/// rxSar2rxApp_upd_rsp_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_88 or ap_reg_ppstg_tmp_reg_366_pp0_it2 or ap_reg_ppstg_tmp_86_reg_375_pp0_it2 or ap_reg_ppstg_tmp_363_reg_390_pp0_it2 or ap_sig_bdd_131)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it2) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_86_reg_375_pp0_it2) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_363_reg_390_pp0_it2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        rxSar2rxApp_upd_rsp_V_write = ap_const_logic_1;
    end else begin
        rxSar2rxApp_upd_rsp_V_write = ap_const_logic_0;
    end
end

/// rxSar2rxEng_upd_rsp_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_88 or ap_reg_ppstg_tmp_reg_366_pp0_it2 or ap_reg_ppstg_tmp_86_reg_375_pp0_it2 or tmp_87_reg_394 or tmp_365_reg_398 or ap_sig_bdd_131)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it2) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_86_reg_375_pp0_it2) & ~(ap_const_lv1_0 == tmp_87_reg_394) & (ap_const_lv1_0 == tmp_365_reg_398) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        rxSar2rxEng_upd_rsp_V_write = ap_const_logic_1;
    end else begin
        rxSar2rxEng_upd_rsp_V_write = ap_const_logic_0;
    end
end

/// rxSar2txEng_rsp_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_88 or ap_reg_ppstg_tmp_reg_366_pp0_it2 or ap_sig_bdd_131)
begin
    if ((~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        rxSar2txEng_rsp_V_write = ap_const_logic_1;
    end else begin
        rxSar2txEng_rsp_V_write = ap_const_logic_0;
    end
end

/// rx_table_appd_V_address0 assign process. ///
always @ (ap_reg_ppiten_pp0_it2 or ap_reg_ppstg_tmp_reg_366_pp0_it1 or tmp_86_reg_375 or tmp_87_nbreadreq_fu_166_p3 or tmp_363_reg_390 or tmp_365_fu_295_p3 or tmp_366_fu_303_p3 or tmp_103_fu_311_p1 or rx_table_appd_V_addr_3_gep_fu_225_p3 or tmp_102_fu_329_p1 or tmp_s_fu_333_p1)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_const_lv1_0 == tmp_365_fu_295_p3) & ~(ap_const_lv1_0 == tmp_366_fu_303_p3))) begin
        rx_table_appd_V_address0 = rx_table_appd_V_addr_3_gep_fu_225_p3;
    end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1))) begin
        rx_table_appd_V_address0 = tmp_s_fu_333_p1;
    end else if ((((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_const_lv1_0 == tmp_86_reg_375) & (ap_const_lv1_0 == tmp_363_reg_390)) | ((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_363_reg_390)))) begin
        rx_table_appd_V_address0 = tmp_102_fu_329_p1;
    end else if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & (ap_const_lv1_0 == tmp_365_fu_295_p3))) begin
        rx_table_appd_V_address0 = tmp_103_fu_311_p1;
    end else begin
        rx_table_appd_V_address0 = 'bx;
    end
end

/// rx_table_appd_V_ce0 assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_reg_ppstg_tmp_reg_366_pp0_it1 or tmp_86_reg_375 or tmp_87_nbreadreq_fu_166_p3 or ap_sig_bdd_88 or tmp_363_reg_390 or ap_sig_bdd_131 or tmp_365_fu_295_p3 or tmp_366_fu_303_p3)
begin
    if ((((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (ap_const_lv1_0 == tmp_365_fu_295_p3)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1)) | ((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == tmp_365_fu_295_p3) & ~(ap_const_lv1_0 == tmp_366_fu_303_p3)) | ((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == tmp_86_reg_375) & (ap_const_lv1_0 == tmp_363_reg_390)) | ((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_363_reg_390)))) begin
        rx_table_appd_V_ce0 = ap_const_logic_1;
    end else begin
        rx_table_appd_V_ce0 = ap_const_logic_0;
    end
end

/// rx_table_appd_V_d0 assign process. ///
always @ (rxEng2rxSar_upd_req_V_dout or tmp_appd_V_5_load_new_reg_385 or ap_sig_bdd_333 or ap_sig_bdd_335 or ap_sig_bdd_330)
begin
    if (ap_sig_bdd_330) begin
        if (ap_sig_bdd_335) begin
            rx_table_appd_V_d0 = tmp_appd_V_5_load_new_reg_385;
        end else if (ap_sig_bdd_333) begin
            rx_table_appd_V_d0 = {{rxEng2rxSar_upd_req_V_dout[ap_const_lv32_1F : ap_const_lv32_10]}};
        end else begin
            rx_table_appd_V_d0 = 'bx;
        end
    end else begin
        rx_table_appd_V_d0 = 'bx;
    end
end

/// rx_table_appd_V_we0 assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_reg_ppstg_tmp_reg_366_pp0_it1 or tmp_86_reg_375 or tmp_87_nbreadreq_fu_166_p3 or ap_sig_bdd_88 or tmp_363_reg_390 or ap_sig_bdd_131 or tmp_365_fu_295_p3 or tmp_366_fu_303_p3)
begin
    if ((((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == tmp_365_fu_295_p3) & ~(ap_const_lv1_0 == tmp_366_fu_303_p3)) | ((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_363_reg_390)))) begin
        rx_table_appd_V_we0 = ap_const_logic_1;
    end else begin
        rx_table_appd_V_we0 = ap_const_logic_0;
    end
end

/// rx_table_recvd_V_address0 assign process. ///
always @ (ap_reg_ppiten_pp0_it2 or ap_reg_ppstg_tmp_reg_366_pp0_it1 or tmp_86_reg_375 or tmp_87_nbreadreq_fu_166_p3 or tmp_365_fu_295_p3 or tmp_103_fu_311_p1 or tmp_s_fu_333_p1)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1))) begin
        rx_table_recvd_V_address0 = tmp_s_fu_333_p1;
    end else if ((((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & (ap_const_lv1_0 == tmp_365_fu_295_p3)) | ((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_const_lv1_0 == tmp_365_fu_295_p3)))) begin
        rx_table_recvd_V_address0 = tmp_103_fu_311_p1;
    end else begin
        rx_table_recvd_V_address0 = 'bx;
    end
end

/// rx_table_recvd_V_ce0 assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_reg_ppstg_tmp_reg_366_pp0_it1 or tmp_86_reg_375 or tmp_87_nbreadreq_fu_166_p3 or ap_sig_bdd_88 or ap_sig_bdd_131 or tmp_365_fu_295_p3)
begin
    if ((((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & (ap_const_lv1_0 == tmp_365_fu_295_p3)) | ((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == tmp_365_fu_295_p3)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1)))) begin
        rx_table_recvd_V_ce0 = ap_const_logic_1;
    end else begin
        rx_table_recvd_V_ce0 = ap_const_logic_0;
    end
end

/// rx_table_recvd_V_we0 assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_reg_ppstg_tmp_reg_366_pp0_it1 or tmp_86_reg_375 or tmp_87_nbreadreq_fu_166_p3 or ap_sig_bdd_88 or ap_sig_bdd_131 or tmp_365_fu_295_p3)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == tmp_365_fu_295_p3))) begin
        rx_table_recvd_V_we0 = ap_const_logic_1;
    end else begin
        rx_table_recvd_V_we0 = ap_const_logic_0;
    end
end

/// txEng2rxSar_req_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or tmp_nbreadreq_fu_138_p3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_88 or ap_sig_bdd_131)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_88 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_131 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        txEng2rxSar_req_V_V_read = ap_const_logic_1;
    end else begin
        txEng2rxSar_req_V_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_88 or ap_sig_bdd_131 or ap_sig_pprstidle_pp0)
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

/// ap_sig_bdd_131 assign process. ///
always @ (rxSar2rxEng_upd_rsp_V_full_n or ap_reg_ppstg_tmp_reg_366_pp0_it2 or ap_reg_ppstg_tmp_86_reg_375_pp0_it2 or tmp_87_reg_394 or tmp_365_reg_398 or rxSar2rxApp_upd_rsp_V_full_n or ap_reg_ppstg_tmp_363_reg_390_pp0_it2 or rxSar2txEng_rsp_V_full_n)
begin
    ap_sig_bdd_131 = (((rxSar2rxEng_upd_rsp_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it2) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_86_reg_375_pp0_it2) & ~(ap_const_lv1_0 == tmp_87_reg_394) & (ap_const_lv1_0 == tmp_365_reg_398)) | ((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it2) & (rxSar2rxApp_upd_rsp_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_86_reg_375_pp0_it2) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_363_reg_390_pp0_it2)) | ((rxSar2txEng_rsp_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it2)));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_330 assign process. ///
always @ (ap_reg_ppiten_pp0_it2 or ap_reg_ppstg_tmp_reg_366_pp0_it1)
begin
    ap_sig_bdd_330 = ((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2));
end

/// ap_sig_bdd_333 assign process. ///
always @ (tmp_86_reg_375 or tmp_87_nbreadreq_fu_166_p3 or tmp_365_fu_295_p3 or tmp_366_fu_303_p3)
begin
    ap_sig_bdd_333 = ((ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3) & ~(ap_const_lv1_0 == tmp_365_fu_295_p3) & ~(ap_const_lv1_0 == tmp_366_fu_303_p3));
end

/// ap_sig_bdd_335 assign process. ///
always @ (tmp_86_reg_375 or tmp_363_reg_390)
begin
    ap_sig_bdd_335 = (~(ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_363_reg_390));
end

/// ap_sig_bdd_55 assign process. ///
always @ (ap_start or ap_done_reg or txEng2rxSar_req_V_V_empty_n or tmp_nbreadreq_fu_138_p3)
begin
    ap_sig_bdd_55 = (((txEng2rxSar_req_V_V_empty_n == ap_const_logic_0) & ~(tmp_nbreadreq_fu_138_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_69 assign process. ///
always @ (rxApp2rxSar_upd_req_V_empty_n or tmp_reg_366 or tmp_86_nbreadreq_fu_152_p3)
begin
    ap_sig_bdd_69 = ((rxApp2rxSar_upd_req_V_empty_n == ap_const_logic_0) & (ap_const_lv1_0 == tmp_reg_366) & ~(ap_const_lv1_0 == tmp_86_nbreadreq_fu_152_p3));
end

/// ap_sig_bdd_88 assign process. ///
always @ (rxEng2rxSar_upd_req_V_empty_n or ap_reg_ppstg_tmp_reg_366_pp0_it1 or tmp_86_reg_375 or tmp_87_nbreadreq_fu_166_p3)
begin
    ap_sig_bdd_88 = ((rxEng2rxSar_upd_req_V_empty_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_366_pp0_it1) & (ap_const_lv1_0 == tmp_86_reg_375) & ~(ap_const_lv1_0 == tmp_87_nbreadreq_fu_166_p3));
end
assign rxSar2rxApp_upd_rsp_V_din = {{{{ap_const_lv1_1}, {rx_table_appd_V_q0}}}, {ap_reg_ppstg_tmp_sessionID_V_reg_379_pp0_it2}};
assign rxSar2rxEng_upd_rsp_V_din = {{rx_table_appd_V_q0}, {rx_table_recvd_V_q0}};
assign rxSar2txEng_rsp_V_din = {{rx_table_appd_V_q0}, {rx_table_recvd_V_q0}};
assign rx_table_appd_V_addr_3_gep_fu_225_p3 = tmp_103_fu_311_p1;
assign rx_table_recvd_V_d0 = {{rxEng2rxSar_upd_req_V_dout[ap_const_lv32_2F : ap_const_lv32_10]}};
assign tmp_102_fu_329_p1 = tmp_sessionID_V_reg_379;
assign tmp_103_fu_311_p1 = tmp_364_fu_280_p1;
assign tmp_364_fu_280_p1 = rxEng2rxSar_upd_req_V_dout[15:0];
assign tmp_365_fu_295_p3 = rxEng2rxSar_upd_req_V_dout[ap_const_lv32_30];
assign tmp_366_fu_303_p3 = rxEng2rxSar_upd_req_V_dout[ap_const_lv32_31];
assign tmp_86_nbreadreq_fu_152_p3 = rxApp2rxSar_upd_req_V_empty_n;
assign tmp_87_nbreadreq_fu_166_p3 = rxEng2rxSar_upd_req_V_empty_n;
assign tmp_nbreadreq_fu_138_p3 = txEng2rxSar_req_V_V_empty_n;
assign tmp_s_fu_333_p1 = ap_reg_ppstg_tmp_V_reg_370_pp0_it1;
assign tmp_sessionID_V_fu_258_p1 = rxApp2rxSar_upd_req_V_dout[15:0];


endmodule //toe_rx_sar_table


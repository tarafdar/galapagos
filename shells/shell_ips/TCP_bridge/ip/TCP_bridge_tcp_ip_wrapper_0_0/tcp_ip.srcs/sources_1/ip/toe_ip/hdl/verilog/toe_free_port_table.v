// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_free_port_table (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        sLookup2portTable_releasePort_s_dout,
        sLookup2portTable_releasePort_s_empty_n,
        sLookup2portTable_releasePort_s_read,
        pt_portCheckUsed_req_fifo_V_V_dout,
        pt_portCheckUsed_req_fifo_V_V_empty_n,
        pt_portCheckUsed_req_fifo_V_V_read,
        pt_portCheckUsed_rsp_fifo_V_din,
        pt_portCheckUsed_rsp_fifo_V_full_n,
        pt_portCheckUsed_rsp_fifo_V_write,
        portTable2txApp_port_rsp_V_V_din,
        portTable2txApp_port_rsp_V_V_full_n,
        portTable2txApp_port_rsp_V_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv15_1 = 15'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] sLookup2portTable_releasePort_s_dout;
input   sLookup2portTable_releasePort_s_empty_n;
output   sLookup2portTable_releasePort_s_read;
input  [14:0] pt_portCheckUsed_req_fifo_V_V_dout;
input   pt_portCheckUsed_req_fifo_V_V_empty_n;
output   pt_portCheckUsed_req_fifo_V_V_read;
output  [0:0] pt_portCheckUsed_rsp_fifo_V_din;
input   pt_portCheckUsed_rsp_fifo_V_full_n;
output   pt_portCheckUsed_rsp_fifo_V_write;
output  [15:0] portTable2txApp_port_rsp_V_V_din;
input   portTable2txApp_port_rsp_V_V_full_n;
output   portTable2txApp_port_rsp_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg sLookup2portTable_releasePort_s_read;
reg pt_portCheckUsed_req_fifo_V_V_read;
reg pt_portCheckUsed_rsp_fifo_V_write;
reg portTable2txApp_port_rsp_V_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
reg    ap_reg_ppiten_pp0_it3 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_72_p3;
reg    ap_sig_bdd_55;
reg   [0:0] tmp_reg_207;
wire   [0:0] tmp_136_nbreadreq_fu_86_p3;
reg    ap_sig_bdd_69;
reg   [0:0] ap_reg_ppstg_tmp_reg_207_pp0_it1;
reg   [0:0] tmp_136_reg_225;
reg    ap_sig_bdd_85;
reg   [0:0] ap_reg_ppstg_tmp_reg_207_pp0_it2;
reg   [0:0] ap_reg_ppstg_tmp_136_reg_225_pp0_it2;
reg   [0:0] freePortTable_load_reg_240;
wire   [0:0] tmp_139_nbwritereq_fu_107_p3;
reg    ap_sig_bdd_107;
reg   [14:0] pt_cursor_V = 15'b000000000000000;
reg   [14:0] freePortTable_address0;
reg    freePortTable_ce0;
reg    freePortTable_we0;
wire   [0:0] freePortTable_d0;
wire   [0:0] freePortTable_q0;
wire   [14:0] freePortTable_address1;
reg    freePortTable_ce1;
reg    freePortTable_we1;
wire   [0:0] freePortTable_d1;
wire   [0:0] tmp_527_fu_157_p3;
reg   [0:0] tmp_527_reg_211;
wire   [14:0] tmp_528_fu_165_p1;
reg   [14:0] tmp_528_reg_215;
reg   [14:0] pt_cursor_V_load_reg_220;
reg   [14:0] ap_reg_ppstg_pt_cursor_V_load_reg_220_pp0_it2;
reg   [14:0] freePortTable_addr_2_reg_229;
reg   [14:0] ap_reg_ppstg_freePortTable_addr_2_reg_229_pp0_it2;
wire   [63:0] tmp_179_fu_173_p1;
wire   [63:0] tmp_178_fu_178_p1;
wire   [63:0] tmp_s_fu_183_p1;
wire   [14:0] tmp_180_fu_187_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_153;
reg    ap_sig_bdd_68;
reg    ap_sig_bdd_172;
reg    ap_sig_bdd_163;


toe_free_port_table_freePortTable #(
    .DataWidth( 1 ),
    .AddressRange( 32768 ),
    .AddressWidth( 15 ))
freePortTable_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( freePortTable_address0 ),
    .ce0( freePortTable_ce0 ),
    .we0( freePortTable_we0 ),
    .d0( freePortTable_d0 ),
    .q0( freePortTable_q0 ),
    .address1( freePortTable_address1 ),
    .ce1( freePortTable_ce1 ),
    .we1( freePortTable_we1 ),
    .d1( freePortTable_d1 )
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
        end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
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
        if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
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
        if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) begin
        ap_reg_ppstg_freePortTable_addr_2_reg_229_pp0_it2 <= freePortTable_addr_2_reg_229;
        ap_reg_ppstg_pt_cursor_V_load_reg_220_pp0_it2 <= pt_cursor_V_load_reg_220;
        ap_reg_ppstg_tmp_136_reg_225_pp0_it2 <= tmp_136_reg_225;
        ap_reg_ppstg_tmp_reg_207_pp0_it2 <= ap_reg_ppstg_tmp_reg_207_pp0_it1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        ap_reg_ppstg_tmp_reg_207_pp0_it1 <= tmp_reg_207;
        pt_cursor_V_load_reg_220 <= pt_cursor_V;
        tmp_reg_207 <= tmp_nbreadreq_fu_72_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_207) & (ap_const_lv1_0 == tmp_136_nbreadreq_fu_86_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        freePortTable_addr_2_reg_229 <= tmp_179_fu_173_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_207_pp0_it1) & (ap_const_lv1_0 == tmp_136_reg_225) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        freePortTable_load_reg_240 <= freePortTable_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        pt_cursor_V <= tmp_180_fu_187_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_207) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        tmp_136_reg_225 <= tmp_136_nbreadreq_fu_86_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_72_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        tmp_527_reg_211 <= sLookup2portTable_releasePort_s_dout[ap_const_lv32_F];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_72_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == tmp_527_fu_157_p3))) begin
        tmp_528_reg_215 <= tmp_528_fu_165_p1;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_85 or ap_sig_bdd_107)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))))) begin
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
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_85 or ap_sig_bdd_107)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
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

/// freePortTable_address0 assign process. ///
always @ (tmp_179_fu_173_p1 or tmp_178_fu_178_p1 or tmp_s_fu_183_p1 or ap_sig_bdd_153 or ap_sig_bdd_68 or ap_sig_bdd_172 or ap_sig_bdd_163)
begin
    if (ap_sig_bdd_163) begin
        if (ap_sig_bdd_172) begin
            freePortTable_address0 = tmp_s_fu_183_p1;
        end else if (ap_sig_bdd_68) begin
            freePortTable_address0 = tmp_178_fu_178_p1;
        end else if (ap_sig_bdd_153) begin
            freePortTable_address0 = tmp_179_fu_173_p1;
        end else begin
            freePortTable_address0 = 'bx;
        end
    end else begin
        freePortTable_address0 = 'bx;
    end
end

/// freePortTable_ce0 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or tmp_reg_207 or tmp_136_nbreadreq_fu_86_p3 or ap_sig_bdd_69 or ap_sig_bdd_85 or ap_sig_bdd_107 or tmp_527_reg_211)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_207) & ~(ap_const_lv1_0 == tmp_136_nbreadreq_fu_86_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_207) & (ap_const_lv1_0 == tmp_136_nbreadreq_fu_86_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == tmp_reg_207) & ~(ap_const_lv1_0 == tmp_527_reg_211)))) begin
        freePortTable_ce0 = ap_const_logic_1;
    end else begin
        freePortTable_ce0 = ap_const_logic_0;
    end
end

/// freePortTable_ce1 assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_85 or ap_sig_bdd_107)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        freePortTable_ce1 = ap_const_logic_1;
    end else begin
        freePortTable_ce1 = ap_const_logic_0;
    end
end

/// freePortTable_we0 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or tmp_reg_207 or ap_sig_bdd_69 or ap_sig_bdd_85 or ap_sig_bdd_107 or tmp_527_reg_211)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))) & ~(ap_const_lv1_0 == tmp_reg_207) & ~(ap_const_lv1_0 == tmp_527_reg_211))) begin
        freePortTable_we0 = ap_const_logic_1;
    end else begin
        freePortTable_we0 = ap_const_logic_0;
    end
end

/// freePortTable_we1 assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_85 or ap_reg_ppstg_tmp_reg_207_pp0_it2 or ap_reg_ppstg_tmp_136_reg_225_pp0_it2 or freePortTable_load_reg_240 or tmp_139_nbwritereq_fu_107_p3 or ap_sig_bdd_107)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_207_pp0_it2) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_136_reg_225_pp0_it2) & (ap_const_lv1_0 == freePortTable_load_reg_240) & ~(ap_const_lv1_0 == tmp_139_nbwritereq_fu_107_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        freePortTable_we1 = ap_const_logic_1;
    end else begin
        freePortTable_we1 = ap_const_logic_0;
    end
end

/// portTable2txApp_port_rsp_V_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_85 or ap_reg_ppstg_tmp_reg_207_pp0_it2 or ap_reg_ppstg_tmp_136_reg_225_pp0_it2 or freePortTable_load_reg_240 or tmp_139_nbwritereq_fu_107_p3 or ap_sig_bdd_107)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_207_pp0_it2) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_136_reg_225_pp0_it2) & (ap_const_lv1_0 == freePortTable_load_reg_240) & ~(ap_const_lv1_0 == tmp_139_nbwritereq_fu_107_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        portTable2txApp_port_rsp_V_V_write = ap_const_logic_1;
    end else begin
        portTable2txApp_port_rsp_V_V_write = ap_const_logic_0;
    end
end

/// pt_portCheckUsed_req_fifo_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or tmp_reg_207 or tmp_136_nbreadreq_fu_86_p3 or ap_sig_bdd_69 or ap_sig_bdd_85 or ap_sig_bdd_107)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_207) & ~(ap_const_lv1_0 == tmp_136_nbreadreq_fu_86_p3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        pt_portCheckUsed_req_fifo_V_V_read = ap_const_logic_1;
    end else begin
        pt_portCheckUsed_req_fifo_V_V_read = ap_const_logic_0;
    end
end

/// pt_portCheckUsed_rsp_fifo_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_reg_ppstg_tmp_reg_207_pp0_it1 or tmp_136_reg_225 or ap_sig_bdd_85 or ap_sig_bdd_107)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_207_pp0_it1) & ~(ap_const_lv1_0 == tmp_136_reg_225) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        pt_portCheckUsed_rsp_fifo_V_write = ap_const_logic_1;
    end else begin
        pt_portCheckUsed_rsp_fifo_V_write = ap_const_logic_0;
    end
end

/// sLookup2portTable_releasePort_s_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or tmp_nbreadreq_fu_72_p3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_85 or ap_sig_bdd_107)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_72_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_55) | (ap_sig_bdd_69 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | (ap_sig_bdd_107 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3))))) begin
        sLookup2portTable_releasePort_s_read = ap_const_logic_1;
    end else begin
        sLookup2portTable_releasePort_s_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3 or ap_sig_bdd_55 or ap_sig_bdd_69 or ap_sig_bdd_85 or ap_sig_bdd_107 or ap_sig_pprstidle_pp0)
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

/// ap_sig_bdd_107 assign process. ///
always @ (portTable2txApp_port_rsp_V_V_full_n or ap_reg_ppstg_tmp_reg_207_pp0_it2 or ap_reg_ppstg_tmp_136_reg_225_pp0_it2 or freePortTable_load_reg_240 or tmp_139_nbwritereq_fu_107_p3)
begin
    ap_sig_bdd_107 = ((portTable2txApp_port_rsp_V_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_207_pp0_it2) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_136_reg_225_pp0_it2) & (ap_const_lv1_0 == freePortTable_load_reg_240) & ~(ap_const_lv1_0 == tmp_139_nbwritereq_fu_107_p3));
end

/// ap_sig_bdd_153 assign process. ///
always @ (tmp_reg_207 or tmp_136_nbreadreq_fu_86_p3)
begin
    ap_sig_bdd_153 = ((ap_const_lv1_0 == tmp_reg_207) & (ap_const_lv1_0 == tmp_136_nbreadreq_fu_86_p3));
end

/// ap_sig_bdd_163 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1)
begin
    ap_sig_bdd_163 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1));
end

/// ap_sig_bdd_172 assign process. ///
always @ (tmp_reg_207 or tmp_527_reg_211)
begin
    ap_sig_bdd_172 = (~(ap_const_lv1_0 == tmp_reg_207) & ~(ap_const_lv1_0 == tmp_527_reg_211));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_55 assign process. ///
always @ (ap_start or ap_done_reg or sLookup2portTable_releasePort_s_empty_n or tmp_nbreadreq_fu_72_p3)
begin
    ap_sig_bdd_55 = (((sLookup2portTable_releasePort_s_empty_n == ap_const_logic_0) & ~(tmp_nbreadreq_fu_72_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_68 assign process. ///
always @ (tmp_reg_207 or tmp_136_nbreadreq_fu_86_p3)
begin
    ap_sig_bdd_68 = ((ap_const_lv1_0 == tmp_reg_207) & ~(ap_const_lv1_0 == tmp_136_nbreadreq_fu_86_p3));
end

/// ap_sig_bdd_69 assign process. ///
always @ (pt_portCheckUsed_req_fifo_V_V_empty_n or tmp_reg_207 or tmp_136_nbreadreq_fu_86_p3)
begin
    ap_sig_bdd_69 = ((pt_portCheckUsed_req_fifo_V_V_empty_n == ap_const_logic_0) & (ap_const_lv1_0 == tmp_reg_207) & ~(ap_const_lv1_0 == tmp_136_nbreadreq_fu_86_p3));
end

/// ap_sig_bdd_85 assign process. ///
always @ (pt_portCheckUsed_rsp_fifo_V_full_n or ap_reg_ppstg_tmp_reg_207_pp0_it1 or tmp_136_reg_225)
begin
    ap_sig_bdd_85 = ((pt_portCheckUsed_rsp_fifo_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_207_pp0_it1) & ~(ap_const_lv1_0 == tmp_136_reg_225));
end
assign freePortTable_address1 = ap_reg_ppstg_freePortTable_addr_2_reg_229_pp0_it2;
assign freePortTable_d0 = ap_const_lv1_0;
assign freePortTable_d1 = ap_const_lv1_1;
assign portTable2txApp_port_rsp_V_V_din = {{ap_const_lv1_1}, {ap_reg_ppstg_pt_cursor_V_load_reg_220_pp0_it2}};
assign pt_portCheckUsed_rsp_fifo_V_din = freePortTable_q0;
assign tmp_136_nbreadreq_fu_86_p3 = pt_portCheckUsed_req_fifo_V_V_empty_n;
assign tmp_139_nbwritereq_fu_107_p3 = portTable2txApp_port_rsp_V_V_full_n;
assign tmp_178_fu_178_p1 = pt_portCheckUsed_req_fifo_V_V_dout;
assign tmp_179_fu_173_p1 = pt_cursor_V;
assign tmp_180_fu_187_p2 = (pt_cursor_V + ap_const_lv15_1);
assign tmp_527_fu_157_p3 = sLookup2portTable_releasePort_s_dout[ap_const_lv32_F];
assign tmp_528_fu_165_p1 = sLookup2portTable_releasePort_s_dout[14:0];
assign tmp_nbreadreq_fu_72_p3 = sLookup2portTable_releasePort_s_empty_n;
assign tmp_s_fu_183_p1 = tmp_528_reg_215;


endmodule //toe_free_port_table


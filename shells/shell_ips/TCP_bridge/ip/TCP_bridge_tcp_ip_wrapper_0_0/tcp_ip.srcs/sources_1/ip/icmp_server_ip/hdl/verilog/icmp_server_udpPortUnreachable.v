// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module icmp_server_udpPortUnreachable (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        udpIn_TDATA,
        udpIn_TVALID,
        udpIn_TREADY,
        udpIn_TKEEP,
        udpIn_TLAST,
        ttlIn_TDATA,
        ttlIn_TVALID,
        ttlIn_TREADY,
        ttlIn_TKEEP,
        ttlIn_TLAST,
        udpPort2addIpHeader_data_V_dat_din,
        udpPort2addIpHeader_data_V_dat_full_n,
        udpPort2addIpHeader_data_V_dat_write,
        udpPort2addIpHeader_data_V_kee_din,
        udpPort2addIpHeader_data_V_kee_full_n,
        udpPort2addIpHeader_data_V_kee_write,
        udpPort2addIpHeader_data_V_las_din,
        udpPort2addIpHeader_data_V_las_full_n,
        udpPort2addIpHeader_data_V_las_write,
        udpPort2addIpHeader_header_V_V_din,
        udpPort2addIpHeader_header_V_V_full_n,
        udpPort2addIpHeader_header_V_V_write,
        checksumStreams_V_V_1_din,
        checksumStreams_V_V_1_full_n,
        checksumStreams_V_V_1_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv9_103 = 9'b100000011;
parameter    ap_const_lv9_B = 9'b1011;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_13 = 32'b10011;
parameter    ap_const_lv20_FFFFF = 20'b11111111111111111111;
parameter    ap_const_lv32_30 = 32'b110000;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv3_2 = 3'b10;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] udpIn_TDATA;
input   udpIn_TVALID;
output   udpIn_TREADY;
input  [7:0] udpIn_TKEEP;
input  [0:0] udpIn_TLAST;
input  [63:0] ttlIn_TDATA;
input   ttlIn_TVALID;
output   ttlIn_TREADY;
input  [7:0] ttlIn_TKEEP;
input  [0:0] ttlIn_TLAST;
output  [63:0] udpPort2addIpHeader_data_V_dat_din;
input   udpPort2addIpHeader_data_V_dat_full_n;
output   udpPort2addIpHeader_data_V_dat_write;
output  [7:0] udpPort2addIpHeader_data_V_kee_din;
input   udpPort2addIpHeader_data_V_kee_full_n;
output   udpPort2addIpHeader_data_V_kee_write;
output  [0:0] udpPort2addIpHeader_data_V_las_din;
input   udpPort2addIpHeader_data_V_las_full_n;
output   udpPort2addIpHeader_data_V_las_write;
output  [63:0] udpPort2addIpHeader_header_V_V_din;
input   udpPort2addIpHeader_header_V_V_full_n;
output   udpPort2addIpHeader_header_V_V_write;
output  [15:0] checksumStreams_V_V_1_din;
input   checksumStreams_V_V_1_full_n;
output   checksumStreams_V_V_1_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg udpIn_TREADY;
reg ttlIn_TREADY;
reg[63:0] udpPort2addIpHeader_data_V_dat_din;
reg[7:0] udpPort2addIpHeader_data_V_kee_din;
reg[0:0] udpPort2addIpHeader_data_V_las_din;
reg udpPort2addIpHeader_header_V_V_write;
reg checksumStreams_V_V_1_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_20;
reg   [1:0] udpState = 2'b00;
reg   [2:0] ipWordCounter_V = 3'b000;
reg   [0:0] streamSource_V = 1'b0;
reg   [19:0] udpChecksum_V = 20'b00000000000000000000;
reg   [0:0] tmp_last_V_9_phi_fu_230_p4;
wire   [0:0] tmp_23_nbwritereq_fu_150_p3;
wire   [0:0] grp_fu_319_p2;
wire   [0:0] grp_nbwritereq_fu_165_p5;
wire    udpPort2addIpHeader_data_V_dat1_status;
wire   [0:0] tmp_22_nbwritereq_fu_210_p3;
wire   [0:0] brmerge_fu_684_p2;
reg    ap_sig_bdd_139;
reg   [7:0] tmp_keep_V_9_phi_fu_240_p4;
reg   [63:0] p_Val2_19_phi_fu_250_p4;
reg   [0:0] tmp_last_V_10_phi_fu_260_p4;
reg   [7:0] tmp_keep_V_10_phi_fu_270_p4;
reg   [63:0] p_Val2_18_phi_fu_280_p4;
reg   [8:0] p_Val2_17_phi_fu_291_p6;
wire   [0:0] tmp_nbreadreq_fu_126_p5;
wire   [0:0] tmp_17_nbreadreq_fu_138_p5;
reg    udpPort2addIpHeader_data_V_dat1_update;
wire   [63:0] tmp_data_V_6_fu_712_p1;
wire   [0:0] tmp_32_fu_660_p2;
wire   [2:0] tmp_33_fu_666_p2;
wire   [19:0] p_Val2_s_fu_447_p2;
wire   [19:0] tmp_28_fu_550_p2;
wire   [19:0] tmp_31_fu_648_p2;
wire   [19:0] tmp_33_cast_fu_717_p1;
wire   [0:0] grp_fu_303_p2;
wire   [0:0] grp_fu_308_p2;
wire   [0:0] grp_fu_314_p2;
wire   [15:0] tmp_95_fu_379_p1;
wire   [3:0] r_V_fu_387_p4;
wire   [16:0] p_cast_fu_383_p1;
wire   [16:0] r_V_cast_fu_397_p1;
wire   [15:0] tmp_97_fu_411_p1;
wire   [15:0] tmp_96_fu_407_p1;
wire   [15:0] tmp_98_fu_415_p2;
wire   [16:0] tmp_s_fu_401_p2;
wire   [0:0] tmp_99_fu_425_p3;
wire   [16:0] p_1_cast_fu_421_p1;
wire   [16:0] r_V_1_fu_433_p1;
wire   [16:0] tmp_25_fu_437_p2;
wire   [19:0] tmp_26_cast_fu_443_p1;
wire   [15:0] p_Result_s_fu_470_p4;
wire   [15:0] p_Result_8_fu_480_p4;
wire   [15:0] p_Result_9_fu_498_p4;
wire   [15:0] tmp_101_fu_512_p1;
wire   [16:0] tmp_37_cast_fu_494_p1;
wire   [16:0] tmp_36_cast_fu_490_p1;
wire   [16:0] tmp_26_fu_520_p2;
wire   [16:0] tmp_40_cast_cast_fu_516_p1;
wire   [16:0] tmp_38_cast_cast_fu_508_p1;
wire   [16:0] tmp2_fu_530_p2;
wire   [17:0] tmp_41_cast_fu_526_p1;
wire   [17:0] tmp2_cast_fu_536_p1;
wire   [17:0] tmp_27_fu_540_p2;
wire   [19:0] tmp_43_cast_fu_546_p1;
wire   [15:0] p_Result_10_fu_568_p4;
wire   [15:0] p_Result_11_fu_578_p4;
wire   [15:0] p_Result_12_fu_596_p4;
wire   [15:0] tmp_102_fu_610_p1;
wire   [16:0] tmp_48_cast_fu_592_p1;
wire   [16:0] tmp_47_cast_fu_588_p1;
wire   [16:0] tmp_29_fu_618_p2;
wire   [16:0] tmp_50_cast_cast_fu_614_p1;
wire   [16:0] tmp_49_cast_cast_fu_606_p1;
wire   [16:0] tmp1_fu_628_p2;
wire   [17:0] tmp_51_cast_fu_624_p1;
wire   [17:0] tmp1_cast_fu_634_p1;
wire   [17:0] tmp_30_fu_638_p2;
wire   [19:0] tmp_53_cast_fu_644_p1;
wire  signed [9:0] p_Val2_16_cast1_fu_708_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_bdd_480;
reg    ap_sig_bdd_125;
reg    ap_sig_bdd_478;
reg    ap_sig_bdd_486;
reg    ap_sig_bdd_488;
reg    ap_sig_bdd_485;
reg    ap_sig_bdd_494;
reg    ap_sig_bdd_497;
reg    ap_sig_bdd_198;
reg    ap_sig_bdd_76;
reg    ap_sig_bdd_88;
reg    ap_sig_bdd_117;
reg    ap_sig_bdd_126;
reg    ap_sig_bdd_142;
reg    ap_sig_bdd_84;
reg    ap_sig_bdd_479;
reg    ap_sig_bdd_205;
reg    ap_sig_bdd_210;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_139)) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_478) begin
        if (ap_sig_bdd_125) begin
            ipWordCounter_V <= ap_const_lv3_0;
        end else if (ap_sig_bdd_480) begin
            ipWordCounter_V <= tmp_33_fu_666_p2;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_198) begin
        if (~(ap_const_lv1_0 == tmp_nbreadreq_fu_126_p5)) begin
            streamSource_V <= ap_const_lv1_0;
        end else if (ap_sig_bdd_486) begin
            streamSource_V <= ap_const_lv1_1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_142) begin
        if (ap_sig_bdd_126) begin
            udpChecksum_V <= tmp_33_cast_fu_717_p1;
        end else if (ap_sig_bdd_117) begin
            udpChecksum_V <= tmp_31_fu_648_p2;
        end else if (ap_sig_bdd_88) begin
            udpChecksum_V <= tmp_28_fu_550_p2;
        end else if (ap_sig_bdd_76) begin
            udpChecksum_V <= p_Val2_s_fu_447_p2;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_142) begin
        if (ap_sig_bdd_126) begin
            udpState <= ap_const_lv2_1;
        end else if (ap_sig_bdd_210) begin
            udpState <= ap_const_lv2_2;
        end else if (ap_sig_bdd_205) begin
            udpState <= ap_const_lv2_3;
        end else if (ap_sig_bdd_76) begin
            udpState <= ap_const_lv2_0;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_139)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_139))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_139)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_139)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// checksumStreams_V_V_1_write assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or udpState or tmp_23_nbwritereq_fu_150_p3 or ap_sig_bdd_139)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & (udpState == ap_const_lv2_3) & ~(ap_const_lv1_0 == tmp_23_nbwritereq_fu_150_p3) & ~ap_sig_bdd_139)) begin
        checksumStreams_V_V_1_write = ap_const_logic_1;
    end else begin
        checksumStreams_V_V_1_write = ap_const_logic_0;
    end
end

/// p_Val2_17_phi_fu_291_p6 assign process. ///
always @ (tmp_nbreadreq_fu_126_p5 or ap_sig_bdd_486 or ap_sig_bdd_488 or ap_sig_bdd_485)
begin
    if (ap_sig_bdd_485) begin
        if (ap_sig_bdd_488) begin
            p_Val2_17_phi_fu_291_p6 = ap_const_lv9_0;
        end else if (ap_sig_bdd_486) begin
            p_Val2_17_phi_fu_291_p6 = ap_const_lv9_B;
        end else if (~(ap_const_lv1_0 == tmp_nbreadreq_fu_126_p5)) begin
            p_Val2_17_phi_fu_291_p6 = ap_const_lv9_103;
        end else begin
            p_Val2_17_phi_fu_291_p6 = 'bx;
        end
    end else begin
        p_Val2_17_phi_fu_291_p6 = 'bx;
    end
end

/// p_Val2_18_phi_fu_280_p4 assign process. ///
always @ (udpIn_TDATA or ttlIn_TDATA or streamSource_V or ap_sig_bdd_494)
begin
    if (ap_sig_bdd_494) begin
        if ((ap_const_lv1_0 == streamSource_V)) begin
            p_Val2_18_phi_fu_280_p4 = udpIn_TDATA;
        end else if (~(ap_const_lv1_0 == streamSource_V)) begin
            p_Val2_18_phi_fu_280_p4 = ttlIn_TDATA;
        end else begin
            p_Val2_18_phi_fu_280_p4 = 'bx;
        end
    end else begin
        p_Val2_18_phi_fu_280_p4 = 'bx;
    end
end

/// p_Val2_19_phi_fu_250_p4 assign process. ///
always @ (udpIn_TDATA or ttlIn_TDATA or streamSource_V or ap_sig_bdd_497)
begin
    if (ap_sig_bdd_497) begin
        if ((ap_const_lv1_0 == streamSource_V)) begin
            p_Val2_19_phi_fu_250_p4 = udpIn_TDATA;
        end else if (~(ap_const_lv1_0 == streamSource_V)) begin
            p_Val2_19_phi_fu_250_p4 = ttlIn_TDATA;
        end else begin
            p_Val2_19_phi_fu_250_p4 = 'bx;
        end
    end else begin
        p_Val2_19_phi_fu_250_p4 = 'bx;
    end
end

/// tmp_keep_V_10_phi_fu_270_p4 assign process. ///
always @ (udpIn_TKEEP or ttlIn_TKEEP or streamSource_V or ap_sig_bdd_494)
begin
    if (ap_sig_bdd_494) begin
        if ((ap_const_lv1_0 == streamSource_V)) begin
            tmp_keep_V_10_phi_fu_270_p4 = udpIn_TKEEP;
        end else if (~(ap_const_lv1_0 == streamSource_V)) begin
            tmp_keep_V_10_phi_fu_270_p4 = ttlIn_TKEEP;
        end else begin
            tmp_keep_V_10_phi_fu_270_p4 = 'bx;
        end
    end else begin
        tmp_keep_V_10_phi_fu_270_p4 = 'bx;
    end
end

/// tmp_keep_V_9_phi_fu_240_p4 assign process. ///
always @ (udpIn_TKEEP or ttlIn_TKEEP or streamSource_V or ap_sig_bdd_497)
begin
    if (ap_sig_bdd_497) begin
        if ((ap_const_lv1_0 == streamSource_V)) begin
            tmp_keep_V_9_phi_fu_240_p4 = udpIn_TKEEP;
        end else if (~(ap_const_lv1_0 == streamSource_V)) begin
            tmp_keep_V_9_phi_fu_240_p4 = ttlIn_TKEEP;
        end else begin
            tmp_keep_V_9_phi_fu_240_p4 = 'bx;
        end
    end else begin
        tmp_keep_V_9_phi_fu_240_p4 = 'bx;
    end
end

/// tmp_last_V_10_phi_fu_260_p4 assign process. ///
always @ (udpIn_TLAST or ttlIn_TLAST or streamSource_V or ap_sig_bdd_494)
begin
    if (ap_sig_bdd_494) begin
        if ((ap_const_lv1_0 == streamSource_V)) begin
            tmp_last_V_10_phi_fu_260_p4 = udpIn_TLAST;
        end else if (~(ap_const_lv1_0 == streamSource_V)) begin
            tmp_last_V_10_phi_fu_260_p4 = ttlIn_TLAST;
        end else begin
            tmp_last_V_10_phi_fu_260_p4 = 'bx;
        end
    end else begin
        tmp_last_V_10_phi_fu_260_p4 = 'bx;
    end
end

/// tmp_last_V_9_phi_fu_230_p4 assign process. ///
always @ (udpIn_TLAST or ttlIn_TLAST or streamSource_V or ap_sig_bdd_497)
begin
    if (ap_sig_bdd_497) begin
        if ((ap_const_lv1_0 == streamSource_V)) begin
            tmp_last_V_9_phi_fu_230_p4 = udpIn_TLAST;
        end else if (~(ap_const_lv1_0 == streamSource_V)) begin
            tmp_last_V_9_phi_fu_230_p4 = ttlIn_TLAST;
        end else begin
            tmp_last_V_9_phi_fu_230_p4 = 'bx;
        end
    end else begin
        tmp_last_V_9_phi_fu_230_p4 = 'bx;
    end
end

/// ttlIn_TREADY assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or udpState or streamSource_V or grp_fu_319_p2 or grp_nbwritereq_fu_165_p5 or tmp_22_nbwritereq_fu_210_p3 or ap_sig_bdd_139)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & (udpState == ap_const_lv2_2) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & ~(ap_const_lv1_0 == streamSource_V) & ~ap_sig_bdd_139) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & ~(ap_const_lv1_0 == streamSource_V) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3) & ~ap_sig_bdd_139))) begin
        ttlIn_TREADY = ap_const_logic_1;
    end else begin
        ttlIn_TREADY = ap_const_logic_0;
    end
end

/// udpIn_TREADY assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or udpState or streamSource_V or grp_fu_319_p2 or grp_nbwritereq_fu_165_p5 or tmp_22_nbwritereq_fu_210_p3 or ap_sig_bdd_139)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & (udpState == ap_const_lv2_2) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (ap_const_lv1_0 == streamSource_V) & ~ap_sig_bdd_139) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (ap_const_lv1_0 == streamSource_V) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3) & ~ap_sig_bdd_139))) begin
        udpIn_TREADY = ap_const_logic_1;
    end else begin
        udpIn_TREADY = ap_const_logic_0;
    end
end

/// udpPort2addIpHeader_data_V_dat1_update assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or udpState or grp_fu_319_p2 or grp_nbwritereq_fu_165_p5 or tmp_22_nbwritereq_fu_210_p3 or brmerge_fu_684_p2 or ap_sig_bdd_139)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & (udpState == ap_const_lv2_2) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & ~ap_sig_bdd_139) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3) & ~ap_sig_bdd_139) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (ap_const_lv2_0 == udpState) & ~(ap_const_lv1_0 == brmerge_fu_684_p2) & ~ap_sig_bdd_139))) begin
        udpPort2addIpHeader_data_V_dat1_update = ap_const_logic_1;
    end else begin
        udpPort2addIpHeader_data_V_dat1_update = ap_const_logic_0;
    end
end

/// udpPort2addIpHeader_data_V_dat_din assign process. ///
always @ (p_Val2_19_phi_fu_250_p4 or p_Val2_18_phi_fu_280_p4 or tmp_data_V_6_fu_712_p1 or ap_sig_bdd_125 or ap_sig_bdd_478 or ap_sig_bdd_84 or ap_sig_bdd_479)
begin
    if (ap_sig_bdd_478) begin
        if (ap_sig_bdd_125) begin
            udpPort2addIpHeader_data_V_dat_din = tmp_data_V_6_fu_712_p1;
        end else if (ap_sig_bdd_479) begin
            udpPort2addIpHeader_data_V_dat_din = p_Val2_18_phi_fu_280_p4;
        end else if (ap_sig_bdd_84) begin
            udpPort2addIpHeader_data_V_dat_din = p_Val2_19_phi_fu_250_p4;
        end else begin
            udpPort2addIpHeader_data_V_dat_din = 'bx;
        end
    end else begin
        udpPort2addIpHeader_data_V_dat_din = 'bx;
    end
end

/// udpPort2addIpHeader_data_V_kee_din assign process. ///
always @ (tmp_keep_V_9_phi_fu_240_p4 or tmp_keep_V_10_phi_fu_270_p4 or ap_sig_bdd_125 or ap_sig_bdd_478 or ap_sig_bdd_84 or ap_sig_bdd_479)
begin
    if (ap_sig_bdd_478) begin
        if (ap_sig_bdd_125) begin
            udpPort2addIpHeader_data_V_kee_din = ap_const_lv8_FF;
        end else if (ap_sig_bdd_479) begin
            udpPort2addIpHeader_data_V_kee_din = tmp_keep_V_10_phi_fu_270_p4;
        end else if (ap_sig_bdd_84) begin
            udpPort2addIpHeader_data_V_kee_din = tmp_keep_V_9_phi_fu_240_p4;
        end else begin
            udpPort2addIpHeader_data_V_kee_din = 'bx;
        end
    end else begin
        udpPort2addIpHeader_data_V_kee_din = 'bx;
    end
end

/// udpPort2addIpHeader_data_V_las_din assign process. ///
always @ (tmp_last_V_9_phi_fu_230_p4 or tmp_last_V_10_phi_fu_260_p4 or ap_sig_bdd_125 or ap_sig_bdd_478 or ap_sig_bdd_84 or ap_sig_bdd_479)
begin
    if (ap_sig_bdd_478) begin
        if (ap_sig_bdd_125) begin
            udpPort2addIpHeader_data_V_las_din = ap_const_lv1_0;
        end else if (ap_sig_bdd_479) begin
            udpPort2addIpHeader_data_V_las_din = tmp_last_V_10_phi_fu_260_p4;
        end else if (ap_sig_bdd_84) begin
            udpPort2addIpHeader_data_V_las_din = tmp_last_V_9_phi_fu_230_p4;
        end else begin
            udpPort2addIpHeader_data_V_las_din = 'bx;
        end
    end else begin
        udpPort2addIpHeader_data_V_las_din = 'bx;
    end
end

/// udpPort2addIpHeader_header_V_V_write assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or udpState or grp_fu_319_p2 or grp_nbwritereq_fu_165_p5 or tmp_22_nbwritereq_fu_210_p3 or ap_sig_bdd_139)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3) & ~ap_sig_bdd_139)) begin
        udpPort2addIpHeader_header_V_V_write = ap_const_logic_1;
    end else begin
        udpPort2addIpHeader_header_V_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_139)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_117 assign process. ///
always @ (udpState or grp_fu_319_p2 or grp_nbwritereq_fu_165_p5 or tmp_22_nbwritereq_fu_210_p3)
begin
    ap_sig_bdd_117 = (~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3));
end

/// ap_sig_bdd_125 assign process. ///
always @ (udpState or brmerge_fu_684_p2)
begin
    ap_sig_bdd_125 = ((ap_const_lv2_0 == udpState) & ~(ap_const_lv1_0 == brmerge_fu_684_p2));
end

/// ap_sig_bdd_126 assign process. ///
always @ (udpState or grp_nbwritereq_fu_165_p5 or brmerge_fu_684_p2)
begin
    ap_sig_bdd_126 = (~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (ap_const_lv2_0 == udpState) & ~(ap_const_lv1_0 == brmerge_fu_684_p2));
end

/// ap_sig_bdd_139 assign process. ///
always @ (ap_start or ap_done_reg or udpIn_TVALID or ttlIn_TVALID or udpState or streamSource_V or udpPort2addIpHeader_header_V_V_full_n or checksumStreams_V_V_1_full_n or tmp_23_nbwritereq_fu_150_p3 or grp_fu_319_p2 or grp_nbwritereq_fu_165_p5 or udpPort2addIpHeader_data_V_dat1_status or tmp_22_nbwritereq_fu_210_p3 or brmerge_fu_684_p2)
begin
    ap_sig_bdd_139 = (((checksumStreams_V_V_1_full_n == ap_const_logic_0) & (udpState == ap_const_lv2_3) & ~(ap_const_lv1_0 == tmp_23_nbwritereq_fu_150_p3)) | ((udpIn_TVALID == ap_const_logic_0) & (udpState == ap_const_lv2_2) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (ap_const_lv1_0 == streamSource_V)) | ((udpState == ap_const_lv2_2) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (ttlIn_TVALID == ap_const_logic_0) & ~(ap_const_lv1_0 == streamSource_V)) | ((udpState == ap_const_lv2_2) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (udpPort2addIpHeader_data_V_dat1_status == ap_const_logic_0)) | ((udpIn_TVALID == ap_const_logic_0) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (ap_const_lv1_0 == streamSource_V) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3)) | (~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (ttlIn_TVALID == ap_const_logic_0) & ~(ap_const_lv1_0 == streamSource_V) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3)) | (~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (udpPort2addIpHeader_data_V_dat1_status == ap_const_logic_0) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3)) | (~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3) & (udpPort2addIpHeader_header_V_V_full_n == ap_const_logic_0)) | (~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (udpPort2addIpHeader_data_V_dat1_status == ap_const_logic_0) & (ap_const_lv2_0 == udpState) & ~(ap_const_lv1_0 == brmerge_fu_684_p2)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_142 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_139)
begin
    ap_sig_bdd_142 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_139);
end

/// ap_sig_bdd_198 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or udpState or grp_nbwritereq_fu_165_p5 or brmerge_fu_684_p2 or ap_sig_bdd_139)
begin
    ap_sig_bdd_198 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (ap_const_lv2_0 == udpState) & ~(ap_const_lv1_0 == brmerge_fu_684_p2) & ~ap_sig_bdd_139);
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_205 assign process. ///
always @ (udpState or tmp_last_V_9_phi_fu_230_p4 or grp_fu_319_p2 or grp_nbwritereq_fu_165_p5)
begin
    ap_sig_bdd_205 = ((udpState == ap_const_lv2_2) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & ~(ap_const_lv1_0 == tmp_last_V_9_phi_fu_230_p4));
end

/// ap_sig_bdd_210 assign process. ///
always @ (udpState or grp_fu_319_p2 or grp_nbwritereq_fu_165_p5 or tmp_22_nbwritereq_fu_210_p3 or tmp_32_fu_660_p2)
begin
    ap_sig_bdd_210 = (~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3) & ~(ap_const_lv1_0 == tmp_32_fu_660_p2));
end

/// ap_sig_bdd_478 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or grp_nbwritereq_fu_165_p5 or ap_sig_bdd_139)
begin
    ap_sig_bdd_478 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & ~ap_sig_bdd_139);
end

/// ap_sig_bdd_479 assign process. ///
always @ (udpState or grp_fu_319_p2 or tmp_22_nbwritereq_fu_210_p3)
begin
    ap_sig_bdd_479 = (~(ap_const_lv1_0 == grp_fu_319_p2) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3));
end

/// ap_sig_bdd_480 assign process. ///
always @ (udpState or grp_fu_319_p2 or tmp_22_nbwritereq_fu_210_p3 or tmp_32_fu_660_p2)
begin
    ap_sig_bdd_480 = (~(ap_const_lv1_0 == grp_fu_319_p2) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3) & (ap_const_lv1_0 == tmp_32_fu_660_p2));
end

/// ap_sig_bdd_485 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or udpState or grp_nbwritereq_fu_165_p5 or brmerge_fu_684_p2)
begin
    ap_sig_bdd_485 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (ap_const_lv2_0 == udpState) & ~(ap_const_lv1_0 == brmerge_fu_684_p2));
end

/// ap_sig_bdd_486 assign process. ///
always @ (tmp_nbreadreq_fu_126_p5 or tmp_17_nbreadreq_fu_138_p5)
begin
    ap_sig_bdd_486 = ((ap_const_lv1_0 == tmp_nbreadreq_fu_126_p5) & ~(ap_const_lv1_0 == tmp_17_nbreadreq_fu_138_p5));
end

/// ap_sig_bdd_488 assign process. ///
always @ (tmp_nbreadreq_fu_126_p5 or tmp_17_nbreadreq_fu_138_p5)
begin
    ap_sig_bdd_488 = ((ap_const_lv1_0 == tmp_nbreadreq_fu_126_p5) & (ap_const_lv1_0 == tmp_17_nbreadreq_fu_138_p5));
end

/// ap_sig_bdd_494 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or udpState or grp_fu_319_p2 or grp_nbwritereq_fu_165_p5 or tmp_22_nbwritereq_fu_210_p3)
begin
    ap_sig_bdd_494 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5) & (udpState == ap_const_lv2_1) & ~(ap_const_lv1_0 == tmp_22_nbwritereq_fu_210_p3));
end

/// ap_sig_bdd_497 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or udpState or grp_fu_319_p2 or grp_nbwritereq_fu_165_p5)
begin
    ap_sig_bdd_497 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & (udpState == ap_const_lv2_2) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5));
end

/// ap_sig_bdd_76 assign process. ///
always @ (udpState or tmp_23_nbwritereq_fu_150_p3)
begin
    ap_sig_bdd_76 = ((udpState == ap_const_lv2_3) & ~(ap_const_lv1_0 == tmp_23_nbwritereq_fu_150_p3));
end

/// ap_sig_bdd_84 assign process. ///
always @ (udpState or grp_fu_319_p2)
begin
    ap_sig_bdd_84 = ((udpState == ap_const_lv2_2) & ~(ap_const_lv1_0 == grp_fu_319_p2));
end

/// ap_sig_bdd_88 assign process. ///
always @ (udpState or grp_fu_319_p2 or grp_nbwritereq_fu_165_p5)
begin
    ap_sig_bdd_88 = ((udpState == ap_const_lv2_2) & ~(ap_const_lv1_0 == grp_fu_319_p2) & ~(ap_const_lv1_0 == grp_nbwritereq_fu_165_p5));
end
assign brmerge_fu_684_p2 = (tmp_nbreadreq_fu_126_p5 | tmp_17_nbreadreq_fu_138_p5);
assign checksumStreams_V_V_1_din = p_Val2_s_fu_447_p2[15:0];
assign grp_fu_303_p2 = (streamSource_V ^ ap_const_lv1_1);
assign grp_fu_308_p2 = (tmp_nbreadreq_fu_126_p5 & grp_fu_303_p2);
assign grp_fu_314_p2 = (streamSource_V & tmp_17_nbreadreq_fu_138_p5);
assign grp_fu_319_p2 = (grp_fu_308_p2 | grp_fu_314_p2);
assign grp_nbwritereq_fu_165_p5 = (udpPort2addIpHeader_data_V_dat_full_n & udpPort2addIpHeader_data_V_kee_full_n & udpPort2addIpHeader_data_V_las_full_n);
assign p_1_cast_fu_421_p1 = tmp_98_fu_415_p2;
assign p_Result_10_fu_568_p4 = {{p_Val2_18_phi_fu_280_p4[ap_const_lv32_3F : ap_const_lv32_30]}};
assign p_Result_11_fu_578_p4 = {{p_Val2_18_phi_fu_280_p4[ap_const_lv32_2F : ap_const_lv32_20]}};
assign p_Result_12_fu_596_p4 = {{p_Val2_18_phi_fu_280_p4[ap_const_lv32_1F : ap_const_lv32_10]}};
assign p_Result_8_fu_480_p4 = {{p_Val2_19_phi_fu_250_p4[ap_const_lv32_2F : ap_const_lv32_20]}};
assign p_Result_9_fu_498_p4 = {{p_Val2_19_phi_fu_250_p4[ap_const_lv32_1F : ap_const_lv32_10]}};
assign p_Result_s_fu_470_p4 = {{p_Val2_19_phi_fu_250_p4[ap_const_lv32_3F : ap_const_lv32_30]}};
assign p_Val2_16_cast1_fu_708_p1 = $signed(p_Val2_17_phi_fu_291_p6);
assign p_Val2_s_fu_447_p2 = (tmp_26_cast_fu_443_p1 ^ ap_const_lv20_FFFFF);
assign p_cast_fu_383_p1 = tmp_95_fu_379_p1;
assign r_V_1_fu_433_p1 = tmp_99_fu_425_p3;
assign r_V_cast_fu_397_p1 = r_V_fu_387_p4;
assign r_V_fu_387_p4 = {{udpChecksum_V[ap_const_lv32_13 : ap_const_lv32_10]}};
assign tmp1_cast_fu_634_p1 = tmp1_fu_628_p2;
assign tmp1_fu_628_p2 = (tmp_50_cast_cast_fu_614_p1 + tmp_49_cast_cast_fu_606_p1);
assign tmp2_cast_fu_536_p1 = tmp2_fu_530_p2;
assign tmp2_fu_530_p2 = (tmp_40_cast_cast_fu_516_p1 + tmp_38_cast_cast_fu_508_p1);
assign tmp_101_fu_512_p1 = p_Val2_19_phi_fu_250_p4[15:0];
assign tmp_102_fu_610_p1 = p_Val2_18_phi_fu_280_p4[15:0];
assign tmp_17_nbreadreq_fu_138_p5 = ttlIn_TVALID;
assign tmp_22_nbwritereq_fu_210_p3 = udpPort2addIpHeader_header_V_V_full_n;
assign tmp_23_nbwritereq_fu_150_p3 = checksumStreams_V_V_1_full_n;
assign tmp_25_fu_437_p2 = (p_1_cast_fu_421_p1 + r_V_1_fu_433_p1);
assign tmp_26_cast_fu_443_p1 = tmp_25_fu_437_p2;
assign tmp_26_fu_520_p2 = (tmp_37_cast_fu_494_p1 + tmp_36_cast_fu_490_p1);
assign tmp_27_fu_540_p2 = (tmp_41_cast_fu_526_p1 + tmp2_cast_fu_536_p1);
assign tmp_28_fu_550_p2 = (tmp_43_cast_fu_546_p1 + udpChecksum_V);
assign tmp_29_fu_618_p2 = (tmp_48_cast_fu_592_p1 + tmp_47_cast_fu_588_p1);
assign tmp_30_fu_638_p2 = (tmp_51_cast_fu_624_p1 + tmp1_cast_fu_634_p1);
assign tmp_31_fu_648_p2 = (tmp_53_cast_fu_644_p1 + udpChecksum_V);
assign tmp_32_fu_660_p2 = (ipWordCounter_V == ap_const_lv3_2? 1'b1: 1'b0);
assign tmp_33_cast_fu_717_p1 = $unsigned(p_Val2_16_cast1_fu_708_p1);
assign tmp_33_fu_666_p2 = (ipWordCounter_V + ap_const_lv3_1);
assign tmp_36_cast_fu_490_p1 = p_Result_s_fu_470_p4;
assign tmp_37_cast_fu_494_p1 = p_Result_8_fu_480_p4;
assign tmp_38_cast_cast_fu_508_p1 = p_Result_9_fu_498_p4;
assign tmp_40_cast_cast_fu_516_p1 = tmp_101_fu_512_p1;
assign tmp_41_cast_fu_526_p1 = tmp_26_fu_520_p2;
assign tmp_43_cast_fu_546_p1 = tmp_27_fu_540_p2;
assign tmp_47_cast_fu_588_p1 = p_Result_10_fu_568_p4;
assign tmp_48_cast_fu_592_p1 = p_Result_11_fu_578_p4;
assign tmp_49_cast_cast_fu_606_p1 = p_Result_12_fu_596_p4;
assign tmp_50_cast_cast_fu_614_p1 = tmp_102_fu_610_p1;
assign tmp_51_cast_fu_624_p1 = tmp_29_fu_618_p2;
assign tmp_53_cast_fu_644_p1 = tmp_30_fu_638_p2;
assign tmp_95_fu_379_p1 = udpChecksum_V[15:0];
assign tmp_96_fu_407_p1 = udpChecksum_V[15:0];
assign tmp_97_fu_411_p1 = r_V_fu_387_p4;
assign tmp_98_fu_415_p2 = (tmp_97_fu_411_p1 + tmp_96_fu_407_p1);
assign tmp_99_fu_425_p3 = tmp_s_fu_401_p2[ap_const_lv32_10];
assign tmp_data_V_6_fu_712_p1 = $unsigned(p_Val2_16_cast1_fu_708_p1);
assign tmp_nbreadreq_fu_126_p5 = udpIn_TVALID;
assign tmp_s_fu_401_p2 = (p_cast_fu_383_p1 + r_V_cast_fu_397_p1);
assign udpPort2addIpHeader_data_V_dat1_status = (udpPort2addIpHeader_data_V_dat_full_n & udpPort2addIpHeader_data_V_kee_full_n & udpPort2addIpHeader_data_V_las_full_n);
assign udpPort2addIpHeader_data_V_dat_write = udpPort2addIpHeader_data_V_dat1_update;
assign udpPort2addIpHeader_data_V_kee_write = udpPort2addIpHeader_data_V_dat1_update;
assign udpPort2addIpHeader_data_V_las_write = udpPort2addIpHeader_data_V_dat1_update;
assign udpPort2addIpHeader_header_V_V_din = p_Val2_18_phi_fu_280_p4;


endmodule //icmp_server_udpPortUnreachable


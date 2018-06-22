// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="ip_handler,hls_ip_2015_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7vx690tffg1761-2,HLS_INPUT_CLOCK=6.400000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.615000,HLS_SYN_LAT=2,HLS_SYN_TPT=1,HLS_SYN_MEM=5,HLS_SYN_DSP=0,HLS_SYN_FF=574,HLS_SYN_LUT=1713}" *)

module ip_handler (
        s_axis_raw_TDATA,
        s_axis_raw_TKEEP,
        s_axis_raw_TLAST,
        m_axis_ARP_TDATA,
        m_axis_ARP_TKEEP,
        m_axis_ARP_TLAST,
        m_axis_ICMP_TDATA,
        m_axis_ICMP_TKEEP,
        m_axis_ICMP_TLAST,
        m_axis_UDP_TDATA,
        m_axis_UDP_TKEEP,
        m_axis_UDP_TLAST,
        m_axis_TCP_TDATA,
        m_axis_TCP_TKEEP,
        m_axis_TCP_TLAST,
        myIpAddress_V,
        ap_clk,
        ap_rst_n,
        s_axis_raw_TVALID,
        s_axis_raw_TREADY,
        m_axis_ARP_TVALID,
        m_axis_ARP_TREADY,
        m_axis_ICMP_TVALID,
        m_axis_ICMP_TREADY,
        m_axis_UDP_TVALID,
        m_axis_UDP_TREADY,
        m_axis_TCP_TVALID,
        m_axis_TCP_TREADY
);

parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_true = 1'b1;

input  [63:0] s_axis_raw_TDATA;
input  [7:0] s_axis_raw_TKEEP;
input  [0:0] s_axis_raw_TLAST;
output  [63:0] m_axis_ARP_TDATA;
output  [7:0] m_axis_ARP_TKEEP;
output  [0:0] m_axis_ARP_TLAST;
output  [63:0] m_axis_ICMP_TDATA;
output  [7:0] m_axis_ICMP_TKEEP;
output  [0:0] m_axis_ICMP_TLAST;
output  [63:0] m_axis_UDP_TDATA;
output  [7:0] m_axis_UDP_TKEEP;
output  [0:0] m_axis_UDP_TLAST;
output  [63:0] m_axis_TCP_TDATA;
output  [7:0] m_axis_TCP_TKEEP;
output  [0:0] m_axis_TCP_TLAST;
input  [31:0] myIpAddress_V;
input   ap_clk;
input   ap_rst_n;
input   s_axis_raw_TVALID;
output   s_axis_raw_TREADY;
output   m_axis_ARP_TVALID;
input   m_axis_ARP_TREADY;
output   m_axis_ICMP_TVALID;
input   m_axis_ICMP_TREADY;
output   m_axis_UDP_TVALID;
input   m_axis_UDP_TREADY;
output   m_axis_TCP_TVALID;
input   m_axis_TCP_TREADY;

reg    ap_rst_n_inv;
wire    ip_handler_detect_mac_protocol_U0_ap_start;
wire    ip_handler_detect_mac_protocol_U0_ap_done;
wire    ip_handler_detect_mac_protocol_U0_ap_continue;
wire    ip_handler_detect_mac_protocol_U0_ap_idle;
wire    ip_handler_detect_mac_protocol_U0_ap_ready;
wire   [63:0] ip_handler_detect_mac_protocol_U0_s_axis_raw_TDATA;
wire    ip_handler_detect_mac_protocol_U0_s_axis_raw_TVALID;
wire    ip_handler_detect_mac_protocol_U0_s_axis_raw_TREADY;
wire   [7:0] ip_handler_detect_mac_protocol_U0_s_axis_raw_TKEEP;
wire   [0:0] ip_handler_detect_mac_protocol_U0_s_axis_raw_TLAST;
wire   [63:0] ip_handler_detect_mac_protocol_U0_m_axis_ARP_TDATA;
wire    ip_handler_detect_mac_protocol_U0_m_axis_ARP_TVALID;
wire    ip_handler_detect_mac_protocol_U0_m_axis_ARP_TREADY;
wire   [7:0] ip_handler_detect_mac_protocol_U0_m_axis_ARP_TKEEP;
wire   [0:0] ip_handler_detect_mac_protocol_U0_m_axis_ARP_TLAST;
wire   [72:0] ip_handler_detect_mac_protocol_U0_ipDataFifo_V_din;
wire    ip_handler_detect_mac_protocol_U0_ipDataFifo_V_full_n;
wire    ip_handler_detect_mac_protocol_U0_ipDataFifo_V_write;
wire    ap_sig_hs_continue;
wire    ip_handler_check_ip_checksum_U0_ap_start;
wire    ip_handler_check_ip_checksum_U0_ap_done;
wire    ip_handler_check_ip_checksum_U0_ap_continue;
wire    ip_handler_check_ip_checksum_U0_ap_idle;
wire    ip_handler_check_ip_checksum_U0_ap_ready;
wire   [31:0] ip_handler_check_ip_checksum_U0_myIpAddress_V;
wire   [72:0] ip_handler_check_ip_checksum_U0_ipDataFifo_V_dout;
wire    ip_handler_check_ip_checksum_U0_ipDataFifo_V_empty_n;
wire    ip_handler_check_ip_checksum_U0_ipDataFifo_V_read;
wire   [72:0] ip_handler_check_ip_checksum_U0_ipDataCheckFifo_V_din;
wire    ip_handler_check_ip_checksum_U0_ipDataCheckFifo_V_full_n;
wire    ip_handler_check_ip_checksum_U0_ipDataCheckFifo_V_write;
wire   [68:0] ip_handler_check_ip_checksum_U0_iph_subSumsFifoOut_V_din;
wire    ip_handler_check_ip_checksum_U0_iph_subSumsFifoOut_V_full_n;
wire    ip_handler_check_ip_checksum_U0_iph_subSumsFifoOut_V_write;
reg    ip_handler_iph_check_ip_checksum_U0_ap_start = 1'b0;
wire    ip_handler_iph_check_ip_checksum_U0_ap_done;
wire    ip_handler_iph_check_ip_checksum_U0_ap_continue;
wire    ip_handler_iph_check_ip_checksum_U0_ap_idle;
wire    ip_handler_iph_check_ip_checksum_U0_ap_ready;
wire   [68:0] ip_handler_iph_check_ip_checksum_U0_iph_subSumsFifoOut_V_dout;
wire    ip_handler_iph_check_ip_checksum_U0_iph_subSumsFifoOut_V_empty_n;
wire    ip_handler_iph_check_ip_checksum_U0_iph_subSumsFifoOut_V_read;
wire   [0:0] ip_handler_iph_check_ip_checksum_U0_ipValidFifo_V_din;
wire    ip_handler_iph_check_ip_checksum_U0_ipValidFifo_V_full_n;
wire    ip_handler_iph_check_ip_checksum_U0_ipValidFifo_V_write;
reg    ip_handler_ip_invalid_dropper_U0_ap_start = 1'b0;
wire    ip_handler_ip_invalid_dropper_U0_ap_done;
wire    ip_handler_ip_invalid_dropper_U0_ap_continue;
wire    ip_handler_ip_invalid_dropper_U0_ap_idle;
wire    ip_handler_ip_invalid_dropper_U0_ap_ready;
wire   [0:0] ip_handler_ip_invalid_dropper_U0_ipValidFifo_V_dout;
wire    ip_handler_ip_invalid_dropper_U0_ipValidFifo_V_empty_n;
wire    ip_handler_ip_invalid_dropper_U0_ipValidFifo_V_read;
wire   [72:0] ip_handler_ip_invalid_dropper_U0_ipDataCheckFifo_V_dout;
wire    ip_handler_ip_invalid_dropper_U0_ipDataCheckFifo_V_empty_n;
wire    ip_handler_ip_invalid_dropper_U0_ipDataCheckFifo_V_read;
wire   [72:0] ip_handler_ip_invalid_dropper_U0_ipDataDropFifo_V_din;
wire    ip_handler_ip_invalid_dropper_U0_ipDataDropFifo_V_full_n;
wire    ip_handler_ip_invalid_dropper_U0_ipDataDropFifo_V_write;
reg    ip_handler_cut_length_U0_ap_start = 1'b0;
wire    ip_handler_cut_length_U0_ap_done;
wire    ip_handler_cut_length_U0_ap_continue;
wire    ip_handler_cut_length_U0_ap_idle;
wire    ip_handler_cut_length_U0_ap_ready;
wire   [72:0] ip_handler_cut_length_U0_ipDataDropFifo_V_dout;
wire    ip_handler_cut_length_U0_ipDataDropFifo_V_empty_n;
wire    ip_handler_cut_length_U0_ipDataDropFifo_V_read;
wire   [72:0] ip_handler_cut_length_U0_ipDataCutFifo_V_din;
wire    ip_handler_cut_length_U0_ipDataCutFifo_V_full_n;
wire    ip_handler_cut_length_U0_ipDataCutFifo_V_write;
reg    ip_handler_detect_ip_protocol_U0_ap_start = 1'b0;
wire    ip_handler_detect_ip_protocol_U0_ap_done;
wire    ip_handler_detect_ip_protocol_U0_ap_continue;
wire    ip_handler_detect_ip_protocol_U0_ap_idle;
wire    ip_handler_detect_ip_protocol_U0_ap_ready;
wire   [63:0] ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TDATA;
wire    ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TVALID;
wire    ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TREADY;
wire   [7:0] ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TKEEP;
wire   [0:0] ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TLAST;
wire   [63:0] ip_handler_detect_ip_protocol_U0_m_axis_UDP_TDATA;
wire    ip_handler_detect_ip_protocol_U0_m_axis_UDP_TVALID;
wire    ip_handler_detect_ip_protocol_U0_m_axis_UDP_TREADY;
wire   [7:0] ip_handler_detect_ip_protocol_U0_m_axis_UDP_TKEEP;
wire   [0:0] ip_handler_detect_ip_protocol_U0_m_axis_UDP_TLAST;
wire   [63:0] ip_handler_detect_ip_protocol_U0_m_axis_TCP_TDATA;
wire    ip_handler_detect_ip_protocol_U0_m_axis_TCP_TVALID;
wire    ip_handler_detect_ip_protocol_U0_m_axis_TCP_TREADY;
wire   [7:0] ip_handler_detect_ip_protocol_U0_m_axis_TCP_TKEEP;
wire   [0:0] ip_handler_detect_ip_protocol_U0_m_axis_TCP_TLAST;
wire   [72:0] ip_handler_detect_ip_protocol_U0_ipDataCutFifo_V_dout;
wire    ip_handler_detect_ip_protocol_U0_ipDataCutFifo_V_empty_n;
wire    ip_handler_detect_ip_protocol_U0_ipDataCutFifo_V_read;
wire    ipDataFifo_V_U_ap_dummy_ce;
wire   [72:0] ipDataFifo_V_din;
wire    ipDataFifo_V_full_n;
wire    ipDataFifo_V_write;
wire   [72:0] ipDataFifo_V_dout;
wire    ipDataFifo_V_empty_n;
wire    ipDataFifo_V_read;
wire    ipDataCheckFifo_V_U_ap_dummy_ce;
wire   [72:0] ipDataCheckFifo_V_din;
wire    ipDataCheckFifo_V_full_n;
wire    ipDataCheckFifo_V_write;
wire   [72:0] ipDataCheckFifo_V_dout;
wire    ipDataCheckFifo_V_empty_n;
wire    ipDataCheckFifo_V_read;
wire    iph_subSumsFifoOut_V_U_ap_dummy_ce;
wire   [68:0] iph_subSumsFifoOut_V_din;
wire    iph_subSumsFifoOut_V_full_n;
wire    iph_subSumsFifoOut_V_write;
wire   [68:0] iph_subSumsFifoOut_V_dout;
wire    iph_subSumsFifoOut_V_empty_n;
wire    iph_subSumsFifoOut_V_read;
wire    ipValidFifo_V_U_ap_dummy_ce;
wire   [0:0] ipValidFifo_V_din;
wire    ipValidFifo_V_full_n;
wire    ipValidFifo_V_write;
wire   [0:0] ipValidFifo_V_dout;
wire    ipValidFifo_V_empty_n;
wire    ipValidFifo_V_read;
wire    ipDataDropFifo_V_U_ap_dummy_ce;
wire   [72:0] ipDataDropFifo_V_din;
wire    ipDataDropFifo_V_full_n;
wire    ipDataDropFifo_V_write;
wire   [72:0] ipDataDropFifo_V_dout;
wire    ipDataDropFifo_V_empty_n;
wire    ipDataDropFifo_V_read;
wire    ipDataCutFifo_V_U_ap_dummy_ce;
wire   [72:0] ipDataCutFifo_V_din;
wire    ipDataCutFifo_V_full_n;
wire    ipDataCutFifo_V_write;
wire   [72:0] ipDataCutFifo_V_dout;
wire    ipDataCutFifo_V_empty_n;
wire    ipDataCutFifo_V_read;
reg    ap_CS;
reg    ap_reg_procdone_ip_handler_detect_mac_protocol_U0 = 1'b0;
reg    ap_reg_procdone_ip_handler_detect_ip_protocol_U0 = 1'b0;
reg    ap_sig_hs_done;


ip_handler_detect_mac_protocol ip_handler_detect_mac_protocol_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst_n_inv ),
    .ap_start( ip_handler_detect_mac_protocol_U0_ap_start ),
    .ap_done( ip_handler_detect_mac_protocol_U0_ap_done ),
    .ap_continue( ip_handler_detect_mac_protocol_U0_ap_continue ),
    .ap_idle( ip_handler_detect_mac_protocol_U0_ap_idle ),
    .ap_ready( ip_handler_detect_mac_protocol_U0_ap_ready ),
    .s_axis_raw_TDATA( ip_handler_detect_mac_protocol_U0_s_axis_raw_TDATA ),
    .s_axis_raw_TVALID( ip_handler_detect_mac_protocol_U0_s_axis_raw_TVALID ),
    .s_axis_raw_TREADY( ip_handler_detect_mac_protocol_U0_s_axis_raw_TREADY ),
    .s_axis_raw_TKEEP( ip_handler_detect_mac_protocol_U0_s_axis_raw_TKEEP ),
    .s_axis_raw_TLAST( ip_handler_detect_mac_protocol_U0_s_axis_raw_TLAST ),
    .m_axis_ARP_TDATA( ip_handler_detect_mac_protocol_U0_m_axis_ARP_TDATA ),
    .m_axis_ARP_TVALID( ip_handler_detect_mac_protocol_U0_m_axis_ARP_TVALID ),
    .m_axis_ARP_TREADY( ip_handler_detect_mac_protocol_U0_m_axis_ARP_TREADY ),
    .m_axis_ARP_TKEEP( ip_handler_detect_mac_protocol_U0_m_axis_ARP_TKEEP ),
    .m_axis_ARP_TLAST( ip_handler_detect_mac_protocol_U0_m_axis_ARP_TLAST ),
    .ipDataFifo_V_din( ip_handler_detect_mac_protocol_U0_ipDataFifo_V_din ),
    .ipDataFifo_V_full_n( ip_handler_detect_mac_protocol_U0_ipDataFifo_V_full_n ),
    .ipDataFifo_V_write( ip_handler_detect_mac_protocol_U0_ipDataFifo_V_write )
);

ip_handler_check_ip_checksum ip_handler_check_ip_checksum_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst_n_inv ),
    .ap_start( ip_handler_check_ip_checksum_U0_ap_start ),
    .ap_done( ip_handler_check_ip_checksum_U0_ap_done ),
    .ap_continue( ip_handler_check_ip_checksum_U0_ap_continue ),
    .ap_idle( ip_handler_check_ip_checksum_U0_ap_idle ),
    .ap_ready( ip_handler_check_ip_checksum_U0_ap_ready ),
    .myIpAddress_V( ip_handler_check_ip_checksum_U0_myIpAddress_V ),
    .ipDataFifo_V_dout( ip_handler_check_ip_checksum_U0_ipDataFifo_V_dout ),
    .ipDataFifo_V_empty_n( ip_handler_check_ip_checksum_U0_ipDataFifo_V_empty_n ),
    .ipDataFifo_V_read( ip_handler_check_ip_checksum_U0_ipDataFifo_V_read ),
    .ipDataCheckFifo_V_din( ip_handler_check_ip_checksum_U0_ipDataCheckFifo_V_din ),
    .ipDataCheckFifo_V_full_n( ip_handler_check_ip_checksum_U0_ipDataCheckFifo_V_full_n ),
    .ipDataCheckFifo_V_write( ip_handler_check_ip_checksum_U0_ipDataCheckFifo_V_write ),
    .iph_subSumsFifoOut_V_din( ip_handler_check_ip_checksum_U0_iph_subSumsFifoOut_V_din ),
    .iph_subSumsFifoOut_V_full_n( ip_handler_check_ip_checksum_U0_iph_subSumsFifoOut_V_full_n ),
    .iph_subSumsFifoOut_V_write( ip_handler_check_ip_checksum_U0_iph_subSumsFifoOut_V_write )
);

ip_handler_iph_check_ip_checksum ip_handler_iph_check_ip_checksum_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst_n_inv ),
    .ap_start( ip_handler_iph_check_ip_checksum_U0_ap_start ),
    .ap_done( ip_handler_iph_check_ip_checksum_U0_ap_done ),
    .ap_continue( ip_handler_iph_check_ip_checksum_U0_ap_continue ),
    .ap_idle( ip_handler_iph_check_ip_checksum_U0_ap_idle ),
    .ap_ready( ip_handler_iph_check_ip_checksum_U0_ap_ready ),
    .iph_subSumsFifoOut_V_dout( ip_handler_iph_check_ip_checksum_U0_iph_subSumsFifoOut_V_dout ),
    .iph_subSumsFifoOut_V_empty_n( ip_handler_iph_check_ip_checksum_U0_iph_subSumsFifoOut_V_empty_n ),
    .iph_subSumsFifoOut_V_read( ip_handler_iph_check_ip_checksum_U0_iph_subSumsFifoOut_V_read ),
    .ipValidFifo_V_din( ip_handler_iph_check_ip_checksum_U0_ipValidFifo_V_din ),
    .ipValidFifo_V_full_n( ip_handler_iph_check_ip_checksum_U0_ipValidFifo_V_full_n ),
    .ipValidFifo_V_write( ip_handler_iph_check_ip_checksum_U0_ipValidFifo_V_write )
);

ip_handler_ip_invalid_dropper ip_handler_ip_invalid_dropper_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst_n_inv ),
    .ap_start( ip_handler_ip_invalid_dropper_U0_ap_start ),
    .ap_done( ip_handler_ip_invalid_dropper_U0_ap_done ),
    .ap_continue( ip_handler_ip_invalid_dropper_U0_ap_continue ),
    .ap_idle( ip_handler_ip_invalid_dropper_U0_ap_idle ),
    .ap_ready( ip_handler_ip_invalid_dropper_U0_ap_ready ),
    .ipValidFifo_V_dout( ip_handler_ip_invalid_dropper_U0_ipValidFifo_V_dout ),
    .ipValidFifo_V_empty_n( ip_handler_ip_invalid_dropper_U0_ipValidFifo_V_empty_n ),
    .ipValidFifo_V_read( ip_handler_ip_invalid_dropper_U0_ipValidFifo_V_read ),
    .ipDataCheckFifo_V_dout( ip_handler_ip_invalid_dropper_U0_ipDataCheckFifo_V_dout ),
    .ipDataCheckFifo_V_empty_n( ip_handler_ip_invalid_dropper_U0_ipDataCheckFifo_V_empty_n ),
    .ipDataCheckFifo_V_read( ip_handler_ip_invalid_dropper_U0_ipDataCheckFifo_V_read ),
    .ipDataDropFifo_V_din( ip_handler_ip_invalid_dropper_U0_ipDataDropFifo_V_din ),
    .ipDataDropFifo_V_full_n( ip_handler_ip_invalid_dropper_U0_ipDataDropFifo_V_full_n ),
    .ipDataDropFifo_V_write( ip_handler_ip_invalid_dropper_U0_ipDataDropFifo_V_write )
);

ip_handler_cut_length ip_handler_cut_length_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst_n_inv ),
    .ap_start( ip_handler_cut_length_U0_ap_start ),
    .ap_done( ip_handler_cut_length_U0_ap_done ),
    .ap_continue( ip_handler_cut_length_U0_ap_continue ),
    .ap_idle( ip_handler_cut_length_U0_ap_idle ),
    .ap_ready( ip_handler_cut_length_U0_ap_ready ),
    .ipDataDropFifo_V_dout( ip_handler_cut_length_U0_ipDataDropFifo_V_dout ),
    .ipDataDropFifo_V_empty_n( ip_handler_cut_length_U0_ipDataDropFifo_V_empty_n ),
    .ipDataDropFifo_V_read( ip_handler_cut_length_U0_ipDataDropFifo_V_read ),
    .ipDataCutFifo_V_din( ip_handler_cut_length_U0_ipDataCutFifo_V_din ),
    .ipDataCutFifo_V_full_n( ip_handler_cut_length_U0_ipDataCutFifo_V_full_n ),
    .ipDataCutFifo_V_write( ip_handler_cut_length_U0_ipDataCutFifo_V_write )
);

ip_handler_detect_ip_protocol ip_handler_detect_ip_protocol_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst_n_inv ),
    .ap_start( ip_handler_detect_ip_protocol_U0_ap_start ),
    .ap_done( ip_handler_detect_ip_protocol_U0_ap_done ),
    .ap_continue( ip_handler_detect_ip_protocol_U0_ap_continue ),
    .ap_idle( ip_handler_detect_ip_protocol_U0_ap_idle ),
    .ap_ready( ip_handler_detect_ip_protocol_U0_ap_ready ),
    .m_axis_ICMP_TDATA( ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TDATA ),
    .m_axis_ICMP_TVALID( ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TVALID ),
    .m_axis_ICMP_TREADY( ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TREADY ),
    .m_axis_ICMP_TKEEP( ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TKEEP ),
    .m_axis_ICMP_TLAST( ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TLAST ),
    .m_axis_UDP_TDATA( ip_handler_detect_ip_protocol_U0_m_axis_UDP_TDATA ),
    .m_axis_UDP_TVALID( ip_handler_detect_ip_protocol_U0_m_axis_UDP_TVALID ),
    .m_axis_UDP_TREADY( ip_handler_detect_ip_protocol_U0_m_axis_UDP_TREADY ),
    .m_axis_UDP_TKEEP( ip_handler_detect_ip_protocol_U0_m_axis_UDP_TKEEP ),
    .m_axis_UDP_TLAST( ip_handler_detect_ip_protocol_U0_m_axis_UDP_TLAST ),
    .m_axis_TCP_TDATA( ip_handler_detect_ip_protocol_U0_m_axis_TCP_TDATA ),
    .m_axis_TCP_TVALID( ip_handler_detect_ip_protocol_U0_m_axis_TCP_TVALID ),
    .m_axis_TCP_TREADY( ip_handler_detect_ip_protocol_U0_m_axis_TCP_TREADY ),
    .m_axis_TCP_TKEEP( ip_handler_detect_ip_protocol_U0_m_axis_TCP_TKEEP ),
    .m_axis_TCP_TLAST( ip_handler_detect_ip_protocol_U0_m_axis_TCP_TLAST ),
    .ipDataCutFifo_V_dout( ip_handler_detect_ip_protocol_U0_ipDataCutFifo_V_dout ),
    .ipDataCutFifo_V_empty_n( ip_handler_detect_ip_protocol_U0_ipDataCutFifo_V_empty_n ),
    .ipDataCutFifo_V_read( ip_handler_detect_ip_protocol_U0_ipDataCutFifo_V_read )
);

FIFO_ip_handler_ipDataFifo_V ipDataFifo_V_U(
    .clk( ap_clk ),
    .reset( ap_rst_n_inv ),
    .if_read_ce( ipDataFifo_V_U_ap_dummy_ce ),
    .if_write_ce( ipDataFifo_V_U_ap_dummy_ce ),
    .if_din( ipDataFifo_V_din ),
    .if_full_n( ipDataFifo_V_full_n ),
    .if_write( ipDataFifo_V_write ),
    .if_dout( ipDataFifo_V_dout ),
    .if_empty_n( ipDataFifo_V_empty_n ),
    .if_read( ipDataFifo_V_read )
);

FIFO_ip_handler_ipDataCheckFifo_V ipDataCheckFifo_V_U(
    .clk( ap_clk ),
    .reset( ap_rst_n_inv ),
    .if_read_ce( ipDataCheckFifo_V_U_ap_dummy_ce ),
    .if_write_ce( ipDataCheckFifo_V_U_ap_dummy_ce ),
    .if_din( ipDataCheckFifo_V_din ),
    .if_full_n( ipDataCheckFifo_V_full_n ),
    .if_write( ipDataCheckFifo_V_write ),
    .if_dout( ipDataCheckFifo_V_dout ),
    .if_empty_n( ipDataCheckFifo_V_empty_n ),
    .if_read( ipDataCheckFifo_V_read )
);

FIFO_ip_handler_iph_subSumsFifoOut_V iph_subSumsFifoOut_V_U(
    .clk( ap_clk ),
    .reset( ap_rst_n_inv ),
    .if_read_ce( iph_subSumsFifoOut_V_U_ap_dummy_ce ),
    .if_write_ce( iph_subSumsFifoOut_V_U_ap_dummy_ce ),
    .if_din( iph_subSumsFifoOut_V_din ),
    .if_full_n( iph_subSumsFifoOut_V_full_n ),
    .if_write( iph_subSumsFifoOut_V_write ),
    .if_dout( iph_subSumsFifoOut_V_dout ),
    .if_empty_n( iph_subSumsFifoOut_V_empty_n ),
    .if_read( iph_subSumsFifoOut_V_read )
);

FIFO_ip_handler_ipValidFifo_V ipValidFifo_V_U(
    .clk( ap_clk ),
    .reset( ap_rst_n_inv ),
    .if_read_ce( ipValidFifo_V_U_ap_dummy_ce ),
    .if_write_ce( ipValidFifo_V_U_ap_dummy_ce ),
    .if_din( ipValidFifo_V_din ),
    .if_full_n( ipValidFifo_V_full_n ),
    .if_write( ipValidFifo_V_write ),
    .if_dout( ipValidFifo_V_dout ),
    .if_empty_n( ipValidFifo_V_empty_n ),
    .if_read( ipValidFifo_V_read )
);

FIFO_ip_handler_ipDataDropFifo_V ipDataDropFifo_V_U(
    .clk( ap_clk ),
    .reset( ap_rst_n_inv ),
    .if_read_ce( ipDataDropFifo_V_U_ap_dummy_ce ),
    .if_write_ce( ipDataDropFifo_V_U_ap_dummy_ce ),
    .if_din( ipDataDropFifo_V_din ),
    .if_full_n( ipDataDropFifo_V_full_n ),
    .if_write( ipDataDropFifo_V_write ),
    .if_dout( ipDataDropFifo_V_dout ),
    .if_empty_n( ipDataDropFifo_V_empty_n ),
    .if_read( ipDataDropFifo_V_read )
);

FIFO_ip_handler_ipDataCutFifo_V ipDataCutFifo_V_U(
    .clk( ap_clk ),
    .reset( ap_rst_n_inv ),
    .if_read_ce( ipDataCutFifo_V_U_ap_dummy_ce ),
    .if_write_ce( ipDataCutFifo_V_U_ap_dummy_ce ),
    .if_din( ipDataCutFifo_V_din ),
    .if_full_n( ipDataCutFifo_V_full_n ),
    .if_write( ipDataCutFifo_V_write ),
    .if_dout( ipDataCutFifo_V_dout ),
    .if_empty_n( ipDataCutFifo_V_empty_n ),
    .if_read( ipDataCutFifo_V_read )
);



/// ap_reg_procdone_ip_handler_detect_ip_protocol_U0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_procdone_ip_handler_detect_ip_protocol_U0
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_procdone_ip_handler_detect_ip_protocol_U0 <= ap_const_logic_0;
    end else begin
    end
end

/// ap_reg_procdone_ip_handler_detect_mac_protocol_U0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_procdone_ip_handler_detect_mac_protocol_U0
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_procdone_ip_handler_detect_mac_protocol_U0 <= ap_const_logic_0;
    end else begin
    end
end

/// ip_handler_cut_length_U0_ap_start assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ip_handler_cut_length_U0_ap_start
    if (ap_rst_n_inv == 1'b1) begin
        ip_handler_cut_length_U0_ap_start <= ap_const_logic_0;
    end else begin
        ip_handler_cut_length_U0_ap_start <= ap_const_logic_1;
    end
end

/// ip_handler_detect_ip_protocol_U0_ap_start assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ip_handler_detect_ip_protocol_U0_ap_start
    if (ap_rst_n_inv == 1'b1) begin
        ip_handler_detect_ip_protocol_U0_ap_start <= ap_const_logic_0;
    end else begin
        ip_handler_detect_ip_protocol_U0_ap_start <= ap_const_logic_1;
    end
end

/// ip_handler_ip_invalid_dropper_U0_ap_start assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ip_handler_ip_invalid_dropper_U0_ap_start
    if (ap_rst_n_inv == 1'b1) begin
        ip_handler_ip_invalid_dropper_U0_ap_start <= ap_const_logic_0;
    end else begin
        ip_handler_ip_invalid_dropper_U0_ap_start <= ap_const_logic_1;
    end
end

/// ip_handler_iph_check_ip_checksum_U0_ap_start assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ip_handler_iph_check_ip_checksum_U0_ap_start
    if (ap_rst_n_inv == 1'b1) begin
        ip_handler_iph_check_ip_checksum_U0_ap_start <= ap_const_logic_0;
    end else begin
        ip_handler_iph_check_ip_checksum_U0_ap_start <= ap_const_logic_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    ap_CS <= ap_const_logic_0;
end

/// ap_sig_hs_done assign process. ///
always @ (ap_reg_procdone_ip_handler_detect_mac_protocol_U0 or ap_reg_procdone_ip_handler_detect_ip_protocol_U0)
begin
    if (((ap_const_logic_1 == ap_reg_procdone_ip_handler_detect_mac_protocol_U0) & (ap_const_logic_1 == ap_reg_procdone_ip_handler_detect_ip_protocol_U0))) begin
        ap_sig_hs_done = ap_const_logic_1;
    end else begin
        ap_sig_hs_done = ap_const_logic_0;
    end
end

/// ap_rst_n_inv assign process. ///
always @ (ap_rst_n)
begin
    ap_rst_n_inv = ~ap_rst_n;
end
assign ap_sig_hs_continue = ap_const_logic_0;
assign ipDataCheckFifo_V_U_ap_dummy_ce = ap_const_logic_1;
assign ipDataCheckFifo_V_din = ip_handler_check_ip_checksum_U0_ipDataCheckFifo_V_din;
assign ipDataCheckFifo_V_read = ip_handler_ip_invalid_dropper_U0_ipDataCheckFifo_V_read;
assign ipDataCheckFifo_V_write = ip_handler_check_ip_checksum_U0_ipDataCheckFifo_V_write;
assign ipDataCutFifo_V_U_ap_dummy_ce = ap_const_logic_1;
assign ipDataCutFifo_V_din = ip_handler_cut_length_U0_ipDataCutFifo_V_din;
assign ipDataCutFifo_V_read = ip_handler_detect_ip_protocol_U0_ipDataCutFifo_V_read;
assign ipDataCutFifo_V_write = ip_handler_cut_length_U0_ipDataCutFifo_V_write;
assign ipDataDropFifo_V_U_ap_dummy_ce = ap_const_logic_1;
assign ipDataDropFifo_V_din = ip_handler_ip_invalid_dropper_U0_ipDataDropFifo_V_din;
assign ipDataDropFifo_V_read = ip_handler_cut_length_U0_ipDataDropFifo_V_read;
assign ipDataDropFifo_V_write = ip_handler_ip_invalid_dropper_U0_ipDataDropFifo_V_write;
assign ipDataFifo_V_U_ap_dummy_ce = ap_const_logic_1;
assign ipDataFifo_V_din = ip_handler_detect_mac_protocol_U0_ipDataFifo_V_din;
assign ipDataFifo_V_read = ip_handler_check_ip_checksum_U0_ipDataFifo_V_read;
assign ipDataFifo_V_write = ip_handler_detect_mac_protocol_U0_ipDataFifo_V_write;
assign ipValidFifo_V_U_ap_dummy_ce = ap_const_logic_1;
assign ipValidFifo_V_din = ip_handler_iph_check_ip_checksum_U0_ipValidFifo_V_din;
assign ipValidFifo_V_read = ip_handler_ip_invalid_dropper_U0_ipValidFifo_V_read;
assign ipValidFifo_V_write = ip_handler_iph_check_ip_checksum_U0_ipValidFifo_V_write;
assign ip_handler_check_ip_checksum_U0_ap_continue = ap_const_logic_1;
assign ip_handler_check_ip_checksum_U0_ap_start = ap_const_logic_1;
assign ip_handler_check_ip_checksum_U0_ipDataCheckFifo_V_full_n = ipDataCheckFifo_V_full_n;
assign ip_handler_check_ip_checksum_U0_ipDataFifo_V_dout = ipDataFifo_V_dout;
assign ip_handler_check_ip_checksum_U0_ipDataFifo_V_empty_n = ipDataFifo_V_empty_n;
assign ip_handler_check_ip_checksum_U0_iph_subSumsFifoOut_V_full_n = iph_subSumsFifoOut_V_full_n;
assign ip_handler_check_ip_checksum_U0_myIpAddress_V = myIpAddress_V;
assign ip_handler_cut_length_U0_ap_continue = ap_const_logic_1;
assign ip_handler_cut_length_U0_ipDataCutFifo_V_full_n = ipDataCutFifo_V_full_n;
assign ip_handler_cut_length_U0_ipDataDropFifo_V_dout = ipDataDropFifo_V_dout;
assign ip_handler_cut_length_U0_ipDataDropFifo_V_empty_n = ipDataDropFifo_V_empty_n;
assign ip_handler_detect_ip_protocol_U0_ap_continue = ap_const_logic_1;
assign ip_handler_detect_ip_protocol_U0_ipDataCutFifo_V_dout = ipDataCutFifo_V_dout;
assign ip_handler_detect_ip_protocol_U0_ipDataCutFifo_V_empty_n = ipDataCutFifo_V_empty_n;
assign ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TREADY = m_axis_ICMP_TREADY;
assign ip_handler_detect_ip_protocol_U0_m_axis_TCP_TREADY = m_axis_TCP_TREADY;
assign ip_handler_detect_ip_protocol_U0_m_axis_UDP_TREADY = m_axis_UDP_TREADY;
assign ip_handler_detect_mac_protocol_U0_ap_continue = ap_const_logic_1;
assign ip_handler_detect_mac_protocol_U0_ap_start = ap_const_logic_1;
assign ip_handler_detect_mac_protocol_U0_ipDataFifo_V_full_n = ipDataFifo_V_full_n;
assign ip_handler_detect_mac_protocol_U0_m_axis_ARP_TREADY = m_axis_ARP_TREADY;
assign ip_handler_detect_mac_protocol_U0_s_axis_raw_TDATA = s_axis_raw_TDATA;
assign ip_handler_detect_mac_protocol_U0_s_axis_raw_TKEEP = s_axis_raw_TKEEP;
assign ip_handler_detect_mac_protocol_U0_s_axis_raw_TLAST = s_axis_raw_TLAST;
assign ip_handler_detect_mac_protocol_U0_s_axis_raw_TVALID = s_axis_raw_TVALID;
assign ip_handler_ip_invalid_dropper_U0_ap_continue = ap_const_logic_1;
assign ip_handler_ip_invalid_dropper_U0_ipDataCheckFifo_V_dout = ipDataCheckFifo_V_dout;
assign ip_handler_ip_invalid_dropper_U0_ipDataCheckFifo_V_empty_n = ipDataCheckFifo_V_empty_n;
assign ip_handler_ip_invalid_dropper_U0_ipDataDropFifo_V_full_n = ipDataDropFifo_V_full_n;
assign ip_handler_ip_invalid_dropper_U0_ipValidFifo_V_dout = ipValidFifo_V_dout;
assign ip_handler_ip_invalid_dropper_U0_ipValidFifo_V_empty_n = ipValidFifo_V_empty_n;
assign ip_handler_iph_check_ip_checksum_U0_ap_continue = ap_const_logic_1;
assign ip_handler_iph_check_ip_checksum_U0_ipValidFifo_V_full_n = ipValidFifo_V_full_n;
assign ip_handler_iph_check_ip_checksum_U0_iph_subSumsFifoOut_V_dout = iph_subSumsFifoOut_V_dout;
assign ip_handler_iph_check_ip_checksum_U0_iph_subSumsFifoOut_V_empty_n = iph_subSumsFifoOut_V_empty_n;
assign iph_subSumsFifoOut_V_U_ap_dummy_ce = ap_const_logic_1;
assign iph_subSumsFifoOut_V_din = ip_handler_check_ip_checksum_U0_iph_subSumsFifoOut_V_din;
assign iph_subSumsFifoOut_V_read = ip_handler_iph_check_ip_checksum_U0_iph_subSumsFifoOut_V_read;
assign iph_subSumsFifoOut_V_write = ip_handler_check_ip_checksum_U0_iph_subSumsFifoOut_V_write;
assign m_axis_ARP_TDATA = ip_handler_detect_mac_protocol_U0_m_axis_ARP_TDATA;
assign m_axis_ARP_TKEEP = ip_handler_detect_mac_protocol_U0_m_axis_ARP_TKEEP;
assign m_axis_ARP_TLAST = ip_handler_detect_mac_protocol_U0_m_axis_ARP_TLAST;
assign m_axis_ARP_TVALID = ip_handler_detect_mac_protocol_U0_m_axis_ARP_TVALID;
assign m_axis_ICMP_TDATA = ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TDATA;
assign m_axis_ICMP_TKEEP = ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TKEEP;
assign m_axis_ICMP_TLAST = ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TLAST;
assign m_axis_ICMP_TVALID = ip_handler_detect_ip_protocol_U0_m_axis_ICMP_TVALID;
assign m_axis_TCP_TDATA = ip_handler_detect_ip_protocol_U0_m_axis_TCP_TDATA;
assign m_axis_TCP_TKEEP = ip_handler_detect_ip_protocol_U0_m_axis_TCP_TKEEP;
assign m_axis_TCP_TLAST = ip_handler_detect_ip_protocol_U0_m_axis_TCP_TLAST;
assign m_axis_TCP_TVALID = ip_handler_detect_ip_protocol_U0_m_axis_TCP_TVALID;
assign m_axis_UDP_TDATA = ip_handler_detect_ip_protocol_U0_m_axis_UDP_TDATA;
assign m_axis_UDP_TKEEP = ip_handler_detect_ip_protocol_U0_m_axis_UDP_TKEEP;
assign m_axis_UDP_TLAST = ip_handler_detect_ip_protocol_U0_m_axis_UDP_TLAST;
assign m_axis_UDP_TVALID = ip_handler_detect_ip_protocol_U0_m_axis_UDP_TVALID;
assign s_axis_raw_TREADY = ip_handler_detect_mac_protocol_U0_s_axis_raw_TREADY;


endmodule //ip_handler


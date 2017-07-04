// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _packetMaker_HH_
#define _packetMaker_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "packetMaker_packet1.h"

namespace ap_rtl {

struct packetMaker : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<64> > packetOut_TDATA;
    sc_out< sc_logic > packetOut_TVALID;
    sc_in< sc_logic > packetOut_TREADY;
    sc_out< sc_lv<1> > packetOut_TLAST;
    sc_out< sc_lv<8> > packetOut_TDEST;
    sc_in< sc_lv<32> > id_V;


    // Module declarations
    packetMaker(sc_module_name name);
    SC_HAS_PROCESS(packetMaker);

    ~packetMaker();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    packetMaker_packet1* packet1_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<64> > packetOut_V_packet_V_1_data_out;
    sc_signal< sc_logic > packetOut_V_packet_V_1_vld_in;
    sc_signal< sc_logic > packetOut_V_packet_V_1_vld_out;
    sc_signal< sc_logic > packetOut_V_packet_V_1_ack_in;
    sc_signal< sc_logic > packetOut_V_packet_V_1_ack_out;
    sc_signal< sc_lv<64> > packetOut_V_packet_V_1_payload_A;
    sc_signal< sc_lv<64> > packetOut_V_packet_V_1_payload_B;
    sc_signal< sc_logic > packetOut_V_packet_V_1_sel_rd;
    sc_signal< sc_logic > packetOut_V_packet_V_1_sel_wr;
    sc_signal< sc_logic > packetOut_V_packet_V_1_sel;
    sc_signal< sc_logic > packetOut_V_packet_V_1_load_A;
    sc_signal< sc_logic > packetOut_V_packet_V_1_load_B;
    sc_signal< sc_lv<2> > packetOut_V_packet_V_1_state;
    sc_signal< sc_logic > packetOut_V_packet_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > packetOut_V_last_V_1_data_out;
    sc_signal< sc_logic > packetOut_V_last_V_1_vld_in;
    sc_signal< sc_logic > packetOut_V_last_V_1_vld_out;
    sc_signal< sc_logic > packetOut_V_last_V_1_ack_in;
    sc_signal< sc_logic > packetOut_V_last_V_1_ack_out;
    sc_signal< sc_lv<1> > packetOut_V_last_V_1_payload_A;
    sc_signal< sc_lv<1> > packetOut_V_last_V_1_payload_B;
    sc_signal< sc_logic > packetOut_V_last_V_1_sel_rd;
    sc_signal< sc_logic > packetOut_V_last_V_1_sel_wr;
    sc_signal< sc_logic > packetOut_V_last_V_1_sel;
    sc_signal< sc_logic > packetOut_V_last_V_1_load_A;
    sc_signal< sc_logic > packetOut_V_last_V_1_load_B;
    sc_signal< sc_lv<2> > packetOut_V_last_V_1_state;
    sc_signal< sc_logic > packetOut_V_last_V_1_state_cmp_full;
    sc_signal< sc_lv<8> > packetOut_V_dest_V_1_data_out;
    sc_signal< sc_logic > packetOut_V_dest_V_1_vld_in;
    sc_signal< sc_logic > packetOut_V_dest_V_1_vld_out;
    sc_signal< sc_logic > packetOut_V_dest_V_1_ack_out;
    sc_signal< sc_logic > packetOut_V_dest_V_1_sel_rd;
    sc_signal< sc_logic > packetOut_V_dest_V_1_sel;
    sc_signal< sc_lv<2> > packetOut_V_dest_V_1_state;
    sc_signal< sc_lv<5> > packet1_address0;
    sc_signal< sc_logic > packet1_ce0;
    sc_signal< sc_lv<32> > packet1_q0;
    sc_signal< sc_logic > packetOut_TDATA_blk_n;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<1> > exitcond_reg_129;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > ap_pipeline_reg_pp0_iter1_exitcond_reg_129;
    sc_signal< sc_lv<5> > i_reg_90;
    sc_signal< sc_lv<1> > exitcond_fu_101_p2;
    sc_signal< sc_lv<5> > i_1_fu_107_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > tmp_last_V_fu_118_p2;
    sc_signal< sc_lv<1> > tmp_last_V_reg_143;
    sc_signal< sc_lv<64> > tmp_packet_V_fu_124_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > tmp_fu_113_p1;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_18;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_exitcond_fu_101_p2();
    void thread_i_1_fu_107_p2();
    void thread_packet1_address0();
    void thread_packet1_ce0();
    void thread_packetOut_TDATA();
    void thread_packetOut_TDATA_blk_n();
    void thread_packetOut_TDEST();
    void thread_packetOut_TLAST();
    void thread_packetOut_TVALID();
    void thread_packetOut_V_dest_V_1_ack_out();
    void thread_packetOut_V_dest_V_1_data_out();
    void thread_packetOut_V_dest_V_1_sel();
    void thread_packetOut_V_dest_V_1_vld_in();
    void thread_packetOut_V_dest_V_1_vld_out();
    void thread_packetOut_V_last_V_1_ack_in();
    void thread_packetOut_V_last_V_1_ack_out();
    void thread_packetOut_V_last_V_1_data_out();
    void thread_packetOut_V_last_V_1_load_A();
    void thread_packetOut_V_last_V_1_load_B();
    void thread_packetOut_V_last_V_1_sel();
    void thread_packetOut_V_last_V_1_state_cmp_full();
    void thread_packetOut_V_last_V_1_vld_in();
    void thread_packetOut_V_last_V_1_vld_out();
    void thread_packetOut_V_packet_V_1_ack_in();
    void thread_packetOut_V_packet_V_1_ack_out();
    void thread_packetOut_V_packet_V_1_data_out();
    void thread_packetOut_V_packet_V_1_load_A();
    void thread_packetOut_V_packet_V_1_load_B();
    void thread_packetOut_V_packet_V_1_sel();
    void thread_packetOut_V_packet_V_1_state_cmp_full();
    void thread_packetOut_V_packet_V_1_vld_in();
    void thread_packetOut_V_packet_V_1_vld_out();
    void thread_tmp_fu_113_p1();
    void thread_tmp_last_V_fu_118_p2();
    void thread_tmp_packet_V_fu_124_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
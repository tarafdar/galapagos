// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "eth_dest_filter.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic eth_dest_filter::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic eth_dest_filter::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> eth_dest_filter::ap_ST_fsm_pp0_stage0 = "1";
const bool eth_dest_filter::ap_const_boolean_1 = true;
const sc_lv<32> eth_dest_filter::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool eth_dest_filter::ap_const_boolean_0 = false;
const sc_lv<1> eth_dest_filter::ap_const_lv1_1 = "1";
const sc_lv<1> eth_dest_filter::ap_const_lv1_0 = "0";
const sc_lv<32> eth_dest_filter::ap_const_lv32_41 = "1000001";
const sc_lv<32> eth_dest_filter::ap_const_lv32_48 = "1001000";

eth_dest_filter::eth_dest_filter(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( stream_in_V_empty_n );
    sensitive << ( stream_out_switch_V_full_n );
    sensitive << ( stream_out_network_V_full_n );
    sensitive << ( tmp_nbreadreq_fu_62_p3 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_predicate_op29_write_state3 );
    sensitive << ( ap_predicate_op31_write_state3 );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( stream_in_V_empty_n );
    sensitive << ( stream_out_switch_V_full_n );
    sensitive << ( stream_out_network_V_full_n );
    sensitive << ( tmp_nbreadreq_fu_62_p3 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_predicate_op29_write_state3 );
    sensitive << ( ap_predicate_op31_write_state3 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( stream_in_V_empty_n );
    sensitive << ( stream_out_switch_V_full_n );
    sensitive << ( stream_out_network_V_full_n );
    sensitive << ( tmp_nbreadreq_fu_62_p3 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_predicate_op29_write_state3 );
    sensitive << ( ap_predicate_op31_write_state3 );

    SC_METHOD(thread_ap_block_state1_pp0_stage0_iter0);
    sensitive << ( stream_in_V_empty_n );
    sensitive << ( tmp_nbreadreq_fu_62_p3 );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter2);
    sensitive << ( stream_out_switch_V_full_n );
    sensitive << ( stream_out_network_V_full_n );
    sensitive << ( ap_predicate_op29_write_state3 );
    sensitive << ( ap_predicate_op31_write_state3 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_predicate_op29_write_state3);
    sensitive << ( tmp_reg_127_pp0_iter1_reg );
    sensitive << ( inFPGA_reg_142 );

    SC_METHOD(thread_ap_predicate_op31_write_state3);
    sensitive << ( tmp_reg_127_pp0_iter1_reg );
    sensitive << ( inFPGA_reg_142 );

    SC_METHOD(thread_ap_reset_idle_pp0);

    SC_METHOD(thread_inFPGA_fu_117_p2);
    sensitive << ( mac_table_V_q0 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( tmp_reg_127 );
    sensitive << ( mac_addr_read_reg_122 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_mac_table_V_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( tmp_2_fu_112_p1 );

    SC_METHOD(thread_mac_table_V_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_stream_in_V_blk_n);
    sensitive << ( stream_in_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( tmp_nbreadreq_fu_62_p3 );

    SC_METHOD(thread_stream_in_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( tmp_nbreadreq_fu_62_p3 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_stream_out_network_V_blk_n);
    sensitive << ( stream_out_network_V_full_n );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( tmp_reg_127_pp0_iter1_reg );
    sensitive << ( inFPGA_reg_142 );

    SC_METHOD(thread_stream_out_network_V_din);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_predicate_op29_write_state3 );
    sensitive << ( tmp22_reg_131_pp0_iter1_reg );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_stream_out_network_V_write);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_predicate_op29_write_state3 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_stream_out_switch_V_blk_n);
    sensitive << ( stream_out_switch_V_full_n );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( tmp_reg_127_pp0_iter1_reg );
    sensitive << ( inFPGA_reg_142 );

    SC_METHOD(thread_stream_out_switch_V_din);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_predicate_op31_write_state3 );
    sensitive << ( tmp22_reg_131_pp0_iter1_reg );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_stream_out_switch_V_write);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_predicate_op31_write_state3 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_tmp_2_fu_112_p1);
    sensitive << ( tmp_tdest_V_fu_102_p4 );

    SC_METHOD(thread_tmp_nbreadreq_fu_62_p3);
    sensitive << ( stream_in_V_empty_n );

    SC_METHOD(thread_tmp_tdest_V_fu_102_p4);
    sensitive << ( stream_in_V_dout );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_reset_idle_pp0 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "1";
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "eth_dest_filter_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, mac_table_V_address0, "(port)mac_table_V_address0");
    sc_trace(mVcdFile, mac_table_V_ce0, "(port)mac_table_V_ce0");
    sc_trace(mVcdFile, mac_table_V_q0, "(port)mac_table_V_q0");
    sc_trace(mVcdFile, mac_addr, "(port)mac_addr");
    sc_trace(mVcdFile, stream_in_V_dout, "(port)stream_in_V_dout");
    sc_trace(mVcdFile, stream_in_V_empty_n, "(port)stream_in_V_empty_n");
    sc_trace(mVcdFile, stream_in_V_read, "(port)stream_in_V_read");
    sc_trace(mVcdFile, stream_out_switch_V_din, "(port)stream_out_switch_V_din");
    sc_trace(mVcdFile, stream_out_switch_V_full_n, "(port)stream_out_switch_V_full_n");
    sc_trace(mVcdFile, stream_out_switch_V_write, "(port)stream_out_switch_V_write");
    sc_trace(mVcdFile, stream_out_network_V_din, "(port)stream_out_network_V_din");
    sc_trace(mVcdFile, stream_out_network_V_full_n, "(port)stream_out_network_V_full_n");
    sc_trace(mVcdFile, stream_out_network_V_write, "(port)stream_out_network_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, stream_in_V_blk_n, "stream_in_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, tmp_nbreadreq_fu_62_p3, "tmp_nbreadreq_fu_62_p3");
    sc_trace(mVcdFile, stream_out_switch_V_blk_n, "stream_out_switch_V_blk_n");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, tmp_reg_127, "tmp_reg_127");
    sc_trace(mVcdFile, tmp_reg_127_pp0_iter1_reg, "tmp_reg_127_pp0_iter1_reg");
    sc_trace(mVcdFile, inFPGA_reg_142, "inFPGA_reg_142");
    sc_trace(mVcdFile, stream_out_network_V_blk_n, "stream_out_network_V_blk_n");
    sc_trace(mVcdFile, mac_addr_read_reg_122, "mac_addr_read_reg_122");
    sc_trace(mVcdFile, ap_block_state1_pp0_stage0_iter0, "ap_block_state1_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter1, "ap_block_state2_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_predicate_op29_write_state3, "ap_predicate_op29_write_state3");
    sc_trace(mVcdFile, ap_predicate_op31_write_state3, "ap_predicate_op31_write_state3");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter2, "ap_block_state3_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, tmp22_reg_131, "tmp22_reg_131");
    sc_trace(mVcdFile, tmp22_reg_131_pp0_iter1_reg, "tmp22_reg_131_pp0_iter1_reg");
    sc_trace(mVcdFile, inFPGA_fu_117_p2, "inFPGA_fu_117_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, tmp_2_fu_112_p1, "tmp_2_fu_112_p1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, tmp_tdest_V_fu_102_p4, "tmp_tdest_V_fu_102_p4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_reset_idle_pp0, "ap_reset_idle_pp0");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
    mHdltvinHandle.open("eth_dest_filter.hdltvin.dat");
    mHdltvoutHandle.open("eth_dest_filter.hdltvout.dat");
}

eth_dest_filter::~eth_dest_filter() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void eth_dest_filter::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_pp0_stage0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read())) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read())) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_127.read()))) {
        inFPGA_reg_142 = inFPGA_fu_117_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        mac_addr_read_reg_122 = mac_addr.read();
        tmp22_reg_131_pp0_iter1_reg = tmp22_reg_131.read();
        tmp_reg_127 =  (sc_lv<1>) (stream_in_V_empty_n.read());
        tmp_reg_127_pp0_iter1_reg = tmp_reg_127.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(tmp_nbreadreq_fu_62_p3.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tmp22_reg_131 = stream_in_V_dout.read();
    }
}

void eth_dest_filter::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[0];
}

void eth_dest_filter::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void eth_dest_filter::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_const_logic_1) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_62_p3.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, stream_in_V_empty_n.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  ((esl_seteq<1,1,1>(ap_const_logic_0, stream_out_network_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op29_write_state3.read())) || 
   (esl_seteq<1,1,1>(ap_const_logic_0, stream_out_switch_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op31_write_state3.read())))));
}

void eth_dest_filter::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_const_logic_1) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_62_p3.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, stream_in_V_empty_n.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  ((esl_seteq<1,1,1>(ap_const_logic_0, stream_out_network_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op29_write_state3.read())) || 
   (esl_seteq<1,1,1>(ap_const_logic_0, stream_out_switch_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op31_write_state3.read())))));
}

void eth_dest_filter::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_const_logic_1) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_62_p3.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, stream_in_V_empty_n.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  ((esl_seteq<1,1,1>(ap_const_logic_0, stream_out_network_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op29_write_state3.read())) || 
   (esl_seteq<1,1,1>(ap_const_logic_0, stream_out_switch_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op31_write_state3.read())))));
}

void eth_dest_filter::thread_ap_block_state1_pp0_stage0_iter0() {
    ap_block_state1_pp0_stage0_iter0 = (esl_seteq<1,1,1>(tmp_nbreadreq_fu_62_p3.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_0, stream_in_V_empty_n.read()));
}

void eth_dest_filter::thread_ap_block_state2_pp0_stage0_iter1() {
    ap_block_state2_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void eth_dest_filter::thread_ap_block_state3_pp0_stage0_iter2() {
    ap_block_state3_pp0_stage0_iter2 = ((esl_seteq<1,1,1>(ap_const_logic_0, stream_out_network_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op29_write_state3.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, stream_out_switch_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op31_write_state3.read())));
}

void eth_dest_filter::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void eth_dest_filter::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void eth_dest_filter::thread_ap_predicate_op29_write_state3() {
    ap_predicate_op29_write_state3 = (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_127_pp0_iter1_reg.read()) && esl_seteq<1,1,1>(inFPGA_reg_142.read(), ap_const_lv1_0));
}

void eth_dest_filter::thread_ap_predicate_op31_write_state3() {
    ap_predicate_op31_write_state3 = (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_127_pp0_iter1_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, inFPGA_reg_142.read()));
}

void eth_dest_filter::thread_ap_reset_idle_pp0() {
    if (!esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
        ap_reset_idle_pp0 = ap_const_logic_1;
    } else {
        ap_reset_idle_pp0 = ap_const_logic_0;
    }
}

void eth_dest_filter::thread_inFPGA_fu_117_p2() {
    inFPGA_fu_117_p2 = (!mac_table_V_q0.read().is_01() || !mac_addr_read_reg_122.read().is_01())? sc_lv<1>(): sc_lv<1>(mac_table_V_q0.read() == mac_addr_read_reg_122.read());
}

void eth_dest_filter::thread_mac_table_V_address0() {
    mac_table_V_address0 =  (sc_lv<8>) (tmp_2_fu_112_p1.read());
}

void eth_dest_filter::thread_mac_table_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        mac_table_V_ce0 = ap_const_logic_1;
    } else {
        mac_table_V_ce0 = ap_const_logic_0;
    }
}

void eth_dest_filter::thread_stream_in_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(tmp_nbreadreq_fu_62_p3.read(), ap_const_lv1_1))) {
        stream_in_V_blk_n = stream_in_V_empty_n.read();
    } else {
        stream_in_V_blk_n = ap_const_logic_1;
    }
}

void eth_dest_filter::thread_stream_in_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_const_logic_1) && 
         esl_seteq<1,1,1>(tmp_nbreadreq_fu_62_p3.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        stream_in_V_read = ap_const_logic_1;
    } else {
        stream_in_V_read = ap_const_logic_0;
    }
}

void eth_dest_filter::thread_stream_out_network_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_127_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(inFPGA_reg_142.read(), ap_const_lv1_0))) {
        stream_out_network_V_blk_n = stream_out_network_V_full_n.read();
    } else {
        stream_out_network_V_blk_n = ap_const_logic_1;
    }
}

void eth_dest_filter::thread_stream_out_network_V_din() {
    stream_out_network_V_din = tmp22_reg_131_pp0_iter1_reg.read();
}

void eth_dest_filter::thread_stream_out_network_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op29_write_state3.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        stream_out_network_V_write = ap_const_logic_1;
    } else {
        stream_out_network_V_write = ap_const_logic_0;
    }
}

void eth_dest_filter::thread_stream_out_switch_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_127_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, inFPGA_reg_142.read()))) {
        stream_out_switch_V_blk_n = stream_out_switch_V_full_n.read();
    } else {
        stream_out_switch_V_blk_n = ap_const_logic_1;
    }
}

void eth_dest_filter::thread_stream_out_switch_V_din() {
    stream_out_switch_V_din = tmp22_reg_131_pp0_iter1_reg.read();
}

void eth_dest_filter::thread_stream_out_switch_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op31_write_state3.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        stream_out_switch_V_write = ap_const_logic_1;
    } else {
        stream_out_switch_V_write = ap_const_logic_0;
    }
}

void eth_dest_filter::thread_tmp_2_fu_112_p1() {
    tmp_2_fu_112_p1 = esl_zext<64,8>(tmp_tdest_V_fu_102_p4.read());
}

void eth_dest_filter::thread_tmp_nbreadreq_fu_62_p3() {
    tmp_nbreadreq_fu_62_p3 =  (sc_lv<1>) (stream_in_V_empty_n.read());
}

void eth_dest_filter::thread_tmp_tdest_V_fu_102_p4() {
    tmp_tdest_V_fu_102_p4 = stream_in_V_dout.read().range(72, 65);
}

void eth_dest_filter::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

void eth_dest_filter::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"mac_table_V_address0\" :  \"" << mac_table_V_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"mac_table_V_ce0\" :  \"" << mac_table_V_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"mac_table_V_q0\" :  \"" << mac_table_V_q0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"mac_addr\" :  \"" << mac_addr.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_in_V_dout\" :  \"" << stream_in_V_dout.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_in_V_empty_n\" :  \"" << stream_in_V_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_in_V_read\" :  \"" << stream_in_V_read.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_out_switch_V_din\" :  \"" << stream_out_switch_V_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_out_switch_V_full_n\" :  \"" << stream_out_switch_V_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_out_switch_V_write\" :  \"" << stream_out_switch_V_write.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_out_network_V_din\" :  \"" << stream_out_network_V_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"stream_out_network_V_full_n\" :  \"" << stream_out_network_V_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"stream_out_network_V_write\" :  \"" << stream_out_network_V_write.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

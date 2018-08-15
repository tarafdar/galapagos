# TODO: Move each board's connection list to a separate file (for auto-generation)
# and then combine them here
set ethernet_core_interface_connections {
    sidewinder100 {
        # TODO: Add interface port to accept 
        # DONE
        #   INPUT
        #     axis_tx_0
        #   OUTPUT
        #     axis_rx_0
        #     rx_clk_out_0 (disconnected) - can connect to zups
        #     tx_clk_out_0 
        S_AXIS_1 {S_AXIS tx_register_slice_0/S_AXIS} 
        axi_10g_ethernet_0_m_axis_rx {axi_10g_ethernet_0/axis_rx_0 network_packet_fifo_0/s_axis}
        axi_10g_ethernet_0_m_axis_rx/ {axi_10g_ethernet_0/axis_rx_0 network_packet_fifo_0/s_axis}
        network_packet_fifo_0_m_axis {network_packet_fifo_0/m_axis rx_register_slice_1/S_AXIS}
        network_packet_fifo_1_m_axis {axi_10g_ethernet_0/axis_tx_0 network_packet_fifo_1/m_axis}
        clk_156_0 {axi_10g_ethernet_0/tx_clk_out_0 clk_156}
    }

    adm-8k5-debug {
        S_AXIS_1 {S_AXIS tx_register_slice_0/S_AXIS}
        axi_10g_ethernet_0_m_axis_rx {axi_10g_ethernet_0/m_axis_rx network_packet_fifo_0/s_axis}
        network_packet_fifo_0_m_axis {network_packet_fifo_0/m_axis rx_register_slice_1/S_AXIS}
        network_packet_fifo_1_m_axis {axi_10g_ethernet_0/s_axis_tx network_packet_fifo_1/m_axis}
    }
}

# TODO: This will have to be dependent on the ethernet subsystem IP, not the board
#       change it to be IP dependent rather than board dependent

# TODO:

set ethernet_core_module_dependencies {
    sidewinder100 {
        gnd {
            IP {xilinx.com:ip:xlconstant}
            CONFIGURATION {CONFIG.CONST_VAL {0}}
        }
        network_packet_fifo_0 {
            IP {dlyma.org:dlyma:network_packet_fifo_rx}
        }
        network_packet_fifo_1 {
            IP {dlyma.org:dlyma:network_packet_fifo_tx}
        }
        rx_register_slice_1 {
            IP {xilinx.com:ip:axis_register_slice}
            CONFIGURATION {CONFIG.TUSER_WIDTH{0}}
        }
        tx_register_slice_0 {
            IP {xilinx.com:ip:axis_register_slice}
            CONFIGURATION {CONFIG.TUSER_WIDTH{0}}
        }
        vcc {
            IP {xilinx.com:ip:xlconstant}
        }

        inv_axi_10g_ethernet_0_stat_rx_total_good_packets_0 {
            IP {xilinx.com:ip:util_vector_logic}
            CONFIGURATION {CONFIG.C_OPERATION{not} CONFIG.C_SIZE{1}}
        }
        constant_1b_0 {
            IP {xilinx.com:ip:xlconstant}
            CONFIGURATION {CONFIG.CONST_VAL{0} CONFIG.CONST_WIDTH{1}}
        }
        constant_1b_0 {
            IP {xilinx.com:ip:xlconstant}
            CONFIGURATION {CONFIG.CONST_VAL{0} CONFIG.CONST_WIDTH{1}}
        }
        constant_1b_0 {
            IP {xilinx.com:ip:xlconstant}
            CONFIGURATION {CONFIG.CONST_VAL{0} CONFIG.CONST_WIDTH{1}}
        }
        constant_56b_0 {
            IP {xilinx.com:ip:xlconstant}
            CONFIGURATION {CONFIG.CONST_VAL{0} CONFIG.CONST_WIDTH{56}}
        }
        constant_3b_5 {
            IP {xilinx.com:ip:xlconstant}
            CONFIGURATION {CONFIG.CONST_VAL{5} CONFIG.CONST_WIDTH{3}}
        }
        constant_16b_0 {
            IP {xilinx.com:ip:xlconstant}
            CONFIGURATION {CONFIG.CONST_VAL{0} CONFIG.CONST_WIDTH{16}}
        }
    }
    adm-8k5-debug {
        gnd {
            IP {xilinx.com:ip:xlconstant}
            CONFIGURATION {CONFIG.CONST_VAL {0}}
        }
        network_packet_fifo_0 {
            IP {dlyma.org:dlyma:network_packet_fifo_rx}
        }
        network_packet_fifo_1 {
            IP {dlyma.org:dlyma:network_packet_fifo_tx}
        }
        
        rx_register_slice_1 {
            IP {xilinx.com:ip:axis_register_slice}
            CONFIGURATION {CONFIG.TUSER_WIDTH{0}}
        }
        tx_register_slice_0 {
            IP {xilinx.com:ip:axis_register_slice}
            CONFIGURATION {CONFIG.TUSER_WIDTH{0}}
        }
        vcc {
            IP {xilinx.com:ip:xlconstant}
        }

        ifg_delay {
            IP {xilinx.com:ip:xlconstant}
            CONFIGURATION{CONFIG.CONST_VAL{0} CONFIG.CONST_WIDTH{8}}
        }
        mac_config_vector {
            IP {xilinx.com:ip:xlconstant}
            CONFIGURATION {CONFIG.CONST_VAL{22} CONFIG.CONST_WIDTH{80}}
        }
        pcs_config_vector {
            IP {xilinx.com:ip:xlconstant}
            CONFIGURATION {CONFIG.CONST_VAL{0} CONFIG.CONST_WIDTH{536}}
        }
    }
}



set ethernet_core_port_connections {
    sidewinder100 {
        # TODO: -include zups (Zynq Ultra PS)
        # TODO (signals/connections):
        #       - gtwiz_reset_rx_datapath_0 <-> zups/Res
        #       - gtwiz_reset_tx_datapath_0 <-> zups/Res
        #       - zups/Sxx_ACLK <-> rx_clk_out_0 
        # IGNORED
        # s_axi_0
        #
        # DONE
        #   INPUTS
        #     tx_preamblein_0
        #     tx_reset_0
        #     rx_reset_0
        #     pm_tick (disconnected)
        #     s_axi_aresetn_0
        #     s_axi_aclk_0
        #     dclk
        #     sys_reset
        #     txoutclksel_in_0
        #     rxoutclksel_in_0
        #     rx_core_clk_0
        #     ctl_tx_send_idle_0
        #     ctl_tx_send_lfi_0
        #     ctl_tx_send_rfi_0
        #     gt_rxn_in_0
        #     gt_rxp_in_0
        #     gt_refclk_n
        #     gt_refclk_p
        #  OUTPUTS
        #     user_reg0_0 (disconnected)
        #     rx_preambleout_0 (disconnected)
        #     tx_unfout_0 (disconnected)
        #     user_tx_reset_0 (disconnected) - can connect to zups
        #     stat_rx_reset_0 (disconnected)
        #     user_rx_reset_0 (disconnected) - can connect to zups
        #     gtpowergood_out_0 (guessed)
        #     gt_refclk_out (disconnected)
        #     rxrecclkout_0 (disconnected)
        #     stat_rx_0 (disconnected) can connect to Dan's "Network Packet RX FIFO for TCP/IP with some modification
        #     stat_tx_0 (disconnected)
        #     axis_rx_0
        #     gt_txn_out_0
        #     gt_txp_out_0
        axi_10g_ethernet_0_loopback {axi_10g_ethernet_0/tx_preamblein_0 constant_56b_0/dout}
        tx_axis_aresetn_1 {aresetn axi_10g_ethernet_0/s_axi_aresetn_0 axi_10g_ethernet_0/rx_reset_0 axi_10g_ethernet_0/tx_reset_0 axi_10g_ethernet_0/rx_axis_aresetn axi_10g_ethernet_0/tx_axis_aresetn network_packet_fifo_0/aresetn network_packet_fifo_1/aresetn rx_register_slice_1/aresetn tx_register_slice_0/aresetn}
        dclk_1 {clk_100 axi_10g_ethernet_0/dclk axi_10g_ethernet_0/s_axi_aclk_0}
        reset_1 {reset axi_10g_ethernet_0/sys_reset}
        axi_10g_ethernet_0_txoutclksel {axi_10g_ethernet_0/txoutclksel_in_0 constant_3b_5/dout}
        axi_10g_ethernet_0_rxoutclksel {axi_10g_ethernet_0/rxoutclksel_in_0 constant_3b_5/dout}
        axi_10g_ethernet_0_rx_core_clock {axi_10g_ethernet_0/rx_clk_out_0 axi_10g_ethernet_0/rx_core_clk_0}
        axi_10g_ethernet_0_rx_core_clock {axi_10g_ethernet_0/ctl_tx_send_idle_0 constant_1b_0/dout}
        axi_10g_ethernet_0_rx_core_clock {axi_10g_ethernet_0/ctl_tx_send_lfi_0 constant_1b_0/dout}
        axi_10g_ethernet_0_rx_core_clock {axi_10g_ethernet_0/ctl_tx_send_rfi_0 constant_1b_0/dout}
        rxn_1 {rxn axi_10g_ethernet_0/gt_rxn_in_0}
        rxp_1 {rxp axi_10g_ethernet_0/gt_rxp_in_0}
        refclk_n_1 {refclk_n axi_10g_ethernet_0/gt_refclk_n}
        refclk_p_1 {refclk_p axi_10g_ethernet_0/gt_refclk_p}

        axi_10g_ethernet_0_txn {txn axi_10g_ethernet_0/gt_txn_out_0}
        axi_10g_ethernet_0_txp {txp axi_10g_ethernet_0/gt_txp_out_0}
        axi_10g_ethernet_0_txusrclk2_out {clk_156 axi_10g_ethernet_0/tx_clk_out_0 network_packet_fifo_0/aclk network_packet_fifo_1/aclk rx_register_slice_1/aclk tx_register_slice_0/aclk}

        #GUESS
        axi_10g_ethernet_0_resetdone_out {network_reset_done axi_10g_ethernet_0/gtpowergood_out_0}

        ifg_delay_dout {axi_10g_ethernet_0/txoutclksel_in_0 ifg_delay/dout}
        pcs_config_vector_dout {axi_10g_ethernet_0/pcs_pma_configuration_vector pcs_config_vector/dout}

        vcc_dout {axi_10g_ethernet_0/signal_detect vcc/dout}

        # FROM: https://www.xilinx.com/support/documentation/ip_documentation/xxv_ethernet/v2_3/pg210-25g-ethernet.pdf pg 275-277
        mac_config_vector_dout[367:352] {mac_config_vector/dout[367:352] constant_16b_0/dout}
        mac_config_vector_dout[351:336] {mac_config_vector/dout[351:336] axi_10g_ethernet_0/ctl_tx_pause_refresh_timer7[15:0]}
        mac_config_vector_dout[335:320] {mac_config_vector/dout[335:320] axi_10g_ethernet_0/ctl_tx_pause_quanta7[15:0]}
        mac_config_vector_dout[319:304] {mac_config_vector/dout[319:304] axi_10g_ethernet_0/ctl_tx_pause_refresh_timer6[15:0]}
        mac_config_vector_dout[303:288] {mac_config_vector/dout[303:288] axi_10g_ethernet_0/ctl_tx_pause_quanta6[15:0]}
        mac_config_vector_dout[287:272] {mac_config_vector/dout[287:272] axi_10g_ethernet_0/ctl_tx_pause_refresh_timer5[15:0]}
        mac_config_vector_dout[271:256] {mac_config_vector/dout[271:256] axi_10g_ethernet_0/ctl_tx_pause_quanta5[15:0]}
        mac_config_vector_dout[255:240] {mac_config_vector/dout[255:240] axi_10g_ethernet_0/ctl_tx_pause_refresh_timer4[15:0]}
        mac_config_vector_dout[239:224] {mac_config_vector/dout[239:224] axi_10g_ethernet_0/ctl_tx_pause_quanta4[15:0]}
        mac_config_vector_dout[223:208] {mac_config_vector/dout[223:208] axi_10g_ethernet_0/ctl_tx_pause_refresh_timer3[15:0]}
        mac_config_vector_dout[207:192] {mac_config_vector/dout[207:192] axi_10g_ethernet_0/ctl_tx_pause_quanta3[15:0]}
        mac_config_vector_dout[191:176] {mac_config_vector/dout[191:176] axi_10g_ethernet_0/ctl_tx_pause_refresh_timer2[15:0]}
        mac_config_vector_dout[175:160] {mac_config_vector/dout[175:160] axi_10g_ethernet_0/ctl_tx_pause_quanta2[15:0]}
        mac_config_vector_dout[159:144] {mac_config_vector/dout[159:144] axi_10g_ethernet_0/ctl_tx_pause_refresh_timer1[15:0]}
        mac_config_vector_dout[143:128] {mac_config_vector/dout[143:128] axi_10g_ethernet_0/ctl_tx_pause_quanta1[15:0]}
        mac_config_vector_dout[127:112] {mac_config_vector/dout[127:112] axi_10g_ethernet_0/ctl_tx_pause_refresh_timer0[15:0]}
        mac_config_vector_dout[111:96] {mac_config_vector/dout[111:96] axi_10g_ethernet_0/ctl_tx_pause_quanta0[15:0]}
        mac_config_vector_dout[95] {mac_config_vector/dout[95] axi_10g_ethernet_0/ctl_tx_pause_enable[7]}
        mac_config_vector_dout[94] {mac_config_vector/dout[94] axi_10g_ethernet_0/ctl_tx_pause_enable[6]}
        mac_config_vector_dout[93] {mac_config_vector/dout[93] axi_10g_ethernet_0/ctl_tx_pause_enable[5]}
        mac_config_vector_dout[92] {mac_config_vector/dout[92] axi_10g_ethernet_0/ctl_tx_pause_enable[4]}
        mac_config_vector_dout[91] {mac_config_vector/dout[91] axi_10g_ethernet_0/ctl_tx_pause_enable[3]}
        mac_config_vector_dout[90] {mac_config_vector/dout[90] axi_10g_ethernet_0/ctl_tx_pause_enable[2]}
        mac_config_vector_dout[89] {mac_config_vector/dout[89] axi_10g_ethernet_0/ctl_tx_pause_enable[1]}
        mac_config_vector_dout[88] {mac_config_vector/dout[88] axi_10g_ethernet_0/ctl_tx_pause_enable[0]}
        mac_config_vector_dout[81] {mac_config_vector/dout[81] constant_1b_0/dout}
        mac_config_vector_dout[80] {mac_config_vector/dout[80] constant_1b_0/dout}
        mac_config_vector_dout[79:32] {mac_config_vector/dout[79:32] axi_10g_ethernet_0/ctl_tx_pause_da[47:0] }
        mac_config_vector_dout[31] {mac_config_vector/dout[31] constant_1b_0}
        mac_config_vector_dout[30:16] {mac_config_vector/dout[30:16] constant_15b_0/dout}
        mac_config_vector_dout[15] {mac_config_vector/dout[15] constant_1b_0/dout}
        mac_config_vector_dout[14] {mac_config_vector/dout[14] constant_1b_0/dout}
        mac_config_vector_dout[13] {mac_config_vector/dout[13] constant_1b_0/dout}
        mac_config_vector_dout[12] {mac_config_vector/dout[12] constant_1b_0/dout}
        mac_config_vector_dout[11] {mac_config_vector/dout[11] constant_1b_0/dout}
        mac_config_vector_dout[9] {mac_config_vector/dout[9] constant_1b_0/dout}
        mac_config_vector_dout[9] {mac_config_vector/dout[8] constant_1b_0/dout}
        mac_config_vector_dout[7] {mac_config_vector/dout[7] axi_10g_ethernet_0/ctl_tx_custom_preamble_enable}
        mac_config_vector_dout[6] {mac_config_vector/dout[6] constant_1b_0/dout}
        mac_config_vector_dout[5] {mac_config_vector/dout[5] axi_10g_ethernet_0/ctl_tx_pause_enable[1:0]}
        mac_config_vector_dout[4] {mac_config_vector/dout[4] constant_1b_0/dout}
        mac_config_vector_dout[3] {mac_config_vector/dout[3] axi_10g_ethernet_0/ctl_tx_fcs_ins_enable_0}
        mac_config_vector_dout[2] {mac_config_vector/dout[2] constant_1b_0/dout}
        mac_config_vector_dout[1] {mac_config_vector/dout[1] axi_10g_ethernet_0/ctl_tx_enable_0}
        mac_config_vector_dout[0] {mac_config_vector/dout[0] axi_10g_ethernet_0/tx_reset_0}

        mac_config_vector_dout[95:88]{mac_config_vector/dout[95:88] axi_10g_ethernet_0/ctl_rx_pause_enable_0[8:0]}
        mac_config_vector_dout[79:32] {mac_config_vector/dout[79:32] axi_10g_ethernet_0/ctl_rx_pause_sa_0[47:0]}
        mac_config_vector_dout[30:16] {mac_config_vector/dout[30:16] axi_10g_ethernet_0/ctl_rx_max_packet_len_0[14:0]}
        mac_config_vector_dout[23:16] {mac_config_vector/dout[23:16] axi_10g_ethernet_0/ctl_rx_min_packet_len_0[7:0]}
        mac_config_vector_dout[10] {mac_config_vector/dout[10] axi_10g_ethernet_0/ctl_tx_send_idle_0}
        mac_config_vector_dout[7] {mac_config_vector/dout[7] axi_10g_ethernet_0/ctl_rx_custom_preamble_enable_0}
        mac_config_vector_dout[5] {mac_config_vector/dout[5] axi_10g_ethernet_0/ctl_rx_pause_enable_0[8:0]}
        mac_config_vector_dout[3] {mac_config_vector/dout[3] axi_10g_ethernet_0/ctl_rx_delete_fcs_0}
        mac_config_vector_dout[1] {mac_config_vector/dout[1] axi_10g_ethernet_0/ctl_rx_enable_0}
        mac_config_vector_dout[0] {mac_config_vector/dout[0] axi_10g_ethernet_0/rx_reset_0}

        axi_10g_ethernet_0_tx_statistics_vector[26] {tx_statistics_vector[26] axi_10g_ethernet_0/stat_tx_user_pause_0}
        axi_10g_ethernet_0_tx_statistics_vector[25] {tx_statistics_vector[25] axi_10g_ethernet_0/stat_tx_pause_0}
        axi_10g_ethernet_0_tx_statistics_vector[24:21] {tx_statistics_vector[24:21] axi_10g_ethernet_0/stat_tx_total_good_bytes_0}
        axi_10g_ethernet_0_tx_statistics_vector[20] {tx_statistics_vector[20] axi_10g_ethernet_0/stat_tx_vlan_0}
        axi_10g_ethernet_0_tx_statistics_vector[19] {tx_statistics_vector[19] axi_10g_ethernet_0/stat_tx_packet_64_bytes_0}
        axi_10g_ethernet_0_tx_statistics_vector[18] {tx_statistics_vector[18] axi_10g_ethernet_0/stat_tx_packet_65_127_bytes_0}
        axi_10g_ethernet_0_tx_statistics_vector[17] {tx_statistics_vector[17] axi_10g_ethernet_0/stat_tx_packet_128_255_bytes_0}
        axi_10g_ethernet_0_tx_statistics_vector[16] {tx_statistics_vector[16] axi_10g_ethernet_0/stat_tx_packet_256_511_bytes_0}
        axi_10g_ethernet_0_tx_statistics_vector[15] {tx_statistics_vector[15] axi_10g_ethernet_0/stat_tx_packet_512_1023_bytes_0}
        axi_10g_ethernet_0_tx_statistics_vector[14] {tx_statistics_vector[14] axi_10g_ethernet_0/stat_tx_packet_1024_1518_bytes_0}
        axi_10g_ethernet_0_tx_statistics_vector[13] {tx_statistics_vector[13] axi_10g_ethernet_0/stat_tx_packet_1519_2047_bytes_0}
        axi_10g_ethernet_0_tx_statistics_vector[12] {tx_statistics_vector[12] axi_10g_ethernet_0/stat_tx_packet_2048_4095_bytes_0}
        axi_10g_ethernet_0_tx_statistics_vector[11] {tx_statistics_vector[11] axi_10g_ethernet_0/stat_tx_packet_4096_8191_bytes_0}
        axi_10g_ethernet_0_tx_statistics_vector[10] {tx_statistics_vector[10] axi_10g_ethernet_0/stat_tx_packet_8192_9215_bytes_0}
        axi_10g_ethernet_0_tx_statistics_vector[9] {tx_statistics_vector[9] axi_10g_ethernet_0/stat_tx_packet_large_0}
        axi_10g_ethernet_0_tx_statistics_vector[8] {tx_statistics_vector[8] axi_10g_ethernet_0/stat_tx_packet_small_0}
        axi_10g_ethernet_0_tx_statistics_vector[7] {tx_statistics_vector[7] constant_1b_0/dout}
        axi_10g_ethernet_0_tx_statistics_vector[6] {tx_statistics_vector[6] constant_1b_0/dout}
        axi_10g_ethernet_0_tx_statistics_vector[5] {tx_statistics_vector[5] constant_1b_0/dout}
        axi_10g_ethernet_0_tx_statistics_vector[4] {tx_statistics_vector[4] constant_1b_0/dout}
        axi_10g_ethernet_0_tx_statistics_vector[3] {tx_statistics_vector[3] constant_1b_0/dout}
        axi_10g_ethernet_0_tx_statistics_vector[2] {tx_statistics_vector[2] axi_10g_ethernet_0/stat_tx_multicast_0}
        axi_10g_ethernet_0_tx_statistics_vector[1] {tx_statistics_vector[1] axi_10g_ethernet_0/stat_tx_broadcast_0}
        axi_10g_ethernet_0_tx_statistics_vector[0] {tx_statistics_vector[0] axi_10g_ethernet_0/stat_tx_total_good_packets_0}

        axi_10g_ethernet_0_rx_statistics_vector[30] {rx_statistics_vector[30] axi_10g_ethernet_0/stat_rx_user_pause_0}
        axi_10g_ethernet_0_rx_statistics_vector[29] {rx_statistics_vector[29] axi_10g_ethernet_0/stat_rx_inrange_err_0}
        axi_10g_ethernet_0_rx_statistics_vector[28] {rx_statistics_vector[28] constant_1b_0/dout}
        axi_10g_ethernet_0_rx_statistics_vector[27] {rx_statistics_vector[27] axi_10g_ethernet_0/stat_rx_pause_0}
        axi_10g_ethernet_0_rx_statistics_vector[26:23] {rx_statistics_vector[26:23] axi_10g_ethernet_0/stat_rx_total_bytes_0[3:0]}
        axi_10g_ethernet_0_rx_statistics_vector[22] {rx_statistics_vector[22] axi_10g_ethernet_0/stat_rx_vlan_0}
        axi_10g_ethernet_0_rx_statistics_vector[21] {rx_statistics_vector[21] axi_10g_ethernet_0/stat_rx_toolong_0}
        axi_10g_ethernet_0_rx_statistics_vector[20] {rx_statistics_vector[20] constant_1b_0/dout}
        axi_10g_ethernet_0_rx_statistics_vector[19:5] {rx_statistics_vector[19:5] axi_10g_ethernet_0/stat_rx_total_good_bytes_0[13:0]}
        axi_10g_ethernet_0_rx_statistics_vector[4] {rx_statistics_vector[4] axi_10g_ethernet_0/stat_rx_multicast_0}
        axi_10g_ethernet_0_rx_statistics_vector[3] {rx_statistics_vector[3] axi_10g_ethernet_0/stat_rx_broadcast_0}
        axi_10g_ethernet_0_rx_statistics_vector[2] {rx_statistics_vector[2] axi_10g_ethernet_0/stat_rx_packet_bad_fcs_0}
        inv_axi_10g_ethernet_0_stat_rx_total_good_packets_0_din {axi_10g_ethernet_0/stat_rx_total_good_packets_0 inv_axi_10g_ethernet_0_stat_rx_total_good_packets_0/din}
        axi_10g_ethernet_0_rx_statistics_vector[1] {rx_statistics_vector[1] inv_axi_10g_ethernet_0_stat_rx_total_good_packets_0/dout}
        axi_10g_ethernet_0_rx_statistics_vector[0] {rx_statistics_vector[0] axi_10g_ethernet_0/stat_rx_total_good_packets_0}
    }

    adm-8k5-debug {
        axi_10g_ethernet_0_resetdone_out {network_reset_done axi_10g_ethernet_0/resetdone_out}
        axi_10g_ethernet_0_rx_statistics_valid {rx_statistics_valid axi_10g_ethernet_0/rx_statistics_valid network_packet_fifo_0/rx_statistics_valid}
        axi_10g_ethernet_0_rx_statistics_vector {rx_statistics_vector axi_10g_ethernet_0/rx_statistics_vector network_packet_fifo_0/rx_statistics_vector}
        axi_10g_ethernet_0_tx_statistics_valid {tx_statistics_valid axi_10g_ethernet_0/tx_statistics_valid}
        axi_10g_ethernet_0_tx_statistics_vector {tx_statistics_vector axi_10g_ethernet_0/tx_statistics_vector}
        axi_10g_ethernet_0_txn {txn axi_10g_ethernet_0/txn}
        axi_10g_ethernet_0_txp {txp axi_10g_ethernet_0/txp}
        axi_10g_ethernet_0_txusrclk2_out {clk_156 axi_10g_ethernet_0/txusrclk2_out network_packet_fifo_0/aclk network_packet_fifo_1/aclk rx_register_slice_1/aclk tx_register_slice_0/aclk}
        dclk_1 {clk_100 axi_10g_ethernet_0/dclk}
        gnd_dout {axi_10g_ethernet_0/sim_speedup_control axi_10g_ethernet_0/tx_fault gnd/dout}
        ifg_delay_dout {axi_10g_ethernet_0/tx_ifg_delay ifg_delay/dout}
        mac_config_vector_dout {axi_10g_ethernet_0/mac_rx_configuration_vector axi_10g_ethernet_0/mac_tx_configuration_vector mac_config_vector/dout}
        pcs_config_vector_dout {axi_10g_ethernet_0/pcs_pma_configuration_vector pcs_config_vector/dout}
        refclk_n_1 {refclk_n axi_10g_ethernet_0/refclk_n}
        refclk_p_1 {refclk_p axi_10g_ethernet_0/refclk_p}
        reset_1 {reset axi_10g_ethernet_0/reset}
        rxn_1 {rxn axi_10g_ethernet_0/rxn}
        rxp_1 {rxp axi_10g_ethernet_0/rxp}
        tx_axis_aresetn_1 {aresetn  axi_10g_ethernet_0/rx_axis_aresetn axi_10g_ethernet_0/tx_axis_aresetn network_packet_fifo_0/aresetn network_packet_fifo_1/aresetn rx_register_slice_1/aresetn tx_register_slice_0/aresetn}
        vcc_dout {axi_10g_ethernet_0/signal_detect vcc/dout}
    }
}
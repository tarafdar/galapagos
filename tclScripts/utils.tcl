## Treat this file like a header file
## procedure and variable definitions only

proc get_part_name_from_board_name {board_name} {
	if {$board_name eq "sidewinder100"} {
		return xczu19eg-ffvc1760-2-e
	} elseif {$board_name eq "adm-8k5"} {
	    return xcku115-flva1517-2-e
	} elseif {$board_name eq "adm-8k5-debug"} {
	    return xcku115-flva1517-2-e
	} else {
		puts "Unsupported board name: "
		puts $boardName
		exit
	}
}

# ip_names
#   -> component
#      -> board_name
#         -> ip_name_string
set ip_names {
    ethernet {
        sidewinder100 {xilinx.com:ip:xxv_ethernet:2.4}
        adm-8k5-debug {xilinx.com:ip:axi_10g_ethernet:3.1}
        adm-8k5 {xilinx.com:ip:axi_10g_ethernet:3.1}
    }
}

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

set ethernet_core_port_connections {
    sidewinder100 {
        # TODO: -make constant_56b_0 IP
        #       -make constant_3b_5 IP
        #       -include zups (Zynq Ultra PS) 
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

        #GUESS tx_ifg_delay = txoutclksel_in_0
        ifg_delay_dout {axi_10g_ethernet_0/txoutclksel_in_0 ifg_delay/dout}
        mac_config_vector_dout {axi_10g_ethernet_0/mac_rx_configuration_vector axi_10g_ethernet_0/mac_tx_configuration_vector mac_config_vector/dout}
        pcs_config_vector_dout {axi_10g_ethernet_0/pcs_pma_configuration_vector pcs_config_vector/dout}

        

        
        vcc_dout {axi_10g_ethernet_0/signal_detect vcc/dout}
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



  # Create port connections

}

proc get_ip_from_component_and_board_name {component board_name} {
    if {![dict exists $ip_names $component $board_name]} {
        puts "IP doesn't exist for component: $component and board_name:$board_name"
        exit
    }
    set ip_name [dict get $ip_names $component $board_name]
    puts "get_ip_from_component_and_board_name ip_name: $ip_name"
    return $ip_name
}

proc get_ips_from_board_name {board_name} {
    if {$board_name eq "sidewinder100"} {
		return "\ 
            xilinx.com:ip:axi_bram_ctrl:4.0\
            xilinx.com:ip:axi_gpio:2.0\
            xilinx.com:ip:blk_mem_gen:8.4\
            xilinx.com:ip:clk_wiz:6.0\
            xilinx.com:ip:xlconstant:1.1\
            xilinx.com:ip:system_ila:1.1\
            xilinx.com:ip:util_vector_logic:2.0\
            xilinx.com:ip:vio:3.0\
            xilinx.com:ip:util_ds_buf:2.1\
            xilinx.com:ip:xdma:4.1\
            xilinx.com:ip:mdm:3.2\
            xilinx.com:ip:microblaze:10.0\
            xilinx.com:ip:proc_sys_reset:5.0\
            xilinx.com:ip:ddr4:2.2\
            xilinx.com:ip:xxv_ethernet:2.4\
            dlyma.org:dlyma:network_packet_fifo_rx:1.1\
            dlyma.org:dlyma:network_packet_fifo_tx:1.1\
            xilinx.com:ip:axis_register_slice:1.1\
            xilinx.com:ip:lmb_bram_if_cntlr:4.0\
            xilinx.com:ip:lmb_v10:3.0\
            xilinx.com:ip:axi_dma:7.1\
            xilinx.com:ip:axis_data_fifo:1.1\
            xilinx.com:ip:xlconcat:2.1\
            xilinx.com:ip:zynq_ultra_ps_e:3.1\
            "
	} elseif {$board_name eq "adm-8k5"} {
        return "\ 
            xilinx.com:ip:axi_bram_ctrl:4.0\
            xilinx.com:ip:axi_gpio:2.0\
            xilinx.com:ip:blk_mem_gen:8.4\
            xilinx.com:ip:clk_wiz:6.0\
            xilinx.com:ip:xlconstant:1.1\
            xilinx.com:ip:system_ila:1.1\
            xilinx.com:ip:util_vector_logic:2.0\
            xilinx.com:ip:vio:3.0\
            xilinx.com:ip:util_ds_buf:2.1\
            xilinx.com:ip:xdma:4.1\
            xilinx.com:ip:mdm:3.2\
            xilinx.com:ip:microblaze:10.0\
            xilinx.com:ip:proc_sys_reset:5.0\
            xilinx.com:ip:ddr4:2.2\
            xilinx.com:ip:axi_10g_ethernet:3.1\
            dlyma.org:dlyma:network_packet_fifo_rx:1.1\
            dlyma.org:dlyma:network_packet_fifo_tx:1.1\
            xilinx.com:ip:axis_register_slice:1.1\
            xilinx.com:ip:lmb_bram_if_cntlr:4.0\
            xilinx.com:ip:lmb_v10:3.0\
            "
	} elseif {$board_name eq "adm-8k5-debug"} {
	    return "\ 
            xilinx.com:ip:axi_bram_ctrl:4.0\
            xilinx.com:ip:axi_gpio:2.0\
            xilinx.com:ip:blk_mem_gen:8.4\
            xilinx.com:ip:clk_wiz:6.0\
            xilinx.com:ip:xlconstant:1.1\
            xilinx.com:ip:system_ila:1.1\
            xilinx.com:ip:util_vector_logic:2.0\
            xilinx.com:ip:vio:3.0\
            xilinx.com:ip:util_ds_buf:2.1\
            xilinx.com:ip:xdma:4.1\
            xilinx.com:ip:mdm:3.2\
            xilinx.com:ip:microblaze:10.0\
            xilinx.com:ip:proc_sys_reset:5.0\
            xilinx.com:ip:ddr4:2.2\
            xilinx.com:ip:axi_10g_ethernet:3.1\
            dlyma.org:dlyma:network_packet_fifo_rx:1.1\
            dlyma.org:dlyma:network_packet_fifo_tx:1.1\
            xilinx.com:ip:axis_register_slice:1.1\
            xilinx.com:ip:lmb_bram_if_cntlr:4.0\
            xilinx.com:ip:lmb_v10:3.0\
            "
	} else {
		puts "Unsupported board name: "
		puts $board_name
		exit
	}
   
}
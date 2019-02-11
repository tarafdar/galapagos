################################################################################
# This file defines a number of procedures to make shells. This file can be 
# sourced in Vivado and an individual procedure can be run to see what the 
# interfaces look like. There are different procedures for different variants
# (e.g. single vs. dual channel DDR) so shells for different boards can be 
# easily customized.

################################################################################
# Creates MicroBlaze hierarchy containing:
#   Processor Reset System (provides resets for other IPs)
#   MicroBlaze Debug Module (connected to Interconnect [slave] and MB [master])
#   MicroBlaze (connected to local memory and interconnect [master])
#   Local memory for the MicroBlaze
#   AXI interconnect
# There are three ports:
#   clk - clk for all IPs
#   reset_n - active low reset
#   AXI-M - AXI master interface for MB
# There are 5 arguments:
#   parentCell - a block design instance or hierarchy e.g. [current_bd_instance .]
#   nameHier - name of the hierarchy created
#   nameClk - name of clock port of the hierarchy
#   nameReset - name of reset port of the hierarchy
#   nameAXI - name of AXI port of the hierarchy
################################################################################
proc create_hier_MB { parentCell nameHier nameClk nameReset nameAXI } {

  if { $parentCell eq "" || $nameHier eq "" } {
    catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_MB() - Empty argument(s)!"}
    return 1
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
    catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
    return 1
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
    catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
    return 1
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 $nameAXI

  # Create pins
  create_bd_pin -dir I -type clk $nameClk
  create_bd_pin -dir I -type rst $nameReset

  # Create instance: mdm_0, and set properties
  set mdm_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm mdm_0 ]
  set_property -dict [ list \
   CONFIG.C_USE_UART {1} \
 ] $mdm_0

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory $hier_obj microblaze_0_local_memory

  # Create instance: rst_clk_wiz_0_100M, and set properties
  set rst_clk_wiz_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset rst_clk_wiz_0_100M ]

  # Create interface connections
  connect_bd_intf_net -intf_net mdm_1_MBDEBUG_0 [get_bd_intf_pins mdm_0/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_DLMB [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ILMB [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins mdm_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins $nameAXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]

  # Create port connections
  connect_bd_net -net Clk_1 [get_bd_pins $nameClk] [get_bd_pins mdm_0/S_AXI_ACLK] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_0_100M/slowest_sync_clk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins mdm_0/S_AXI_ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_0_100M/peripheral_aresetn]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins $nameReset] [get_bd_pins rst_clk_wiz_0_100M/ext_reset_in]
  connect_bd_net -net mdm_1_Debug_SYS_Rst [get_bd_pins mdm_0/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/mb_debug_sys_rst]
  connect_bd_net -net rst_clk_wiz_0_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_0_100M_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_0_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_clk_wiz_0_100M/mb_reset]

  # Restore current instance
  current_bd_instance $oldCurInst
}

################################################################################
# Creates MicroBlaze memory hierarchy containing:
#   Local Memory Buses, LMB Controllers, Block Memory
# There are three ports:
#   DLMB - LMB interface for data memory
#   ILMB - LMB interface for instruction memory
#   LMB_Clk - clock
#   SYS_Rst - active high reset
# There are 2 arguments:
#   parentCell - a block design instance or hierarchy
#   nameHier - name of the hierarchy created
################################################################################
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

################################################################################
# Creates 10G Ethernet hierarchy containing:
#   xilinx.com:ip:xlconstant:1.1
#   dlyma.org:dlyma:network_packet_fifo_rx:1.1
#   dlyma.org:dlyma:network_packet_fifo_tx:1.1
#   xilinx.com:ip:axis_register_slice:1.1
#   xilinx.com:ip:axi_10g_ethernet:3.1
# There are 3 arguments:
#   parentCell - a block design instance or hierarchy e.g. [current_bd_instance .]
#   nameHier - name of the hierarchy created
#   transceiverLoc - XY location of transceiver for Ethernet
################################################################################
proc create_hier_eth10G { parentCell nameHier transceiverLoc} {

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_eth10G() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS

  # Create pins
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir I -type clk clk_100
  create_bd_pin -dir O -type clk clk_156
  create_bd_pin -dir O network_reset_done
  create_bd_pin -dir I refclk_n
  create_bd_pin -dir I refclk_p
  create_bd_pin -dir I -type rst reset
  create_bd_pin -dir O rx_statistics_valid
  create_bd_pin -dir O -from 29 -to 0 rx_statistics_vector
  create_bd_pin -dir I rxn
  create_bd_pin -dir I rxp
  create_bd_pin -dir O tx_statistics_valid
  create_bd_pin -dir O -from 25 -to 0 tx_statistics_vector
  create_bd_pin -dir O txn
  create_bd_pin -dir O txp

  # Create instance: axi_10g_ethernet_0, and set properties
  set axi_10g_ethernet_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_10g_ethernet axi_10g_ethernet_0 ]
  set_property -dict [ list \
   CONFIG.Locations $transceiverLoc \
   CONFIG.Management_Interface {false} \
   CONFIG.SupportLevel {1} \
   CONFIG.base_kr {BASE-R} \
 ] $axi_10g_ethernet_0

  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
 ] [get_bd_pins /network/axi_10g_ethernet_0/coreclk_out]

  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
 ] [get_bd_pins /network/axi_10g_ethernet_0/qpll0outrefclk_out]

  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
 ] [get_bd_pins /network/axi_10g_ethernet_0/rxrecclk_out]

  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   CONFIG.ASSOCIATED_BUSIF {m_axis_rx:s_axis_pause:s_axis_tx} \
   CONFIG.ASSOCIATED_ASYNC_RESET {tx_axis_aresetn:rx_axis_aresetn} \
 ] [get_bd_pins /network/axi_10g_ethernet_0/txusrclk2_out]

  set_property -dict [ list \
   CONFIG.FREQ_HZ {312500000} \
 ] [get_bd_pins /network/axi_10g_ethernet_0/txusrclk_out]

  # Create instance: gnd, and set properties
  set gnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant gnd ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $gnd

  # Create instance: ifg_delay, and set properties
  set ifg_delay [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant ifg_delay ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {8} \
 ] $ifg_delay

  # Create instance: mac_config_vector, and set properties
  set mac_config_vector [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant mac_config_vector ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {22} \
   CONFIG.CONST_WIDTH {80} \
 ] $mac_config_vector

  # Create instance: network_packet_fifo_0, and set properties
  set network_packet_fifo_0 [ create_bd_cell -type ip -vlnv dlyma.org:dlyma:network_packet_fifo_rx network_packet_fifo_0 ]

  # Create instance: network_packet_fifo_1, and set properties
  set network_packet_fifo_1 [ create_bd_cell -type ip -vlnv dlyma.org:dlyma:network_packet_fifo_tx network_packet_fifo_1 ]

  # Create instance: pcs_config_vector, and set properties
  set pcs_config_vector [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant pcs_config_vector ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {536} \
 ] $pcs_config_vector

  # Create instance: rx_register_slice_1, and set properties
  set rx_register_slice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice rx_register_slice_1 ]
  set_property -dict [ list \
   CONFIG.TUSER_WIDTH {0} \
 ] $rx_register_slice_1

  # Create instance: tx_register_slice_0, and set properties
  set tx_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice tx_register_slice_0 ]
  set_property -dict [ list \
   CONFIG.TUSER_WIDTH {0} \
 ] $tx_register_slice_0

  # Create instance: vcc, and set properties
  set vcc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant vcc ]

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXIS_1 [get_bd_intf_pins S_AXIS] [get_bd_intf_pins tx_register_slice_0/S_AXIS]
  connect_bd_intf_net -intf_net axi_10g_ethernet_0_m_axis_rx [get_bd_intf_pins axi_10g_ethernet_0/m_axis_rx] [get_bd_intf_pins network_packet_fifo_0/s_axis]
  connect_bd_intf_net -intf_net network_packet_fifo_0_m_axis [get_bd_intf_pins network_packet_fifo_0/m_axis] [get_bd_intf_pins rx_register_slice_1/S_AXIS]
  connect_bd_intf_net -intf_net network_packet_fifo_1_m_axis [get_bd_intf_pins axi_10g_ethernet_0/s_axis_tx] [get_bd_intf_pins network_packet_fifo_1/m_axis]
  connect_bd_intf_net -intf_net rx_register_slice_1_M_AXIS [get_bd_intf_pins M_AXIS] [get_bd_intf_pins rx_register_slice_1/M_AXIS]
  connect_bd_intf_net -intf_net tx_register_slice_0_M_AXIS [get_bd_intf_pins network_packet_fifo_1/s_axis] [get_bd_intf_pins tx_register_slice_0/M_AXIS]

  # Create port connections
  connect_bd_net -net axi_10g_ethernet_0_resetdone_out [get_bd_pins network_reset_done] [get_bd_pins axi_10g_ethernet_0/resetdone_out]
  connect_bd_net -net axi_10g_ethernet_0_rx_statistics_valid [get_bd_pins rx_statistics_valid] [get_bd_pins axi_10g_ethernet_0/rx_statistics_valid] [get_bd_pins network_packet_fifo_0/rx_statistics_valid]
  connect_bd_net -net axi_10g_ethernet_0_rx_statistics_vector [get_bd_pins rx_statistics_vector] [get_bd_pins axi_10g_ethernet_0/rx_statistics_vector] [get_bd_pins network_packet_fifo_0/rx_statistics_vector]
  connect_bd_net -net axi_10g_ethernet_0_tx_statistics_valid [get_bd_pins tx_statistics_valid] [get_bd_pins axi_10g_ethernet_0/tx_statistics_valid]
  connect_bd_net -net axi_10g_ethernet_0_tx_statistics_vector [get_bd_pins tx_statistics_vector] [get_bd_pins axi_10g_ethernet_0/tx_statistics_vector]
  connect_bd_net -net axi_10g_ethernet_0_txn [get_bd_pins txn] [get_bd_pins axi_10g_ethernet_0/txn]
  connect_bd_net -net axi_10g_ethernet_0_txp [get_bd_pins txp] [get_bd_pins axi_10g_ethernet_0/txp]
  connect_bd_net -net axi_10g_ethernet_0_txusrclk2_out [get_bd_pins clk_156] [get_bd_pins axi_10g_ethernet_0/txusrclk2_out] [get_bd_pins network_packet_fifo_0/aclk] [get_bd_pins network_packet_fifo_1/aclk] [get_bd_pins rx_register_slice_1/aclk] [get_bd_pins tx_register_slice_0/aclk]
  connect_bd_net -net dclk_1 [get_bd_pins clk_100] [get_bd_pins axi_10g_ethernet_0/dclk]
  connect_bd_net -net gnd_dout [get_bd_pins axi_10g_ethernet_0/sim_speedup_control] [get_bd_pins axi_10g_ethernet_0/tx_fault] [get_bd_pins gnd/dout]
  connect_bd_net -net ifg_delay_dout [get_bd_pins axi_10g_ethernet_0/tx_ifg_delay] [get_bd_pins ifg_delay/dout]
  connect_bd_net -net mac_config_vector_dout [get_bd_pins axi_10g_ethernet_0/mac_rx_configuration_vector] [get_bd_pins axi_10g_ethernet_0/mac_tx_configuration_vector] [get_bd_pins mac_config_vector/dout]
  connect_bd_net -net pcs_config_vector_dout [get_bd_pins axi_10g_ethernet_0/pcs_pma_configuration_vector] [get_bd_pins pcs_config_vector/dout]
  connect_bd_net -net refclk_n_1 [get_bd_pins refclk_n] [get_bd_pins axi_10g_ethernet_0/refclk_n]
  connect_bd_net -net refclk_p_1 [get_bd_pins refclk_p] [get_bd_pins axi_10g_ethernet_0/refclk_p]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins axi_10g_ethernet_0/reset]
  connect_bd_net -net rxn_1 [get_bd_pins rxn] [get_bd_pins axi_10g_ethernet_0/rxn]
  connect_bd_net -net rxp_1 [get_bd_pins rxp] [get_bd_pins axi_10g_ethernet_0/rxp]
  connect_bd_net -net tx_axis_aresetn_1 [get_bd_pins aresetn] [get_bd_pins axi_10g_ethernet_0/rx_axis_aresetn] [get_bd_pins axi_10g_ethernet_0/tx_axis_aresetn] [get_bd_pins network_packet_fifo_0/aresetn] [get_bd_pins network_packet_fifo_1/aresetn] [get_bd_pins rx_register_slice_1/aresetn] [get_bd_pins tx_register_slice_0/aresetn]
  connect_bd_net -net vcc_dout [get_bd_pins axi_10g_ethernet_0/signal_detect] [get_bd_pins vcc/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

################################################################################
# Creates DDR4 dual channel hierarchy containing:
#   xilinx.com:ip:util_vector_logic:2.0
#   xilinx.com:ip:proc_sys_reset:5.0
#   xilinx.com:ip:axi_interconnect:2.1
#   xilinx.com:ip:ddr4:2.2
# There are 2 arguments:
#   parentCell - a block design instance or hierarchy e.g. [current_bd_instance .]
#   nameHier - name of the hierarchy created
#   enableDual - true | false : creates dual channel DDR
#   enable PCIe - true | false : adds an interconnect for PCIe to channel 0
################################################################################
proc create_hier_ddr4 { parentCell nameHier enableDual enablePCIe} {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
    catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_ddr4() - Empty argument(s)!"}
    return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
    catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
    return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 MEM_AXI_0
  if { $enableDual } {
    create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 MEM_AXI_1
    create_bd_pin -dir O c1_ddr4_act_n
    create_bd_pin -dir O -from 16 -to 0 c1_ddr4_adr
    create_bd_pin -dir O -from 1 -to 0 c1_ddr4_ba
    create_bd_pin -dir O -from 1 -to 0 c1_ddr4_bg
    create_bd_pin -dir O -from 0 -to 0 -type clk c1_ddr4_ck_c
    create_bd_pin -dir O -from 0 -to 0 -type clk c1_ddr4_ck_t
    create_bd_pin -dir O -from 0 -to 0 c1_ddr4_cke
    create_bd_pin -dir O -from 0 -to 0 c1_ddr4_cs_n
    create_bd_pin -dir IO -from 7 -to 0 c1_ddr4_dm_dbi_n
    create_bd_pin -dir IO -from 63 -to 0 c1_ddr4_dq
    create_bd_pin -dir IO -from 7 -to 0 c1_ddr4_dqs_c
    create_bd_pin -dir IO -from 7 -to 0 c1_ddr4_dqs_t
    create_bd_pin -dir O -from 0 -to 0 c1_ddr4_odt
    create_bd_pin -dir O c1_ddr4_reset_n
    create_bd_pin -dir I -type clk c1_sys_clk_n
    create_bd_pin -dir I -type clk c1_sys_clk_p
  }
  if { $enablePCIe } {
    create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 PCIE_AXI
    create_bd_pin -dir I -type clk PCIE_ACLK
  }

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 ARESETN
  create_bd_pin -dir I -type rst S_ARESETN

  create_bd_pin -dir O c0_ddr4_act_n
  create_bd_pin -dir O -from 16 -to 0 c0_ddr4_adr
  create_bd_pin -dir O -from 1 -to 0 c0_ddr4_ba
  create_bd_pin -dir O -from 1 -to 0 c0_ddr4_bg
  create_bd_pin -dir O -from 0 -to 0 -type clk c0_ddr4_ck_c
  create_bd_pin -dir O -from 0 -to 0 -type clk c0_ddr4_ck_t
  create_bd_pin -dir O -from 0 -to 0 c0_ddr4_cke
  create_bd_pin -dir O -from 0 -to 0 c0_ddr4_cs_n
  create_bd_pin -dir IO -from 63 -to 0 c0_ddr4_dg
  create_bd_pin -dir IO -from 7 -to 0 c0_ddr4_dm_dbi_n
  create_bd_pin -dir IO -from 7 -to 0 c0_ddr4_dqs_c
  create_bd_pin -dir IO -from 7 -to 0 c0_ddr4_dqs_t
  create_bd_pin -dir O -from 0 -to 0 c0_ddr4_odt
  create_bd_pin -dir O c0_ddr4_reset_n
  create_bd_pin -dir I -type clk c0_sys_clk_n
  create_bd_pin -dir I -type clk c0_sys_clk_p
  
  create_bd_pin -dir I -type clk clk156_25
  create_bd_pin -dir I -from 0 -to 0 -type rst sys_rst

  # Create instance: ddr4_0, and set properties
  set ddr4_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4 ddr4_0 ]
  set_property -dict [ list \
    CONFIG.C0.ADDR_WIDTH {17} \
    CONFIG.C0.BANK_GROUP_WIDTH {2} \
    CONFIG.C0.DDR4_AxiAddressWidth {33} \
    CONFIG.C0.DDR4_AxiDataWidth {512} \
    CONFIG.C0.DDR4_CasLatency {18} \
    CONFIG.C0.DDR4_CasWriteLatency {11} \
    CONFIG.C0.DDR4_CustomParts {../../../../imports/srcs/custom_parts_2133.csv} \
    CONFIG.C0.DDR4_DataWidth {64} \
    CONFIG.C0.DDR4_InputClockPeriod {3338} \
    CONFIG.C0.DDR4_MemoryPart {CUSTOM_DBI_MT40A1G8PM-083E} \
    CONFIG.C0.DDR4_TimePeriod {939} \
    CONFIG.C0.DDR4_isCustom {true} \
    CONFIG.Simulation_Mode {Unisim} \
  ] $ddr4_0

  if { $enableDual } {
    # Create instance: ddr4_1, and set properties
    set ddr4_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4 ddr4_1 ]
    set_property -dict [ list \
      CONFIG.C0.ADDR_WIDTH {17} \
      CONFIG.C0.BANK_GROUP_WIDTH {2} \
      CONFIG.C0.DDR4_AxiAddressWidth {33} \
      CONFIG.C0.DDR4_AxiDataWidth {512} \
      CONFIG.C0.DDR4_CasLatency {18} \
      CONFIG.C0.DDR4_CasWriteLatency {11} \
      CONFIG.C0.DDR4_CustomParts {../../../../imports/srcs/custom_parts_2133.csv} \
      CONFIG.C0.DDR4_DataWidth {64} \
      CONFIG.C0.DDR4_InputClockPeriod {3338} \
      CONFIG.C0.DDR4_MemoryPart {CUSTOM_DBI_MT40A1G8PM-083E} \
      CONFIG.C0.DDR4_TimePeriod {939} \
      CONFIG.C0.DDR4_isCustom {true} \
      CONFIG.Simulation_Mode {Unisim} \
    ] $ddr4_1

    # Create instance: ddr1_interconnect, and set properties
    set ddr1_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect ddr1_interconnect ]
    set_property -dict [ list \
      CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
      CONFIG.M00_HAS_REGSLICE {3} \
      CONFIG.NUM_MI {1} \
      CONFIG.NUM_SI {1} \
      CONFIG.S00_HAS_DATA_FIFO {2} \
      CONFIG.S00_HAS_REGSLICE {3} \
      CONFIG.S01_HAS_DATA_FIFO {2} \
      CONFIG.S01_HAS_REGSLICE {3} \
      CONFIG.STRATEGY {0} \
      CONFIG.SYNCHRONIZATION_STAGES {3} \
      CONFIG.XBAR_DATA_WIDTH {512} \
    ] $ddr1_interconnect

    # Create instance: ddr_aux_reset, and set properties
    set ddr_aux_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic ddr_aux_reset ]
    set_property -dict [ list \
      CONFIG.C_OPERATION {or} \
      CONFIG.C_SIZE {1} \
    ] $ddr_aux_reset

    # Create instance: ddr_aresetn, and set properties
    set ddr_aresetn [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic ddr_aresetn ]
    set_property -dict [ list \
      CONFIG.C_OPERATION {and} \
      CONFIG.C_SIZE {1} \
    ] $ddr_aresetn
  }

  # Create instance: ddr0_interconnect, and set properties
  set ddr0_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect ddr0_interconnect ]
  if { $enablePCIe } {
    set numSlaves 2
  } else {
    set numSlaves 1
  }
  set_property -dict [ list \
    CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
    CONFIG.M00_HAS_REGSLICE {3} \
    CONFIG.NUM_MI {1} \
    CONFIG.NUM_SI $numSlaves \
    CONFIG.S00_HAS_DATA_FIFO {2} \
    CONFIG.S00_HAS_REGSLICE {3} \
    CONFIG.S01_HAS_DATA_FIFO {2} \
    CONFIG.S01_HAS_REGSLICE {3} \
    CONFIG.STRATEGY {2} \
    CONFIG.SYNCHRONIZATION_STAGES {3} \
    CONFIG.XBAR_DATA_WIDTH {512} \
  ] $ddr0_interconnect

  # Create instance: ddr_proc_sys_reset, and set properties
  set ddr_proc_sys_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset ddr_proc_sys_reset ]
  set_property -dict [ list \
    CONFIG.C_AUX_RESET_HIGH {1} \
  ] $ddr_proc_sys_reset

  # Create interface connections
  if { $enablePCIe } {
    connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins PCIE_AXI] [get_bd_intf_pins ddr0_interconnect/S01_AXI]
    
  }
  if { $enableDual } {
    connect_bd_intf_net -intf_net MEM_AXI_1_1 [get_bd_intf_pins MEM_AXI_1] [get_bd_intf_pins ddr1_interconnect/S00_AXI]
    connect_bd_intf_net -intf_net ddr1_interconnect_M00 [get_bd_intf_pins ddr4_1/C0_DDR4_S_AXI] [get_bd_intf_pins ddr1_interconnect/M00_AXI]
  }
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins MEM_AXI_0] [get_bd_intf_pins ddr0_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net ddr0_interconnect_M00 [get_bd_intf_pins ddr4_0/C0_DDR4_S_AXI] [get_bd_intf_pins ddr0_interconnect/M00_AXI]

  # Create port connections
  connect_bd_net -net M00_ARESETN_1 [get_bd_pins ddr4_0/c0_ddr4_aresetn] [get_bd_pins ddr0_interconnect/M00_ARESETN] [get_bd_pins ddr_proc_sys_reset/peripheral_aresetn]
  connect_bd_net -net Net4 [get_bd_pins c0_ddr4_dm_dbi_n] [get_bd_pins ddr4_0/c0_ddr4_dm_dbi_n]
  connect_bd_net -net Net5 [get_bd_pins c0_ddr4_dqs_c] [get_bd_pins ddr4_0/c0_ddr4_dqs_c]
  connect_bd_net -net Net6 [get_bd_pins c0_ddr4_dqs_t] [get_bd_pins ddr4_0/c0_ddr4_dqs_t]
  connect_bd_net -net Net7 [get_bd_pins c0_ddr4_dg] [get_bd_pins ddr4_0/c0_ddr4_dq]
  
  connect_bd_net -net S01_ARESETN_1 [get_bd_pins S_ARESETN] [get_bd_pins ddr0_interconnect/S00_ARESETN]
  connect_bd_net -net c1_sys_clk_n_1 [get_bd_pins c0_sys_clk_n] [get_bd_pins ddr4_0/c0_sys_clk_n]
  connect_bd_net -net c1_sys_clk_p_1 [get_bd_pins c0_sys_clk_p] [get_bd_pins ddr4_0/c0_sys_clk_p]
  connect_bd_net -net m_axi_mm2s_aclk_1 [get_bd_pins clk156_25] [get_bd_pins ddr0_interconnect/S00_ACLK]
  
  connect_bd_net -net ddr4_0_c0_init_calib_complete [get_bd_pins ARESETN] [get_bd_pins ddr_proc_sys_reset/ext_reset_in]
  connect_bd_net -net ddr4_1_c0_ddr4_act_n [get_bd_pins c0_ddr4_act_n] [get_bd_pins ddr4_0/c0_ddr4_act_n]
  connect_bd_net -net ddr4_1_c0_ddr4_adr [get_bd_pins c0_ddr4_adr] [get_bd_pins ddr4_0/c0_ddr4_adr]
  connect_bd_net -net ddr4_1_c0_ddr4_ba [get_bd_pins c0_ddr4_ba] [get_bd_pins ddr4_0/c0_ddr4_ba]
  connect_bd_net -net ddr4_1_c0_ddr4_bg [get_bd_pins c0_ddr4_bg] [get_bd_pins ddr4_0/c0_ddr4_bg]
  connect_bd_net -net ddr4_1_c0_ddr4_ck_c [get_bd_pins c0_ddr4_ck_c] [get_bd_pins ddr4_0/c0_ddr4_ck_c]
  connect_bd_net -net ddr4_1_c0_ddr4_ck_t [get_bd_pins c0_ddr4_ck_t] [get_bd_pins ddr4_0/c0_ddr4_ck_t]
  connect_bd_net -net ddr4_1_c0_ddr4_cke [get_bd_pins c0_ddr4_cke] [get_bd_pins ddr4_0/c0_ddr4_cke]
  connect_bd_net -net ddr4_1_c0_ddr4_cs_n [get_bd_pins c0_ddr4_cs_n] [get_bd_pins ddr4_0/c0_ddr4_cs_n]
  connect_bd_net -net ddr4_1_c0_ddr4_odt [get_bd_pins c0_ddr4_odt] [get_bd_pins ddr4_0/c0_ddr4_odt]
  connect_bd_net -net ddr4_1_c0_ddr4_reset_n [get_bd_pins c0_ddr4_reset_n] [get_bd_pins ddr4_0/c0_ddr4_reset_n]
  connect_bd_net -net ddr4_1_c0_ddr4_ui_clk [get_bd_pins ddr4_0/c0_ddr4_ui_clk] [get_bd_pins ddr0_interconnect/ACLK] [get_bd_pins ddr0_interconnect/M00_ACLK] [get_bd_pins ddr_proc_sys_reset/slowest_sync_clk]
  
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins ddr0_interconnect/ARESETN] [get_bd_pins ddr_proc_sys_reset/interconnect_aresetn]
  connect_bd_net -net sys_rst_1 [get_bd_pins sys_rst] [get_bd_pins ddr4_0/sys_rst]

  if { $enableDual } {
    connect_bd_net -net S01_ARESETN_1 [get_bd_pins ddr1_interconnect/S00_ARESETN]
    connect_bd_net -net M00_ARESETN_1 [get_bd_pins ddr4_1/c0_ddr4_aresetn] [get_bd_pins ddr1_interconnect/M00_ARESETN]
    connect_bd_net -net Net [get_bd_pins c1_ddr4_dqs_t] [get_bd_pins ddr4_1/c0_ddr4_dqs_t]
    connect_bd_net -net Net1 [get_bd_pins c1_ddr4_dqs_c] [get_bd_pins ddr4_1/c0_ddr4_dqs_c]
    connect_bd_net -net Net2 [get_bd_pins c1_ddr4_dm_dbi_n] [get_bd_pins ddr4_1/c0_ddr4_dm_dbi_n]
    connect_bd_net -net Net3 [get_bd_pins c1_ddr4_dq] [get_bd_pins ddr4_1/c0_ddr4_dq]
    connect_bd_net -net c1_sys_clk_n_2 [get_bd_pins c1_sys_clk_n] [get_bd_pins ddr4_1/c0_sys_clk_n]
    connect_bd_net -net c1_sys_clk_p_2 [get_bd_pins c1_sys_clk_p] [get_bd_pins ddr4_1/c0_sys_clk_p]
    connect_bd_net -net ddr4_1_c0_ddr4_act_n1 [get_bd_pins c1_ddr4_act_n] [get_bd_pins ddr4_1/c0_ddr4_act_n]
    connect_bd_net -net ddr4_1_c0_ddr4_adr1 [get_bd_pins c1_ddr4_adr] [get_bd_pins ddr4_1/c0_ddr4_adr]
    connect_bd_net -net ddr4_1_c0_ddr4_ba1 [get_bd_pins c1_ddr4_ba] [get_bd_pins ddr4_1/c0_ddr4_ba]
    connect_bd_net -net ddr4_1_c0_ddr4_bg1 [get_bd_pins c1_ddr4_bg] [get_bd_pins ddr4_1/c0_ddr4_bg]
    connect_bd_net -net ddr4_1_c0_ddr4_ck_c1 [get_bd_pins c1_ddr4_ck_c] [get_bd_pins ddr4_1/c0_ddr4_ck_c]
    connect_bd_net -net ddr4_1_c0_ddr4_ck_t1 [get_bd_pins c1_ddr4_ck_t] [get_bd_pins ddr4_1/c0_ddr4_ck_t]
    connect_bd_net -net ddr4_1_c0_ddr4_cke1 [get_bd_pins c1_ddr4_cke] [get_bd_pins ddr4_1/c0_ddr4_cke]
    connect_bd_net -net ddr4_1_c0_ddr4_cs_n1 [get_bd_pins c1_ddr4_cs_n] [get_bd_pins ddr4_1/c0_ddr4_cs_n]
    connect_bd_net -net ddr4_1_c0_ddr4_odt1 [get_bd_pins c1_ddr4_odt] [get_bd_pins ddr4_1/c0_ddr4_odt]
    connect_bd_net -net ddr4_1_c0_ddr4_reset_n1 [get_bd_pins c1_ddr4_reset_n] [get_bd_pins ddr4_1/c0_ddr4_reset_n]
    connect_bd_net -net ddr4_1_c0_ddr4_ui_clk1 [get_bd_pins ddr4_1/c0_ddr4_ui_clk] [get_bd_pins ddr1_interconnect/ACLK] [get_bd_pins ddr1_interconnect/M00_ACLK]
    connect_bd_net -net ddr4_1_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_1/c0_ddr4_ui_clk_sync_rst] [get_bd_pins ddr_aux_reset/Op2]
    connect_bd_net -net ddr4_1_c0_init_calib_complete [get_bd_pins ddr4_1/c0_init_calib_complete] [get_bd_pins ddr_aresetn/Op2]
    connect_bd_net -net m_axi_mm2s_aclk_1 [get_bd_pins ddr1_interconnect/S00_ACLK] [get_bd_pins clk156_25]
    connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins ddr1_interconnect/ARESETN]
    connect_bd_net -net sys_rst_1 [get_bd_pins ddr4_1/sys_rst]
    connect_bd_net -net util_vector_logic_4_Res [get_bd_pins ddr_proc_sys_reset/aux_reset_in] [get_bd_pins ddr_aux_reset/Res]
    connect_bd_net -net ddr4_0_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_0/c0_ddr4_ui_clk_sync_rst] [get_bd_pins ddr_aux_reset/Op1]
    connect_bd_net -net ddr4_0_c0_init_calib_complete [get_bd_pins ddr_aresetn/Res]
    connect_bd_net -net ddr4_0_c0_init_calib_complete1 [get_bd_pins ddr4_0/c0_init_calib_complete] [get_bd_pins ddr_aresetn/Op1]
  } else {
    connect_bd_net -net ddr4_0_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_0/c0_ddr4_ui_clk_sync_rst] [get_bd_pins ddr_proc_sys_reset/aux_reset_in]
    connect_bd_net -net ddr4_0_c0_init_calib_complete [get_bd_pins ddr4_0/c0_init_calib_complete]
  }

  if { $enablePCIe } {
    connect_bd_net -net S01_ARESETN_1  [get_bd_pins ddr0_interconnect/S01_ARESETN]
    connect_bd_net -net S00_ACLK_1 [get_bd_pins PCIE_ACLK] [get_bd_pins ddr0_interconnect/S01_ACLK]
  }
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

################################################################################
# Creates PCIe hierarchy containing:
#   xilinx.com:ip:util_ds_buf:2.1
#   xilinx.com:ip:xdma:3.1
# There are 2 arguments:
#   parentCell - a block design instance or hierarchy e.g. [current_bd_instance .]
#   nameHier - name of the hierarchy created
################################################################################
proc create_hier_PCIe { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_PCIe() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK_IN_D
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_LITE
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt

  # Create pins
  create_bd_pin -dir O -type clk axi_aclk
  create_bd_pin -dir O -type rst axi_aresetn
  create_bd_pin -dir I -type rst sys_rst_n

  # Create instance: util_ds_buf, and set properties
  set util_ds_buf [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf util_ds_buf ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf

  # Create instance: xdma_0, and set properties
  set xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma xdma_0 ]
  set_property -dict [ list \
   CONFIG.INS_LOSS_NYQ {5} \
   CONFIG.axi_data_width {256_bit} \
   CONFIG.axilite_master_en {true} \
   CONFIG.axisten_freq {250} \
   CONFIG.cfg_mgmt_if {false} \
   CONFIG.ins_loss_profile {Chip-to-Chip} \
   CONFIG.mode_selection {Advanced} \
   CONFIG.pf0_device_id {8038} \
   CONFIG.pf0_interrupt_pin {NONE} \
   CONFIG.pl_link_cap_max_link_speed {8.0_GT/s} \
   CONFIG.pl_link_cap_max_link_width {X8} \
   CONFIG.xdma_axi_intf_mm {AXI_Memory_Mapped} \
   CONFIG.xdma_rnum_chnl {4} \
   CONFIG.xdma_wnum_chnl {4} \
 ] $xdma_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins pcie_mgt] [get_bd_intf_pins xdma_0/pcie_mgt]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M_AXI] [get_bd_intf_pins xdma_0/M_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins CLK_IN_D] [get_bd_intf_pins util_ds_buf/CLK_IN_D]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins M_AXI_LITE] [get_bd_intf_pins xdma_0/M_AXI_LITE]

  # Create port connections
  connect_bd_net -net sys_rst_n_1 [get_bd_pins sys_rst_n] [get_bd_pins xdma_0/sys_rst_n]
  connect_bd_net -net util_ds_buf_IBUF_DS_ODIV2 [get_bd_pins util_ds_buf/IBUF_DS_ODIV2] [get_bd_pins xdma_0/sys_clk]
  connect_bd_net -net util_ds_buf_IBUF_OUT [get_bd_pins util_ds_buf/IBUF_OUT] [get_bd_pins xdma_0/sys_clk_gt]
  connect_bd_net -net xdma_0_axi_aclk [get_bd_pins axi_aclk] [get_bd_pins xdma_0/axi_aclk]
  connect_bd_net -net xdma_0_axi_aresetn [get_bd_pins axi_aresetn] [get_bd_pins xdma_0/axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

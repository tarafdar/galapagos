
################################################################
# This is a generated script based on design: bd_01e2
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_01e2_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku115-flva1517-2-e
}


# CHANGE DESIGN NAME HERE
set design_name bd_01e2

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
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


  # Create interface ports
  set m_axis_rx [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rx ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {156250000} \
CONFIG.HAS_TKEEP {1} \
CONFIG.TDATA_NUM_BYTES {8} \
 ] $m_axis_rx
  set rx_statistics [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 rx_statistics ]
  set s_axis_pause [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_pause ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {156250000} \
 ] $s_axis_pause
  set s_axis_tx [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_tx ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {156250000} \
 ] $s_axis_tx
  set tx_statistics [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 tx_statistics ]

  # Create ports
  set areset_coreclk_out [ create_bd_port -dir O -type rst areset_coreclk_out ]
  set areset_datapathclk_out [ create_bd_port -dir O -type rst areset_datapathclk_out ]
  set coreclk_out [ create_bd_port -dir O -type clk coreclk_out ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {156250000} \
 ] $coreclk_out
  set dclk [ create_bd_port -dir I -type clk dclk ]
  set gtrxreset_out [ create_bd_port -dir O -type rst gtrxreset_out ]
  set gttxreset_out [ create_bd_port -dir O -type rst gttxreset_out ]
  set mac_rx_configuration_vector [ create_bd_port -dir I -from 79 -to 0 mac_rx_configuration_vector ]
  set mac_status_vector [ create_bd_port -dir O -from 2 -to 0 mac_status_vector ]
  set mac_tx_configuration_vector [ create_bd_port -dir I -from 79 -to 0 mac_tx_configuration_vector ]
  set pcs_pma_configuration_vector [ create_bd_port -dir I -from 535 -to 0 pcs_pma_configuration_vector ]
  set pcs_pma_status_vector [ create_bd_port -dir O -from 447 -to 0 pcs_pma_status_vector ]
  set pcspma_status [ create_bd_port -dir O -from 7 -to 0 pcspma_status ]
  set qpll0lock_out [ create_bd_port -dir O qpll0lock_out ]
  set qpll0outclk_out [ create_bd_port -dir O -type clk qpll0outclk_out ]
  set qpll0outrefclk_out [ create_bd_port -dir O -type clk qpll0outrefclk_out ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {156250000} \
 ] $qpll0outrefclk_out
  set refclk_n [ create_bd_port -dir I refclk_n ]
  set refclk_p [ create_bd_port -dir I refclk_p ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {156250000} \
 ] $refclk_p
  set reset [ create_bd_port -dir I -type rst reset ]
  set reset_counter_done_out [ create_bd_port -dir O reset_counter_done_out ]
  set resetdone_out [ create_bd_port -dir O resetdone_out ]
  set rx_axis_aresetn [ create_bd_port -dir I -type rst rx_axis_aresetn ]
  set rxn [ create_bd_port -dir I rxn ]
  set rxp [ create_bd_port -dir I rxp ]
  set rxrecclk_out [ create_bd_port -dir O -type clk rxrecclk_out ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {156250000} \
 ] $rxrecclk_out
  set signal_detect [ create_bd_port -dir I signal_detect ]
  set sim_speedup_control [ create_bd_port -dir I sim_speedup_control ]
  set tx_axis_aresetn [ create_bd_port -dir I -type rst tx_axis_aresetn ]
  set tx_disable [ create_bd_port -dir O tx_disable ]
  set tx_fault [ create_bd_port -dir I tx_fault ]
  set tx_ifg_delay [ create_bd_port -dir I -from 7 -to 0 tx_ifg_delay ]
  set txn [ create_bd_port -dir O txn ]
  set txp [ create_bd_port -dir O txp ]
  set txuserrdy_out [ create_bd_port -dir O txuserrdy_out ]
  set txusrclk2_out [ create_bd_port -dir O -type clk txusrclk2_out ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {156250000} \
 ] $txusrclk2_out
  set txusrclk_out [ create_bd_port -dir O -type clk txusrclk_out ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {312500000} \
 ] $txusrclk_out

  # Create instance: dcm_locked_driver, and set properties
  set dcm_locked_driver [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 dcm_locked_driver ]
  set_property -dict [ list \
CONFIG.CONST_VAL {1} \
CONFIG.CONST_WIDTH {1} \
 ] $dcm_locked_driver

  # Create instance: pma_pmd_type_driver, and set properties
  set pma_pmd_type_driver [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pma_pmd_type_driver ]
  set_property -dict [ list \
CONFIG.CONST_VAL {5} \
CONFIG.CONST_WIDTH {3} \
 ] $pma_pmd_type_driver

  # Create instance: xmac, and set properties
  set xmac [ create_bd_cell -type ip -vlnv xilinx.com:ip:ten_gig_eth_mac:15.1 xmac ]
  set_property -dict [ list \
CONFIG.Data_Rate {10Gbps} \
CONFIG.Enable_Priority_Flow_Control {false} \
CONFIG.IEEE_1588 {None} \
CONFIG.Low_Latency_32_bit_MAC {64bit} \
CONFIG.Management_Frequency {200.00} \
CONFIG.Management_Interface {false} \
CONFIG.Physical_Interface {Internal} \
CONFIG.Statistics_Gathering {false} \
CONFIG.Timer_Format {Time_of_day} \
CONFIG.gt_type {GTHE3} \
 ] $xmac

  # Create instance: xpcs, and set properties
  set xpcs [ create_bd_cell -type ip -vlnv xilinx.com:ip:ten_gig_eth_pcs_pma:6.0 xpcs ]
  set_property -dict [ list \
CONFIG.DClkRate {100.00} \
CONFIG.IEEE_1588 {None} \
CONFIG.Locations {X1Y16} \
CONFIG.MDIO_Management {false} \
CONFIG.RefClk {clk0} \
CONFIG.RefClkRate {156.25} \
CONFIG.SupportLevel {1} \
CONFIG.Timer_Format {Time_of_day} \
CONFIG.TransceiverControl {false} \
CONFIG.TransceiverInExample {false} \
CONFIG.autonegotiation {false} \
CONFIG.base_kr {BASE-R} \
CONFIG.baser32 {64bit} \
CONFIG.fec {false} \
CONFIG.no_ebuff {false} \
CONFIG.speed10_25 {10Gig} \
CONFIG.vu_gt_type {GTH} \
 ] $xpcs

  # Create interface connections
  connect_bd_intf_net -intf_net s_axis_pause_1 [get_bd_intf_ports s_axis_pause] [get_bd_intf_pins xmac/s_axis_pause]
  connect_bd_intf_net -intf_net s_axis_tx_1 [get_bd_intf_ports s_axis_tx] [get_bd_intf_pins xmac/s_axis_tx]
  connect_bd_intf_net -intf_net xmac_m_axis_rx [get_bd_intf_ports m_axis_rx] [get_bd_intf_pins xmac/m_axis_rx]
  connect_bd_intf_net -intf_net xmac_rx_statistics [get_bd_intf_ports rx_statistics] [get_bd_intf_pins xmac/rx_statistics]
  connect_bd_intf_net -intf_net xmac_tx_statistics [get_bd_intf_ports tx_statistics] [get_bd_intf_pins xmac/tx_statistics]
  connect_bd_intf_net -intf_net xmac_xgmii_xgmac [get_bd_intf_pins xmac/xgmii_xgmac] [get_bd_intf_pins xpcs/xgmii_interface]
  connect_bd_intf_net -intf_net xpcs_core_to_gt_drp [get_bd_intf_pins xpcs/core_to_gt_drp] [get_bd_intf_pins xpcs/gt_drp]

  # Create port connections
  connect_bd_net -net dclk_1 [get_bd_ports dclk] [get_bd_pins xpcs/dclk]
  connect_bd_net -net dcm_locked_driver_dout [get_bd_pins dcm_locked_driver/dout] [get_bd_pins xmac/rx_dcm_locked] [get_bd_pins xmac/tx_dcm_locked]
  connect_bd_net -net mac_rx_configuration_vector_1 [get_bd_ports mac_rx_configuration_vector] [get_bd_pins xmac/rx_configuration_vector]
  connect_bd_net -net mac_tx_configuration_vector_1 [get_bd_ports mac_tx_configuration_vector] [get_bd_pins xmac/tx_configuration_vector]
  connect_bd_net -net pcs_pma_configuration_vector_1 [get_bd_ports pcs_pma_configuration_vector] [get_bd_pins xpcs/configuration_vector]
  connect_bd_net -net pma_pmd_type_driver_dout [get_bd_pins pma_pmd_type_driver/dout] [get_bd_pins xpcs/pma_pmd_type]
  connect_bd_net -net refclk_n_1 [get_bd_ports refclk_n] [get_bd_pins xpcs/refclk_n]
  connect_bd_net -net refclk_p_1 [get_bd_ports refclk_p] [get_bd_pins xpcs/refclk_p]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins xmac/reset] [get_bd_pins xpcs/reset]
  connect_bd_net -net rx_axis_aresetn_1 [get_bd_ports rx_axis_aresetn] [get_bd_pins xmac/rx_axis_aresetn]
  connect_bd_net -net rxn_1 [get_bd_ports rxn] [get_bd_pins xpcs/rxn]
  connect_bd_net -net rxp_1 [get_bd_ports rxp] [get_bd_pins xpcs/rxp]
  connect_bd_net -net signal_detect_1 [get_bd_ports signal_detect] [get_bd_pins xpcs/signal_detect]
  connect_bd_net -net sim_speedup_control_1 [get_bd_ports sim_speedup_control] [get_bd_pins xpcs/sim_speedup_control]
  connect_bd_net -net tx_axis_aresetn_1 [get_bd_ports tx_axis_aresetn] [get_bd_pins xmac/tx_axis_aresetn]
  connect_bd_net -net tx_fault_1 [get_bd_ports tx_fault] [get_bd_pins xpcs/tx_fault]
  connect_bd_net -net tx_ifg_delay_1 [get_bd_ports tx_ifg_delay] [get_bd_pins xmac/tx_ifg_delay]
  connect_bd_net -net xmac_status_vector [get_bd_ports mac_status_vector] [get_bd_pins xmac/status_vector]
  connect_bd_net -net xpcs_areset_coreclk_out [get_bd_ports areset_coreclk_out] [get_bd_pins xpcs/areset_coreclk_out]
  connect_bd_net -net xpcs_areset_datapathclk_out [get_bd_ports areset_datapathclk_out] [get_bd_pins xpcs/areset_datapathclk_out]
  connect_bd_net -net xpcs_core_status [get_bd_ports pcspma_status] [get_bd_pins xpcs/core_status]
  connect_bd_net -net xpcs_coreclk_out [get_bd_ports coreclk_out] [get_bd_pins xpcs/coreclk_out]
  connect_bd_net -net xpcs_drp_req [get_bd_pins xpcs/drp_gnt] [get_bd_pins xpcs/drp_req]
  connect_bd_net -net xpcs_gtrxreset_out [get_bd_ports gtrxreset_out] [get_bd_pins xpcs/gtrxreset_out]
  connect_bd_net -net xpcs_gttxreset_out [get_bd_ports gttxreset_out] [get_bd_pins xpcs/gttxreset_out]
  connect_bd_net -net xpcs_qpll0lock_out [get_bd_ports qpll0lock_out] [get_bd_pins xpcs/qpll0lock_out]
  connect_bd_net -net xpcs_qpll0outclk_out [get_bd_ports qpll0outclk_out] [get_bd_pins xpcs/qpll0outclk_out]
  connect_bd_net -net xpcs_qpll0outrefclk_out [get_bd_ports qpll0outrefclk_out] [get_bd_pins xpcs/qpll0outrefclk_out]
  connect_bd_net -net xpcs_reset_counter_done_out [get_bd_ports reset_counter_done_out] [get_bd_pins xpcs/reset_counter_done_out]
  connect_bd_net -net xpcs_resetdone_out [get_bd_ports resetdone_out] [get_bd_pins xpcs/resetdone_out]
  connect_bd_net -net xpcs_rxrecclk_out [get_bd_ports rxrecclk_out] [get_bd_pins xpcs/rxrecclk_out]
  connect_bd_net -net xpcs_status_vector [get_bd_ports pcs_pma_status_vector] [get_bd_pins xpcs/status_vector]
  connect_bd_net -net xpcs_tx_disable [get_bd_ports tx_disable] [get_bd_pins xpcs/tx_disable]
  connect_bd_net -net xpcs_txn [get_bd_ports txn] [get_bd_pins xpcs/txn]
  connect_bd_net -net xpcs_txp [get_bd_ports txp] [get_bd_pins xpcs/txp]
  connect_bd_net -net xpcs_txuserrdy_out [get_bd_ports txuserrdy_out] [get_bd_pins xpcs/txuserrdy_out]
  connect_bd_net -net xpcs_txusrclk2_out [get_bd_ports txusrclk2_out] [get_bd_pins xmac/rx_clk0] [get_bd_pins xmac/tx_clk0] [get_bd_pins xpcs/txusrclk2_out]
  connect_bd_net -net xpcs_txusrclk_out [get_bd_ports txusrclk_out] [get_bd_pins xpcs/txusrclk_out]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



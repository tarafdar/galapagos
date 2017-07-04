
################################################################
# This is a generated script based on design: shell
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
# source shell_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku115-flva1517-2-e
}


# CHANGE DESIGN NAME HERE
set design_name shell

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

   create_bd_design $design_name

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


# Hierarchical cell: network
proc create_hier_cell_network { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_network() - Empty argument(s)!"}
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
  create_bd_pin -dir I -from 0 -to 0 -type rst reset
  create_bd_pin -dir O rx_statistics_valid
  create_bd_pin -dir O -from 29 -to 0 rx_statistics_vector
  create_bd_pin -dir I rxn
  create_bd_pin -dir I rxp
  create_bd_pin -dir O tx_statistics_valid
  create_bd_pin -dir O -from 25 -to 0 tx_statistics_vector
  create_bd_pin -dir O txn
  create_bd_pin -dir O txp

  # Create instance: axi_10g_ethernet_0, and set properties
  set axi_10g_ethernet_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_10g_ethernet:3.1 axi_10g_ethernet_0 ]
  set_property -dict [ list \
CONFIG.Locations {X1Y16} \
CONFIG.Management_Interface {false} \
CONFIG.SupportLevel {1} \
CONFIG.base_kr {BASE-R} \
 ] $axi_10g_ethernet_0

  # Create instance: gnd, and set properties
  set gnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $gnd

  # Create instance: ifg_delay, and set properties
  set ifg_delay [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 ifg_delay ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {8} \
 ] $ifg_delay

  # Create instance: mac_config_vector, and set properties
  set mac_config_vector [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 mac_config_vector ]
  set_property -dict [ list \
CONFIG.CONST_VAL {22} \
CONFIG.CONST_WIDTH {80} \
 ] $mac_config_vector

  # Create instance: pcs_config_vector, and set properties
  set pcs_config_vector [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pcs_config_vector ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {536} \
 ] $pcs_config_vector

  # Create instance: rx_data_fifo_1, and set properties
  set rx_data_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 rx_data_fifo_1 ]
  set_property -dict [ list \
CONFIG.FIFO_MODE {2} \
 ] $rx_data_fifo_1

  # Create instance: rx_register_slice_1, and set properties
  set rx_register_slice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 rx_register_slice_1 ]
  set_property -dict [ list \
CONFIG.TUSER_WIDTH {0} \
 ] $rx_register_slice_1

  # Create instance: tx_data_fifo_0, and set properties
  set tx_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 tx_data_fifo_0 ]
  set_property -dict [ list \
CONFIG.FIFO_MODE {2} \
 ] $tx_data_fifo_0

  # Create instance: tx_ifg_tuser, and set properties
  set tx_ifg_tuser [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 tx_ifg_tuser ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {16} \
 ] $tx_ifg_tuser

  # Create instance: tx_register_slice_0, and set properties
  set tx_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 tx_register_slice_0 ]
  set_property -dict [ list \
CONFIG.TUSER_WIDTH {0} \
 ] $tx_register_slice_0

  # Create instance: vcc, and set properties
  set vcc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 vcc ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXIS] [get_bd_intf_pins tx_data_fifo_0/S_AXIS]
  connect_bd_intf_net -intf_net axi_10g_ethernet_0_m_axis_rx [get_bd_intf_pins axi_10g_ethernet_0/m_axis_rx] [get_bd_intf_pins rx_register_slice_1/S_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins tx_data_fifo_0/M_AXIS] [get_bd_intf_pins tx_register_slice_0/S_AXIS]
  connect_bd_intf_net -intf_net axis_register_slice_0_M_AXIS [get_bd_intf_pins axi_10g_ethernet_0/s_axis_tx] [get_bd_intf_pins tx_register_slice_0/M_AXIS]
  connect_bd_intf_net -intf_net axis_register_slice_1_M_AXIS [get_bd_intf_pins rx_data_fifo_1/S_AXIS] [get_bd_intf_pins rx_register_slice_1/M_AXIS]
  connect_bd_intf_net -intf_net rx_data_fifo_1_M_AXIS [get_bd_intf_pins M_AXIS] [get_bd_intf_pins rx_data_fifo_1/M_AXIS]

  # Create port connections
  connect_bd_net -net axi_10g_ethernet_0_resetdone_out [get_bd_pins network_reset_done] [get_bd_pins axi_10g_ethernet_0/resetdone_out]
  connect_bd_net -net axi_10g_ethernet_0_rx_statistics_valid [get_bd_pins rx_statistics_valid] [get_bd_pins axi_10g_ethernet_0/rx_statistics_valid]
  connect_bd_net -net axi_10g_ethernet_0_rx_statistics_vector [get_bd_pins rx_statistics_vector] [get_bd_pins axi_10g_ethernet_0/rx_statistics_vector]
  connect_bd_net -net axi_10g_ethernet_0_tx_statistics_valid [get_bd_pins tx_statistics_valid] [get_bd_pins axi_10g_ethernet_0/tx_statistics_valid]
  connect_bd_net -net axi_10g_ethernet_0_tx_statistics_vector [get_bd_pins tx_statistics_vector] [get_bd_pins axi_10g_ethernet_0/tx_statistics_vector]
  connect_bd_net -net axi_10g_ethernet_0_txn [get_bd_pins txn] [get_bd_pins axi_10g_ethernet_0/txn]
  connect_bd_net -net axi_10g_ethernet_0_txp [get_bd_pins txp] [get_bd_pins axi_10g_ethernet_0/txp]
  connect_bd_net -net axi_10g_ethernet_0_txusrclk2_out [get_bd_pins clk_156] [get_bd_pins axi_10g_ethernet_0/txusrclk2_out] [get_bd_pins rx_data_fifo_1/s_axis_aclk] [get_bd_pins rx_register_slice_1/aclk] [get_bd_pins tx_data_fifo_0/s_axis_aclk] [get_bd_pins tx_register_slice_0/aclk]
  connect_bd_net -net dclk_1 [get_bd_pins clk_100] [get_bd_pins axi_10g_ethernet_0/dclk]
  connect_bd_net -net gnd_dout [get_bd_pins axi_10g_ethernet_0/s_axis_pause_tvalid] [get_bd_pins axi_10g_ethernet_0/sim_speedup_control] [get_bd_pins axi_10g_ethernet_0/tx_fault] [get_bd_pins gnd/dout]
  connect_bd_net -net ifg_delay_dout [get_bd_pins axi_10g_ethernet_0/tx_ifg_delay] [get_bd_pins ifg_delay/dout]
  connect_bd_net -net mac_config_vector_dout [get_bd_pins axi_10g_ethernet_0/mac_rx_configuration_vector] [get_bd_pins axi_10g_ethernet_0/mac_tx_configuration_vector] [get_bd_pins mac_config_vector/dout]
  connect_bd_net -net pcs_config_vector_dout [get_bd_pins axi_10g_ethernet_0/pcs_pma_configuration_vector] [get_bd_pins pcs_config_vector/dout]
  connect_bd_net -net refclk_n_1 [get_bd_pins refclk_n] [get_bd_pins axi_10g_ethernet_0/refclk_n]
  connect_bd_net -net refclk_p_1 [get_bd_pins refclk_p] [get_bd_pins axi_10g_ethernet_0/refclk_p]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins axi_10g_ethernet_0/reset]
  connect_bd_net -net rxn_1 [get_bd_pins rxn] [get_bd_pins axi_10g_ethernet_0/rxn]
  connect_bd_net -net rxp_1 [get_bd_pins rxp] [get_bd_pins axi_10g_ethernet_0/rxp]
  connect_bd_net -net tx_axis_aresetn_1 [get_bd_pins aresetn] [get_bd_pins axi_10g_ethernet_0/rx_axis_aresetn] [get_bd_pins axi_10g_ethernet_0/tx_axis_aresetn] [get_bd_pins rx_data_fifo_1/s_axis_aresetn] [get_bd_pins rx_register_slice_1/aresetn] [get_bd_pins tx_data_fifo_0/s_axis_aresetn] [get_bd_pins tx_register_slice_0/aresetn]
  connect_bd_net -net tx_ifg_tuser_dout [get_bd_pins axi_10g_ethernet_0/s_axis_pause_tdata] [get_bd_pins tx_ifg_tuser/dout]
  connect_bd_net -net vcc_dout [get_bd_pins axi_10g_ethernet_0/signal_detect] [get_bd_pins vcc/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
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
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
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

# Hierarchical cell: control
proc create_hier_cell_control { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_control() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M03_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 packetIn
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 packetOut

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 -type rst bus_struct_reset
  create_bd_pin -dir I -type clk clk100
  create_bd_pin -dir I -type clk clk156
  create_bd_pin -dir I -type rst ext_reset_in

  # Create instance: axiStreamGate_0, and set properties
  set axiStreamGate_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:axiStreamGate:1.0 axiStreamGate_0 ]

  # Create instance: axi_hwicap_0, and set properties
  set axi_hwicap_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_hwicap:3.0 axi_hwicap_0 ]

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]
  set_property -dict [ list \
CONFIG.C_USE_UART {1} \
 ] $mdm_1

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {4} \
 ] $microblaze_0_axi_periph

  # Create instance: rst_clk_wiz_0_100M, and set properties
  set rst_clk_wiz_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_0_100M ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M03_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins DLMB] [get_bd_intf_pins microblaze_0/DLMB]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins ILMB] [get_bd_intf_pins microblaze_0/ILMB]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins packetIn] [get_bd_intf_pins axiStreamGate_0/packetIn]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins packetOut] [get_bd_intf_pins axiStreamGate_0/packetOut]
  connect_bd_intf_net -intf_net mdm_1_MBDEBUG_0 [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins mdm_1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_hwicap_0/S_AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axiStreamGate_0/s_axi_AXILiteS] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]

  # Create port connections
  connect_bd_net -net Clk_1 [get_bd_pins clk100] [get_bd_pins axi_hwicap_0/icap_clk] [get_bd_pins axi_hwicap_0/s_axi_aclk] [get_bd_pins mdm_1/S_AXI_ACLK] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins rst_clk_wiz_0_100M/slowest_sync_clk]
  connect_bd_net -net M02_ACLK_1 [get_bd_pins clk156] [get_bd_pins axiStreamGate_0/ap_clk] [get_bd_pins microblaze_0_axi_periph/M02_ACLK]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins axiStreamGate_0/ap_rst_n] [get_bd_pins axi_hwicap_0/s_axi_aresetn] [get_bd_pins mdm_1/S_AXI_ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_0_100M/peripheral_aresetn]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins rst_clk_wiz_0_100M/ext_reset_in]
  connect_bd_net -net mdm_1_Debug_SYS_Rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/mb_debug_sys_rst]
  connect_bd_net -net rst_clk_wiz_0_100M_bus_struct_reset [get_bd_pins bus_struct_reset] [get_bd_pins rst_clk_wiz_0_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_0_100M_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_0_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_clk_wiz_0_100M/mb_reset]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: PCIe
proc create_hier_cell_PCIe { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_PCIe() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt

  # Create pins
  create_bd_pin -dir O -type clk axi_aclk
  create_bd_pin -dir O -type rst axi_aresetn
  create_bd_pin -dir I -type rst sys_rst_n

  # Create instance: util_ds_buf, and set properties
  set util_ds_buf [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf

  # Create instance: xdma_0, and set properties
  set xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:3.0 xdma_0 ]
  set_property -dict [ list \
CONFIG.INS_LOSS_NYQ {5} \
CONFIG.axi_data_width {256_bit} \
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

  # Create port connections
  connect_bd_net -net sys_rst_n_1 [get_bd_pins sys_rst_n] [get_bd_pins xdma_0/sys_rst_n]
  connect_bd_net -net util_ds_buf_IBUF_DS_ODIV2 [get_bd_pins util_ds_buf/IBUF_DS_ODIV2] [get_bd_pins xdma_0/sys_clk]
  connect_bd_net -net util_ds_buf_IBUF_OUT [get_bd_pins util_ds_buf/IBUF_OUT] [get_bd_pins xdma_0/sys_clk_gt]
  connect_bd_net -net xdma_0_axi_aclk [get_bd_pins axi_aclk] [get_bd_pins xdma_0/axi_aclk]
  connect_bd_net -net xdma_0_axi_aresetn [get_bd_pins axi_aresetn] [get_bd_pins xdma_0/axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


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
  set M_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {64} \
CONFIG.DATA_WIDTH {256} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_QOS {0} \
CONFIG.HAS_REGION {0} \
CONFIG.NUM_READ_OUTSTANDING {16} \
CONFIG.NUM_WRITE_OUTSTANDING {16} \
CONFIG.PROTOCOL {AXI4} \
 ] $M_AXI
  set M_AXIS [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS ]
  set S_AXIS [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS ]
  set_property -dict [ list \
CONFIG.HAS_TKEEP {1} \
CONFIG.HAS_TLAST {1} \
CONFIG.HAS_TREADY {1} \
CONFIG.HAS_TSTRB {0} \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}} \
CONFIG.TDATA_NUM_BYTES {8} \
CONFIG.TDEST_WIDTH {0} \
CONFIG.TID_WIDTH {0} \
CONFIG.TUSER_WIDTH {0} \
 ] $S_AXIS
  set diff_clock_rtl [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 diff_clock_rtl ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
 ] $diff_clock_rtl
  set pcie_7x_mgt_rtl [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_7x_mgt_rtl ]

  # Create ports
  set ARESETN [ create_bd_port -dir O -from 0 -to 0 ARESETN ]
  set CLK_CONTROL [ create_bd_port -dir O -type clk CLK_CONTROL ]
  set CLK_DATA [ create_bd_port -dir O -type clk CLK_DATA ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_BUSIF {M_AXIS:S_AXIS} \
 ] $CLK_DATA
  set perst_n [ create_bd_port -dir I perst_n ]
  set refclk200 [ create_bd_port -dir I -type clk refclk200 ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {200000000} \
 ] $refclk200
  set refclk_n [ create_bd_port -dir I refclk_n ]
  set refclk_p [ create_bd_port -dir I refclk_p ]
  set rxn [ create_bd_port -dir I rxn ]
  set rxp [ create_bd_port -dir I rxp ]
  set sfp_tx_disable [ create_bd_port -dir O -from 1 -to 0 sfp_tx_disable ]
  set txn [ create_bd_port -dir O txn ]
  set txp [ create_bd_port -dir O txp ]

  # Create instance: PCIe
  create_hier_cell_PCIe [current_bd_instance .] PCIe

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]
  set_property -dict [ list \
CONFIG.DATA_WIDTH {64} \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
CONFIG.NUM_MI {2} \
CONFIG.NUM_SI {2} \
 ] $axi_interconnect_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $blk_mem_gen_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.use_bram_block.VALUE_SRC {DEFAULT} \
 ] $blk_mem_gen_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {50.0} \
CONFIG.CLKOUT1_DRIVES {Buffer} \
CONFIG.CLKOUT1_JITTER {112.316} \
CONFIG.CLKOUT1_PHASE_ERROR {89.971} \
CONFIG.CLKOUT2_DRIVES {Buffer} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.MMCM_CLKFBOUT_MULT_F {5.000} \
CONFIG.MMCM_CLKIN1_PERIOD {5.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_JITTER.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_PHASE_ERROR.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT2_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT3_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT4_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT5_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT6_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT7_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKFBOUT_MULT_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F.VALUE_SRC {DEFAULT} \
 ] $clk_wiz_0

  # Create instance: control
  create_hier_cell_control [current_bd_instance .] control

  # Create instance: gnd, and set properties
  set gnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {2} \
 ] $gnd

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: network
  create_hier_cell_network [current_bd_instance .] network

  # Create instance: reverseEndian64_0, and set properties
  set reverseEndian64_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:reverseEndian64:1.0 reverseEndian64_0 ]

  # Create instance: reverseEndian64_1, and set properties
  set reverseEndian64_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:reverseEndian64:1.0 reverseEndian64_1 ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
CONFIG.C_SIZE {1} \
 ] $util_vector_logic_2

  # Create interface connections
  connect_bd_intf_net -intf_net PCIe_M_AXI [get_bd_intf_pins PCIe/M_AXI] [get_bd_intf_pins axi_interconnect_0/S01_AXI]
  connect_bd_intf_net -intf_net PCIe_pcie_mgt [get_bd_intf_ports pcie_7x_mgt_rtl] [get_bd_intf_pins PCIe/pcie_mgt]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins control/M03_AXI]
  connect_bd_intf_net -intf_net S_AXIS_1 [get_bd_intf_ports S_AXIS] [get_bd_intf_pins reverseEndian64_0/stream_in]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_ports M_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net control_DLMB [get_bd_intf_pins control/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net control_ILMB [get_bd_intf_pins control/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net control_packetOut [get_bd_intf_pins control/packetOut] [get_bd_intf_pins reverseEndian64_1/stream_in]
  connect_bd_intf_net -intf_net diff_clock_rtl_1 [get_bd_intf_ports diff_clock_rtl] [get_bd_intf_pins PCIe/CLK_IN_D]
  connect_bd_intf_net -intf_net network_M_AXIS [get_bd_intf_pins control/packetIn] [get_bd_intf_pins network/M_AXIS]
  connect_bd_intf_net -intf_net reverseEndian64_0_stream_out [get_bd_intf_pins network/S_AXIS] [get_bd_intf_pins reverseEndian64_0/stream_out]
  connect_bd_intf_net -intf_net reverseEndian64_1_stream_out [get_bd_intf_ports M_AXIS] [get_bd_intf_pins reverseEndian64_1/stream_out]

  # Create port connections
  connect_bd_net -net PCIe_axi_aclk [get_bd_ports CLK_CONTROL] [get_bd_pins PCIe/axi_aclk] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK]
  connect_bd_net -net PCIe_axi_aresetn [get_bd_pins PCIe/axi_aresetn] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net SYS_Rst_1 [get_bd_pins control/bus_struct_reset] [get_bd_pins microblaze_0_local_memory/SYS_Rst]
  connect_bd_net -net gnd_dout [get_bd_ports sfp_tx_disable] [get_bd_pins gnd/dout]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins control/clk100] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins network/clk_100]
  connect_bd_net -net network_clk_156 [get_bd_ports CLK_DATA] [get_bd_pins control/clk156] [get_bd_pins network/clk_156] [get_bd_pins reverseEndian64_0/ap_clk] [get_bd_pins reverseEndian64_1/ap_clk]
  connect_bd_net -net network_network_reset_done [get_bd_pins network/network_reset_done] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net network_txn [get_bd_ports txn] [get_bd_pins network/txn]
  connect_bd_net -net network_txp [get_bd_ports txp] [get_bd_pins network/txp]
  connect_bd_net -net perst_n_1 [get_bd_ports perst_n] [get_bd_pins PCIe/sys_rst_n] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net refclk200_1 [get_bd_ports refclk200] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net refclk_n_1 [get_bd_ports refclk_n] [get_bd_pins network/refclk_n]
  connect_bd_net -net refclk_p_1 [get_bd_ports refclk_p] [get_bd_pins network/refclk_p]
  connect_bd_net -net rxn_1 [get_bd_ports rxn] [get_bd_pins network/rxn]
  connect_bd_net -net rxp_1 [get_bd_ports rxp] [get_bd_pins network/rxp]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins network/reset] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_ports ARESETN] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins control/ext_reset_in] [get_bd_pins network/aresetn] [get_bd_pins reverseEndian64_0/ap_rst_n] [get_bd_pins reverseEndian64_1/ap_rst_n] [get_bd_pins util_vector_logic_2/Res]

  # Create address segments
  create_bd_addr_seg -range 0x00100000 -offset 0x00000000 [get_bd_addr_spaces PCIe/xdma_0/M_AXI] [get_bd_addr_segs M_AXI/Reg] SEG_M_AXI_Reg
  create_bd_addr_seg -range 0x00100000 -offset 0xC0000000 [get_bd_addr_spaces PCIe/xdma_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces control/microblaze_0/Data] [get_bd_addr_segs control/axiStreamGate_0/s_axi_AXILiteS/Reg] SEG_axiStreamGate_0_Reg
  create_bd_addr_seg -range 0x00100000 -offset 0xC0000000 [get_bd_addr_spaces control/microblaze_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x40200000 [get_bd_addr_spaces control/microblaze_0/Data] [get_bd_addr_segs control/axi_hwicap_0/S_AXI_LITE/Reg] SEG_axi_hwicap_0_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0x00000000 [get_bd_addr_spaces control/microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00002000 -offset 0x00000000 [get_bd_addr_spaces control/microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces control/microblaze_0/Data] [get_bd_addr_segs control/mdm_1/S_AXI/Reg] SEG_mdm_1_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



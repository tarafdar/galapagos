
################################################################
# This is a generated script based on design: TCP_bridge
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
set scripts_vivado_version 2018.1
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
# source TCP_bridge_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku115-flva1517-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name TCP_bridge

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



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

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
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 DDR ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.HAS_REGION {0} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4} \
   ] $DDR
  set Eth_M [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 Eth_M ]
  set Eth_S [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 Eth_S ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {8} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $Eth_S
  set M_AXIS_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_0 ]
  set S_AXIS_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_0 ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {8} \
   CONFIG.TDEST_WIDTH {16} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $S_AXIS_0
  set ip_table_V_PORTA_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:bram_rtl:1.0 ip_table_V_PORTA_0 ]
  set_property -dict [ list \
   CONFIG.MASTER_TYPE {BRAM_CTRL} \
   ] $ip_table_V_PORTA_0
  set ip_table_V_PORTB_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:bram_rtl:1.0 ip_table_V_PORTB_0 ]
  set_property -dict [ list \
   CONFIG.MASTER_TYPE {BRAM_CTRL} \
   ] $ip_table_V_PORTB_0

  # Create ports
  set aclk_0 [ create_bd_port -dir I -type clk aclk_0 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {Eth_S:S_AXIS_0:M_AXIS_0:DDR:Eth_M} \
 ] $aclk_0
  set aresetn_0 [ create_bd_port -dir I -type rst aresetn_0 ]
  set myGateway_0 [ create_bd_port -dir I -from 31 -to 0 myGateway_0 ]
  set myIpAddress_0 [ create_bd_port -dir I -from 31 -to 0 myIpAddress_0 ]
  set myMacAddress_0 [ create_bd_port -dir I -from 47 -to 0 myMacAddress_0 ]
  set mySubnet_0 [ create_bd_port -dir I -from 31 -to 0 mySubnet_0 ]

  # Create instance: TCP_output_bridge_0, and set properties
  set TCP_output_bridge_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:TCP_output_bridge:1.0 TCP_output_bridge_0 ]

  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_0 ]

  # Create instance: axis_data_fifo_1, and set properties
  set axis_data_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_1 ]

  # Create instance: tcp_ip_wrapper_0, and set properties
  set tcp_ip_wrapper_0 [ create_bd_cell -type ip -vlnv dlyma.org:dlyma:tcp_ip_wrapper:1.4 tcp_ip_wrapper_0 ]
  set_property -dict [ list \
   CONFIG.UDP_ENABLE {false} \
 ] $tcp_ip_wrapper_0

  # Create interface connections
  connect_bd_intf_net -intf_net AXI_S_Stream_0_1 [get_bd_intf_ports Eth_S] [get_bd_intf_pins tcp_ip_wrapper_0/AXI_S_Stream]
  connect_bd_intf_net -intf_net S_AXIS_0_1 [get_bd_intf_ports S_AXIS_0] [get_bd_intf_pins axis_data_fifo_0/S_AXIS]
  connect_bd_intf_net -intf_net TCP_output_bridge_0_ip_table_V_PORTA [get_bd_intf_ports ip_table_V_PORTA_0] [get_bd_intf_pins TCP_output_bridge_0/ip_table_V_PORTA]
  connect_bd_intf_net -intf_net TCP_output_bridge_0_ip_table_V_PORTB [get_bd_intf_ports ip_table_V_PORTB_0] [get_bd_intf_pins TCP_output_bridge_0/ip_table_V_PORTB]
  connect_bd_intf_net -intf_net TCP_output_bridge_0_m_axis_listen_port [get_bd_intf_pins TCP_output_bridge_0/m_axis_listen_port] [get_bd_intf_pins tcp_ip_wrapper_0/s_axis_listen_port]
  connect_bd_intf_net -intf_net TCP_output_bridge_0_m_axis_open_connection [get_bd_intf_pins TCP_output_bridge_0/m_axis_open_connection] [get_bd_intf_pins tcp_ip_wrapper_0/s_axis_open_connection]
  connect_bd_intf_net -intf_net TCP_output_bridge_0_m_axis_read_package [get_bd_intf_pins TCP_output_bridge_0/m_axis_read_package] [get_bd_intf_pins tcp_ip_wrapper_0/s_axis_read_package]
  connect_bd_intf_net -intf_net TCP_output_bridge_0_m_axis_tx_data [get_bd_intf_pins TCP_output_bridge_0/m_axis_tx_data] [get_bd_intf_pins tcp_ip_wrapper_0/s_axis_tx_data]
  connect_bd_intf_net -intf_net TCP_output_bridge_0_m_axis_tx_metadata [get_bd_intf_pins TCP_output_bridge_0/m_axis_tx_metadata] [get_bd_intf_pins tcp_ip_wrapper_0/s_axis_tx_metadata]
  connect_bd_intf_net -intf_net TCP_output_bridge_0_stream_out_V [get_bd_intf_pins TCP_output_bridge_0/stream_out_V] [get_bd_intf_pins axis_data_fifo_1/S_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins TCP_output_bridge_0/stream_in_V] [get_bd_intf_pins axis_data_fifo_0/M_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_1_M_AXIS [get_bd_intf_ports M_AXIS_0] [get_bd_intf_pins axis_data_fifo_1/M_AXIS]
  connect_bd_intf_net -intf_net tcp_ip_wrapper_0_AXI_M_Stream [get_bd_intf_ports Eth_M] [get_bd_intf_pins tcp_ip_wrapper_0/AXI_M_Stream]
  connect_bd_intf_net -intf_net tcp_ip_wrapper_0_M00_AXI [get_bd_intf_ports DDR] [get_bd_intf_pins tcp_ip_wrapper_0/M00_AXI]
  connect_bd_intf_net -intf_net tcp_ip_wrapper_0_m_axis_listen_port_status [get_bd_intf_pins TCP_output_bridge_0/s_axis_listen_port_status] [get_bd_intf_pins tcp_ip_wrapper_0/m_axis_listen_port_status]
  connect_bd_intf_net -intf_net tcp_ip_wrapper_0_m_axis_notifications [get_bd_intf_pins TCP_output_bridge_0/s_axis_notifications] [get_bd_intf_pins tcp_ip_wrapper_0/m_axis_notifications]
  connect_bd_intf_net -intf_net tcp_ip_wrapper_0_m_axis_open_status [get_bd_intf_pins TCP_output_bridge_0/s_axis_open_status] [get_bd_intf_pins tcp_ip_wrapper_0/m_axis_open_status]
  connect_bd_intf_net -intf_net tcp_ip_wrapper_0_m_axis_rx_data [get_bd_intf_pins TCP_output_bridge_0/s_axis_rx_data] [get_bd_intf_pins tcp_ip_wrapper_0/m_axis_rx_data]
  connect_bd_intf_net -intf_net tcp_ip_wrapper_0_m_axis_rx_metadata [get_bd_intf_pins TCP_output_bridge_0/s_axis_rx_metadata] [get_bd_intf_pins tcp_ip_wrapper_0/m_axis_rx_metadata]
  connect_bd_intf_net -intf_net tcp_ip_wrapper_0_m_axis_tx_status [get_bd_intf_pins TCP_output_bridge_0/s_axis_tx_status] [get_bd_intf_pins tcp_ip_wrapper_0/m_axis_tx_status]

  # Create port connections
  connect_bd_net -net aclk_0_1 [get_bd_ports aclk_0] [get_bd_pins TCP_output_bridge_0/aclk] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins axis_data_fifo_1/s_axis_aclk] [get_bd_pins tcp_ip_wrapper_0/aclk]
  connect_bd_net -net aresetn_0_1 [get_bd_ports aresetn_0] [get_bd_pins TCP_output_bridge_0/aresetn] [get_bd_pins axis_data_fifo_0/s_axis_aresetn] [get_bd_pins axis_data_fifo_1/s_axis_aresetn] [get_bd_pins tcp_ip_wrapper_0/aresetn]
  connect_bd_net -net myGateway_0_1 [get_bd_ports myGateway_0] [get_bd_pins tcp_ip_wrapper_0/myGateway]
  connect_bd_net -net myIpAddress_0_1 [get_bd_ports myIpAddress_0] [get_bd_pins tcp_ip_wrapper_0/myIpAddress]
  connect_bd_net -net myMacAddress_0_1 [get_bd_ports myMacAddress_0] [get_bd_pins tcp_ip_wrapper_0/myMacAddress]
  connect_bd_net -net mySubnet_0_1 [get_bd_ports mySubnet_0] [get_bd_pins tcp_ip_wrapper_0/mySubnet]

  # Create address segments
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces tcp_ip_wrapper_0/M00_AXI] [get_bd_addr_segs DDR/Reg] SEG_M00_AXI_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""




################################################################
# This is a generated script based on design: pr
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
# source pr_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku115-flva1517-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name pr

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

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axis_data_fifo:1.1\
xilinx.com:user:cnn_dataflow_v2_0:2.0\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
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
  set M_AXIS [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   ] $M_AXIS
  set S_AXIS [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS ]
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
   ] $S_AXIS
  set S_AXI_CONTROL [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CONTROL ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {16} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {156250000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_CONTROL
  set S_AXI_MEM [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MEM ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {156250000} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4} \
   ] $S_AXI_MEM

  # Create ports
  set ARESETN [ create_bd_port -dir I -type rst ARESETN ]
  set CLK [ create_bd_port -dir I -type clk CLK ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S_AXIS:M_AXIS:S_AXI_MEM:S_AXI_CONTROL} \
   CONFIG.FREQ_HZ {156250000} \
 ] $CLK

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {4} \
 ] $axi_interconnect_0

  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_0 ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.TDATA_NUM_BYTES {8} \
 ] $axis_data_fifo_0

  # Create instance: cnn_dataflow_v2_0_0, and set properties
  set cnn_dataflow_v2_0_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:cnn_dataflow_v2_0:2.0 cnn_dataflow_v2_0_0 ]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /cnn_dataflow_v2_0_0/m_axi_cmd]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /cnn_dataflow_v2_0_0/m_axi_ifm]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /cnn_dataflow_v2_0_0/m_axi_ofm]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /cnn_dataflow_v2_0_0/m_axi_weight]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /cnn_dataflow_v2_0_0/s_axi_control]

  # Create interface connections
  connect_bd_intf_net -intf_net S02_AXI_1 [get_bd_intf_pins axi_interconnect_0/S02_AXI] [get_bd_intf_pins cnn_dataflow_v2_0_0/m_axi_ofm]
  connect_bd_intf_net -intf_net S_AXIS_1 [get_bd_intf_ports S_AXIS] [get_bd_intf_pins axis_data_fifo_0/S_AXIS]
  connect_bd_intf_net -intf_net S_AXI_CONTROL_1 [get_bd_intf_ports S_AXI_CONTROL] [get_bd_intf_pins cnn_dataflow_v2_0_0/s_axi_control]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_ports S_AXI_MEM] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_ports M_AXIS] [get_bd_intf_pins axis_data_fifo_0/M_AXIS]
  connect_bd_intf_net -intf_net cnn_dataflow_v2_0_0_m_axi_cmd [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins cnn_dataflow_v2_0_0/m_axi_cmd]
  connect_bd_intf_net -intf_net cnn_dataflow_v2_0_0_m_axi_ifm [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins cnn_dataflow_v2_0_0/m_axi_ifm]
  connect_bd_intf_net -intf_net cnn_dataflow_v2_0_0_m_axi_weight [get_bd_intf_pins axi_interconnect_0/S03_AXI] [get_bd_intf_pins cnn_dataflow_v2_0_0/m_axi_weight]

  # Create port connections
  connect_bd_net -net s_axi_aresetn_1 [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_0/S02_ARESETN] [get_bd_pins axi_interconnect_0/S03_ARESETN] [get_bd_pins axis_data_fifo_0/s_axis_aresetn] [get_bd_pins cnn_dataflow_v2_0_0/i_rst_n] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_cmd_aresetn] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_ifm_aresetn] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_ofm_aresetn] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_weight_aresetn] [get_bd_pins cnn_dataflow_v2_0_0/s_axi_control_aresetn]
  connect_bd_net -net s_axis_aclk_1 [get_bd_ports CLK] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_interconnect_0/S02_ACLK] [get_bd_pins axi_interconnect_0/S03_ACLK] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins cnn_dataflow_v2_0_0/i_clk] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_cmd_aclk] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_ifm_aclk] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_ofm_aclk] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_weight_aclk] [get_bd_pins cnn_dataflow_v2_0_0/s_axi_control_aclk]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces cnn_dataflow_v2_0_0/m_axi_cmd] [get_bd_addr_segs S_AXI_MEM/Reg] SEG_S_AXI_MEM_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces cnn_dataflow_v2_0_0/m_axi_ifm] [get_bd_addr_segs S_AXI_MEM/Reg] SEG_S_AXI_MEM_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces cnn_dataflow_v2_0_0/m_axi_ofm] [get_bd_addr_segs S_AXI_MEM/Reg] SEG_S_AXI_MEM_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces cnn_dataflow_v2_0_0/m_axi_weight] [get_bd_addr_segs S_AXI_MEM/Reg] SEG_S_AXI_MEM_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces S_AXI_CONTROL] [get_bd_addr_segs cnn_dataflow_v2_0_0/s_axi_control/reg0] SEG_cnn_dataflow_v2_0_0_reg0


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################


common::send_msg_id "BD_TCL-2000" "CRITICAL WARNING" "This Tcl script was generated from a block design that is out-of-date/locked. It is possible that design <$design_name> may result in errors during construction."

create_root_design ""


common::send_msg_id "BD_TCL-1000" "WARNING" "This Tcl script was generated from a block design that has not been validated. It is possible that design <$design_name> may result in errors during validation."


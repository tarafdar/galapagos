
################################################################
# This is a generated script based on design: dariusMPI_debug
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

#################################################################
## Check if script is running in correct Vivado version.
#################################################################
#set scripts_vivado_version 2018.1
#set current_vivado_version [version -short]
#
#if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
#   puts ""
#   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}
#
#   return 1
#}
#
################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source dariusMPI_debug_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku115-flva1517-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name dariusMPI_debug

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
xilinx.com:hls:dariusController:1.0\
xilinx.com:user:darius_v2_0:1.0\
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
  set M_AXI_MEM [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_MEM ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {33} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {156250000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4} \
   ] $M_AXI_MEM
  set stream_in [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 stream_in ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 40} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
   CONFIG.TDATA_NUM_BYTES {8} \
   CONFIG.TDEST_WIDTH {8} \
   CONFIG.TID_WIDTH {8} \
   CONFIG.TUSER_WIDTH {40} \
   ] $stream_in
  set stream_out [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 stream_out ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   ] $stream_out

  # Create ports
  set ARESETN [ create_bd_port -dir I -type rst ARESETN ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $ARESETN
  set CLK [ create_bd_port -dir I -type clk CLK ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {ARESETN} \
   CONFIG.FREQ_HZ {156250000} \
 ] $CLK
  set id_in_V_0 [ create_bd_port -dir I -from 15 -to 0 id_in_V_0 ]

  # Create instance: axi_interconnect_control, and set properties
  set axi_interconnect_control [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_control ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $axi_interconnect_control

  # Create instance: axi_interconnect_mem, and set properties
  set axi_interconnect_mem [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_mem ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {5} \
 ] $axi_interconnect_mem

  # Create instance: dariusController_inst, and set properties
  set dariusController_inst [ create_bd_cell -type ip -vlnv xilinx.com:hls:dariusController:1.0 dariusController_inst ]

  # Create instance: darius_inst, and set properties
  set darius_inst [ create_bd_cell -type ip -vlnv xilinx.com:user:darius_v2_0:1.0 darius_inst ]
  set_property -dict [ list \
   CONFIG.C_NUM_OF_COLS {16} \
   CONFIG.C_NUM_OF_ROWS {16} \
   CONFIG.C_XILINX_FPGA_ARCH {UltraScale} \
 ] $darius_inst

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /darius_inst/m_axi_cmd]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /darius_inst/m_axi_ifm]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /darius_inst/m_axi_ofm]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /darius_inst/m_axi_weight]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /darius_inst/s_axi_control]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_interconnect_control_M00_AXI [get_bd_intf_pins axi_interconnect_control/M00_AXI] [get_bd_intf_pins darius_inst/s_axi_control]
  connect_bd_intf_net -intf_net axi_interconnect_mem_M00_AXI [get_bd_intf_ports M_AXI_MEM] [get_bd_intf_pins axi_interconnect_mem/M00_AXI]
  connect_bd_intf_net -intf_net dariusController_inst_M_AXI_DARIUS_DRIVER [get_bd_intf_pins axi_interconnect_control/S00_AXI] [get_bd_intf_pins dariusController_inst/M_AXI_DARIUS_DRIVER]
  connect_bd_intf_net -intf_net dariusController_inst_M_AXI_MEM [get_bd_intf_pins axi_interconnect_mem/S00_AXI] [get_bd_intf_pins dariusController_inst/M_AXI_MEM]
  connect_bd_intf_net -intf_net dariusController_inst_stream_out_V [get_bd_intf_ports stream_out] [get_bd_intf_pins dariusController_inst/stream_out_V]
  connect_bd_intf_net -intf_net darius_inst_m_axi_cmd [get_bd_intf_pins axi_interconnect_mem/S01_AXI] [get_bd_intf_pins darius_inst/m_axi_cmd]
  connect_bd_intf_net -intf_net darius_inst_m_axi_ifm [get_bd_intf_pins axi_interconnect_mem/S02_AXI] [get_bd_intf_pins darius_inst/m_axi_ifm]
  connect_bd_intf_net -intf_net darius_inst_m_axi_ofm [get_bd_intf_pins axi_interconnect_mem/S03_AXI] [get_bd_intf_pins darius_inst/m_axi_ofm]
  connect_bd_intf_net -intf_net darius_inst_m_axi_weight [get_bd_intf_pins axi_interconnect_mem/S04_AXI] [get_bd_intf_pins darius_inst/m_axi_weight]
  connect_bd_intf_net -intf_net stream_in_V_0_1 [get_bd_intf_ports stream_in] [get_bd_intf_pins dariusController_inst/stream_in_V]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_control/ARESETN] [get_bd_pins axi_interconnect_control/M00_ARESETN] [get_bd_pins axi_interconnect_control/S00_ARESETN] [get_bd_pins axi_interconnect_mem/ARESETN] [get_bd_pins axi_interconnect_mem/M00_ARESETN] [get_bd_pins axi_interconnect_mem/S00_ARESETN] [get_bd_pins axi_interconnect_mem/S01_ARESETN] [get_bd_pins axi_interconnect_mem/S02_ARESETN] [get_bd_pins axi_interconnect_mem/S03_ARESETN] [get_bd_pins axi_interconnect_mem/S04_ARESETN] [get_bd_pins dariusController_inst/aresetn] [get_bd_pins darius_inst/i_rst_n] [get_bd_pins darius_inst/m_axi_cmd_aresetn] [get_bd_pins darius_inst/m_axi_ifm_aresetn] [get_bd_pins darius_inst/m_axi_ofm_aresetn] [get_bd_pins darius_inst/m_axi_weight_aresetn] [get_bd_pins darius_inst/s_axi_control_aresetn]
  connect_bd_net -net CLK_1 [get_bd_ports CLK] [get_bd_pins axi_interconnect_control/ACLK] [get_bd_pins axi_interconnect_control/M00_ACLK] [get_bd_pins axi_interconnect_control/S00_ACLK] [get_bd_pins axi_interconnect_mem/ACLK] [get_bd_pins axi_interconnect_mem/M00_ACLK] [get_bd_pins axi_interconnect_mem/S00_ACLK] [get_bd_pins axi_interconnect_mem/S01_ACLK] [get_bd_pins axi_interconnect_mem/S02_ACLK] [get_bd_pins axi_interconnect_mem/S03_ACLK] [get_bd_pins axi_interconnect_mem/S04_ACLK] [get_bd_pins dariusController_inst/aclk] [get_bd_pins darius_inst/i_clk] [get_bd_pins darius_inst/m_axi_cmd_aclk] [get_bd_pins darius_inst/m_axi_ifm_aclk] [get_bd_pins darius_inst/m_axi_ofm_aclk] [get_bd_pins darius_inst/m_axi_weight_aclk] [get_bd_pins darius_inst/s_axi_control_aclk]
  connect_bd_net -net id_in_V_0_1 [get_bd_ports id_in_V_0] [get_bd_pins dariusController_inst/id_in_V]

  # Create address segments
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces dariusController_inst/Data_M_AXI_MEM] [get_bd_addr_segs M_AXI_MEM/Reg] SEG_M_AXI_MEM_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces dariusController_inst/Data_M_AXI_DARIUS_DRIVER] [get_bd_addr_segs darius_inst/s_axi_control/reg0] SEG_cnn_dataflow_v2_0_inst_reg0
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces darius_inst/m_axi_cmd] [get_bd_addr_segs M_AXI_MEM/Reg] SEG_M_AXI_MEM_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces darius_inst/m_axi_ifm] [get_bd_addr_segs M_AXI_MEM/Reg] SEG_M_AXI_MEM_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces darius_inst/m_axi_ofm] [get_bd_addr_segs M_AXI_MEM/Reg] SEG_M_AXI_MEM_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces darius_inst/m_axi_weight] [get_bd_addr_segs M_AXI_MEM/Reg] SEG_M_AXI_MEM_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


common::send_msg_id "BD_TCL-1000" "WARNING" "This Tcl script was generated from a block design that has not been validated. It is possible that design <$design_name> may result in errors during validation."


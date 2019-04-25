
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
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART tul.com.tw:pynq-z2:part0:1.0 [current_project]
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
xilinx.com:ip:axi_datamover:5.1\
xilinx.com:user:cnn_dataflow_v2_0:2.0\
xilinx.com:hls:dariusController_raw:1.0\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:system_ila:1.1\
xilinx.com:ip:xlconstant:1.1\
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
  set M_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {156250000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4} \
   ] $M_AXI
  set s_axi [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {5} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {156250000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {0} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $s_axi
  set stream_in [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 stream_in ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
   CONFIG.TDATA_NUM_BYTES {8} \
   CONFIG.TDEST_WIDTH {8} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $stream_in
  set stream_out [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 stream_out ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   ] $stream_out

  # Create ports
  set CLK [ create_bd_port -dir I -type clk CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
 ] $CLK
  set RESETN [ create_bd_port -dir I -type rst RESETN ]

  # Create instance: axi_datamover_0, and set properties
  set axi_datamover_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_datamover:5.1 axi_datamover_0 ]
  set_property -dict [ list \
   CONFIG.c_dummy {1} \
   CONFIG.c_m_axi_mm2s_data_width {64} \
   CONFIG.c_m_axis_mm2s_tdata_width {64} \
   CONFIG.c_mm2s_burst_size {8} \
 ] $axi_datamover_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {6} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.S02_HAS_DATA_FIFO {2} \
   CONFIG.S03_HAS_DATA_FIFO {2} \
   CONFIG.S04_HAS_DATA_FIFO {2} \
   CONFIG.S05_HAS_DATA_FIFO {2} \
   CONFIG.S06_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {1} \
 ] $axi_interconnect_0

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
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /cnn_dataflow_v2_0_0/s_axi_control]

  # Create instance: dariusController_raw_0, and set properties
  set dariusController_raw_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:dariusController_raw:1.0 dariusController_raw_0 ]

  # Create instance: dariusController_raw_0_axi_periph, and set properties
  set dariusController_raw_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 dariusController_raw_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $dariusController_raw_0_axi_periph

  # Create instance: rst_CLK_156M, and set properties
  set rst_CLK_156M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_CLK_156M ]

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {47} \
   CONFIG.C_NUM_MONITOR_SLOTS {7} \
 ] $system_ila_0

  # Create instance: system_ila_1, and set properties
  set system_ila_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_1 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {6} \
   CONFIG.C_NUM_MONITOR_SLOTS {6} \
   CONFIG.C_SLOT {5} \
   CONFIG.C_SLOT_0_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_1_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_2_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_3_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_4_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_5_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
 ] $system_ila_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_datamover_0_M_AXIS_MM2S [get_bd_intf_pins axi_datamover_0/M_AXIS_MM2S] [get_bd_intf_pins dariusController_raw_0/axis_mm2s]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_datamover_0_M_AXIS_MM2S] [get_bd_intf_pins axi_datamover_0/M_AXIS_MM2S] [get_bd_intf_pins system_ila_1/SLOT_5_AXIS]
  connect_bd_intf_net -intf_net axi_datamover_0_M_AXI_MM2S [get_bd_intf_pins axi_datamover_0/M_AXI_MM2S] [get_bd_intf_pins axi_interconnect_0/S04_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_datamover_0_M_AXI_MM2S] [get_bd_intf_pins axi_datamover_0/M_AXI_MM2S] [get_bd_intf_pins system_ila_0/SLOT_0_AXI]
  connect_bd_intf_net -intf_net axi_datamover_0_M_AXI_S2MM [get_bd_intf_pins axi_datamover_0/M_AXI_S2MM] [get_bd_intf_pins axi_interconnect_0/S05_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_datamover_0_M_AXI_S2MM] [get_bd_intf_pins axi_datamover_0/M_AXI_S2MM] [get_bd_intf_pins system_ila_0/SLOT_1_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_ports M_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_interconnect_0_M00_AXI] [get_bd_intf_ports M_AXI] [get_bd_intf_pins system_ila_0/SLOT_2_AXI]
  connect_bd_intf_net -intf_net cnn_dataflow_v2_0_0_m_axi_cmd [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins cnn_dataflow_v2_0_0/m_axi_cmd]
connect_bd_intf_net -intf_net [get_bd_intf_nets cnn_dataflow_v2_0_0_m_axi_cmd] [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins system_ila_0/SLOT_3_AXI]
  connect_bd_intf_net -intf_net cnn_dataflow_v2_0_0_m_axi_ifm [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins cnn_dataflow_v2_0_0/m_axi_ifm]
connect_bd_intf_net -intf_net [get_bd_intf_nets cnn_dataflow_v2_0_0_m_axi_ifm] [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins system_ila_0/SLOT_4_AXI]
  connect_bd_intf_net -intf_net cnn_dataflow_v2_0_0_m_axi_ofm [get_bd_intf_pins axi_interconnect_0/S02_AXI] [get_bd_intf_pins cnn_dataflow_v2_0_0/m_axi_ofm]
connect_bd_intf_net -intf_net [get_bd_intf_nets cnn_dataflow_v2_0_0_m_axi_ofm] [get_bd_intf_pins axi_interconnect_0/S02_AXI] [get_bd_intf_pins system_ila_0/SLOT_5_AXI]
  connect_bd_intf_net -intf_net cnn_dataflow_v2_0_0_m_axi_weight [get_bd_intf_pins axi_interconnect_0/S03_AXI] [get_bd_intf_pins cnn_dataflow_v2_0_0/m_axi_weight]
connect_bd_intf_net -intf_net [get_bd_intf_nets cnn_dataflow_v2_0_0_m_axi_weight] [get_bd_intf_pins axi_interconnect_0/S03_AXI] [get_bd_intf_pins system_ila_0/SLOT_6_AXI]
  connect_bd_intf_net -intf_net dariusController_raw_0_axi_periph_M00_AXI [get_bd_intf_pins cnn_dataflow_v2_0_0/s_axi_control] [get_bd_intf_pins dariusController_raw_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net dariusController_raw_0_axis_cmd_mm2s_V_data_V [get_bd_intf_pins axi_datamover_0/S_AXIS_MM2S_CMD] [get_bd_intf_pins dariusController_raw_0/axis_cmd_mm2s_V_data_V]
connect_bd_intf_net -intf_net [get_bd_intf_nets dariusController_raw_0_axis_cmd_mm2s_V_data_V] [get_bd_intf_pins axi_datamover_0/S_AXIS_MM2S_CMD] [get_bd_intf_pins system_ila_1/SLOT_1_AXIS]
connect_bd_intf_net -intf_net [get_bd_intf_nets dariusController_raw_0_axis_cmd_mm2s_V_data_V] [get_bd_intf_pins axi_datamover_0/S_AXIS_MM2S_CMD] [get_bd_intf_pins system_ila_1/SLOT_2_AXIS]
  connect_bd_intf_net -intf_net dariusController_raw_0_axis_cmd_s2mm_V_data_V [get_bd_intf_pins axi_datamover_0/S_AXIS_S2MM_CMD] [get_bd_intf_pins dariusController_raw_0/axis_cmd_s2mm_V_data_V]
connect_bd_intf_net -intf_net [get_bd_intf_nets dariusController_raw_0_axis_cmd_s2mm_V_data_V] [get_bd_intf_pins axi_datamover_0/S_AXIS_S2MM_CMD] [get_bd_intf_pins system_ila_1/SLOT_3_AXIS]
  connect_bd_intf_net -intf_net dariusController_raw_0_axis_s2mm [get_bd_intf_pins axi_datamover_0/S_AXIS_S2MM] [get_bd_intf_pins dariusController_raw_0/axis_s2mm]
connect_bd_intf_net -intf_net [get_bd_intf_nets dariusController_raw_0_axis_s2mm] [get_bd_intf_pins axi_datamover_0/S_AXIS_S2MM] [get_bd_intf_pins system_ila_1/SLOT_4_AXIS]
  connect_bd_intf_net -intf_net dariusController_raw_0_m_axi_darius_driver [get_bd_intf_pins dariusController_raw_0/m_axi_darius_driver] [get_bd_intf_pins dariusController_raw_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net dariusController_raw_0_stream_out [get_bd_intf_ports stream_out] [get_bd_intf_pins dariusController_raw_0/stream_out]
  connect_bd_intf_net -intf_net s_axi_AXILiteS_0_1 [get_bd_intf_ports s_axi] [get_bd_intf_pins dariusController_raw_0/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net stream_in_0_1 [get_bd_intf_ports stream_in] [get_bd_intf_pins dariusController_raw_0/stream_in]
connect_bd_intf_net -intf_net [get_bd_intf_nets stream_in_0_1] [get_bd_intf_ports stream_in] [get_bd_intf_pins system_ila_1/SLOT_0_AXIS]

  # Create port connections
  connect_bd_net -net CLK_1 [get_bd_ports CLK] [get_bd_pins axi_datamover_0/m_axi_mm2s_aclk] [get_bd_pins axi_datamover_0/m_axi_s2mm_aclk] [get_bd_pins axi_datamover_0/m_axis_mm2s_cmdsts_aclk] [get_bd_pins axi_datamover_0/m_axis_s2mm_cmdsts_awclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_interconnect_0/S02_ACLK] [get_bd_pins axi_interconnect_0/S03_ACLK] [get_bd_pins axi_interconnect_0/S04_ACLK] [get_bd_pins axi_interconnect_0/S05_ACLK] [get_bd_pins cnn_dataflow_v2_0_0/i_clk] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_cmd_aclk] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_ifm_aclk] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_ofm_aclk] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_weight_aclk] [get_bd_pins cnn_dataflow_v2_0_0/s_axi_control_aclk] [get_bd_pins dariusController_raw_0/ap_clk] [get_bd_pins dariusController_raw_0_axi_periph/ACLK] [get_bd_pins dariusController_raw_0_axi_periph/M00_ACLK] [get_bd_pins dariusController_raw_0_axi_periph/S00_ACLK] [get_bd_pins rst_CLK_156M/slowest_sync_clk] [get_bd_pins system_ila_0/clk] [get_bd_pins system_ila_1/clk]
  connect_bd_net -net RESETN_1 [get_bd_ports RESETN] [get_bd_pins axi_datamover_0/m_axi_mm2s_aresetn] [get_bd_pins axi_datamover_0/m_axi_s2mm_aresetn] [get_bd_pins axi_datamover_0/m_axis_mm2s_cmdsts_aresetn] [get_bd_pins axi_datamover_0/m_axis_s2mm_cmdsts_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_0/S02_ARESETN] [get_bd_pins axi_interconnect_0/S03_ARESETN] [get_bd_pins axi_interconnect_0/S04_ARESETN] [get_bd_pins axi_interconnect_0/S05_ARESETN] [get_bd_pins dariusController_raw_0_axi_periph/S00_ARESETN] [get_bd_pins system_ila_0/resetn]
  connect_bd_net -net rst_CLK_156M_interconnect_aresetn [get_bd_pins dariusController_raw_0_axi_periph/ARESETN] [get_bd_pins rst_CLK_156M/interconnect_aresetn]
  connect_bd_net -net rst_CLK_156M_peripheral_aresetn [get_bd_pins cnn_dataflow_v2_0_0/i_rst_n] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_cmd_aresetn] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_ifm_aresetn] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_ofm_aresetn] [get_bd_pins cnn_dataflow_v2_0_0/m_axi_weight_aresetn] [get_bd_pins cnn_dataflow_v2_0_0/s_axi_control_aresetn] [get_bd_pins dariusController_raw_0/ap_rst_n] [get_bd_pins dariusController_raw_0_axi_periph/M00_ARESETN] [get_bd_pins rst_CLK_156M/peripheral_aresetn] [get_bd_pins system_ila_1/resetn]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins dariusController_raw_0/ap_start] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces axi_datamover_0/Data_MM2S] [get_bd_addr_segs M_AXI/Reg] SEG_M_AXI_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces axi_datamover_0/Data_S2MM] [get_bd_addr_segs M_AXI/Reg] SEG_M_AXI_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces cnn_dataflow_v2_0_0/m_axi_cmd] [get_bd_addr_segs M_AXI/Reg] SEG_M_AXI_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces cnn_dataflow_v2_0_0/m_axi_ifm] [get_bd_addr_segs M_AXI/Reg] SEG_M_AXI_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces cnn_dataflow_v2_0_0/m_axi_ofm] [get_bd_addr_segs M_AXI/Reg] SEG_M_AXI_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces cnn_dataflow_v2_0_0/m_axi_weight] [get_bd_addr_segs M_AXI/Reg] SEG_M_AXI_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces dariusController_raw_0/Data_m_axi_darius_driver] [get_bd_addr_segs cnn_dataflow_v2_0_0/s_axi_control/reg0] SEG_cnn_dataflow_v2_0_0_reg0
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces s_axi] [get_bd_addr_segs dariusController_raw_0/s_axi_AXILiteS/Reg] SEG_dariusController_raw_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



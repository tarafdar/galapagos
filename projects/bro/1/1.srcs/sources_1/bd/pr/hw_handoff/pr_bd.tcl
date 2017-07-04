
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
# source pr_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku115-flva1517-2-e
}


# CHANGE DESIGN NAME HERE
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
  set M_AXIS [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS ]
  set S_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {16} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.DATA_WIDTH {64} \
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
CONFIG.MAX_BURST_LENGTH {256} \
CONFIG.NUM_READ_OUTSTANDING {2} \
CONFIG.NUM_READ_THREADS {1} \
CONFIG.NUM_WRITE_OUTSTANDING {2} \
CONFIG.NUM_WRITE_THREADS {1} \
CONFIG.PROTOCOL {AXI4} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_BITS_PER_BYTE {0} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {1} \
CONFIG.WUSER_BITS_PER_BYTE {0} \
CONFIG.WUSER_WIDTH {0} \
 ] $S_AXI
  set S_AXIS [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS ]
  set_property -dict [ list \
CONFIG.HAS_TKEEP {0} \
CONFIG.HAS_TLAST {0} \
CONFIG.HAS_TREADY {1} \
CONFIG.HAS_TSTRB {0} \
CONFIG.LAYERED_METADATA {undef} \
CONFIG.TDATA_NUM_BYTES {1} \
CONFIG.TDEST_WIDTH {0} \
CONFIG.TID_WIDTH {0} \
CONFIG.TUSER_WIDTH {0} \
 ] $S_AXIS

  # Create ports
  set ARESETN [ create_bd_port -dir I -type rst ARESETN ]
  set CLK_CONTROL [ create_bd_port -dir I -type clk CLK_CONTROL ]
  set CLK_DATA [ create_bd_port -dir I -type clk CLK_DATA ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]
  set_property -dict [ list \
CONFIG.DATA_WIDTH {64} \
CONFIG.ECC_TYPE {0} \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $blk_mem_gen_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.use_bram_block.VALUE_SRC {DEFAULT} \
 ] $blk_mem_gen_0

  # Create instance: fireWall2_inst, and set properties
  set fireWall2_inst [ create_bd_cell -type ip -vlnv xilinx.com:hls:fireWall64_2:1.0 fireWall2_inst ]

  # Create instance: fireWall_inst, and set properties
  set fireWall_inst [ create_bd_cell -type ip -vlnv xilinx.com:hls:fireWall64:1.0 fireWall_inst ]

  # Create instance: heartBeat_inst, and set properties
  set heartBeat_inst [ create_bd_cell -type ip -vlnv xilinx.com:hls:heartBeat:1.0 heartBeat_inst ]

  # Create instance: id_4, and set properties
  set id_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_4 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {4} \
CONFIG.CONST_WIDTH {32} \
 ] $id_4

  # Create instance: id_5, and set properties
  set id_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_5 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {5} \
CONFIG.CONST_WIDTH {32} \
 ] $id_5

  # Create instance: id_6, and set properties
  set id_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_6 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {6} \
CONFIG.CONST_WIDTH {32} \
 ] $id_6

  # Create instance: id_12, and set properties
  set id_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_12 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {12} \
CONFIG.CONST_WIDTH {32} \
 ] $id_12

  # Create instance: id_15, and set properties
  set id_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_15 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {15} \
CONFIG.CONST_WIDTH {32} \
 ] $id_15

  # Create instance: id_16, and set properties
  set id_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_16 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {16} \
CONFIG.CONST_WIDTH {32} \
 ] $id_16

  # Create instance: inputSwitch_inst, and set properties
  set inputSwitch_inst [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 inputSwitch_inst ]
  set_property -dict [ list \
CONFIG.DECODER_REG {1} \
CONFIG.HAS_TLAST {1} \
CONFIG.M00_AXIS_BASETDEST {0x00000005} \
CONFIG.M00_AXIS_HIGHTDEST {0x00000005} \
CONFIG.M01_AXIS_BASETDEST {0x00000006} \
CONFIG.M01_AXIS_HIGHTDEST {0x00000006} \
CONFIG.M02_AXIS_BASETDEST {0x00000001} \
CONFIG.M02_AXIS_HIGHTDEST {0x00000001} \
CONFIG.M03_AXIS_BASETDEST {0x00000002} \
CONFIG.M03_AXIS_HIGHTDEST {0x00000002} \
CONFIG.M04_AXIS_BASETDEST {0x00000003} \
CONFIG.M04_AXIS_HIGHTDEST {0x00000003} \
CONFIG.M05_AXIS_BASETDEST {0x00000009} \
CONFIG.M05_AXIS_HIGHTDEST {0x00000009} \
CONFIG.M06_AXIS_BASETDEST {0x0000000a} \
CONFIG.M06_AXIS_HIGHTDEST {0x0000000a} \
CONFIG.NUM_MI {7} \
CONFIG.NUM_SI {4} \
CONFIG.TDATA_NUM_BYTES {8} \
 ] $inputSwitch_inst

  # Create instance: logic_1, and set properties
  set logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 logic_1 ]

  # Create instance: outputSwitch_inst, and set properties
  set outputSwitch_inst [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 outputSwitch_inst ]
  set_property -dict [ list \
CONFIG.ARB_ON_MAX_XFERS {0} \
CONFIG.ARB_ON_TLAST {1} \
CONFIG.HAS_TKEEP {1} \
CONFIG.HAS_TLAST {1} \
CONFIG.NUM_SI {8} \
CONFIG.TDATA_NUM_BYTES {8} \
 ] $outputSwitch_inst

  # Create instance: packetFormatter_inst_0, and set properties
  set packetFormatter_inst_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_0 ]

  # Create instance: packetFormatter_inst_1, and set properties
  set packetFormatter_inst_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_1 ]

  # Create instance: packetFormatter_inst_2, and set properties
  set packetFormatter_inst_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_2 ]

  # Create instance: packetFormatter_inst_3, and set properties
  set packetFormatter_inst_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_3 ]

  # Create instance: packetFormatter_inst_4, and set properties
  set packetFormatter_inst_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_4 ]

  # Create instance: packetFormatter_inst_5, and set properties
  set packetFormatter_inst_5 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_5 ]

  # Create instance: packetFormatter_inst_6, and set properties
  set packetFormatter_inst_6 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_6 ]

  # Create instance: packetMaker_inst_0, and set properties
  set packetMaker_inst_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetMaker:1.0 packetMaker_inst_0 ]

  # Create instance: packetMaker_inst_1, and set properties
  set packetMaker_inst_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetMaker:1.0 packetMaker_inst_1 ]

  # Create instance: packetMaker_inst_2, and set properties
  set packetMaker_inst_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetMaker:1.0 packetMaker_inst_2 ]

  # Create instance: packetMask_inst_0, and set properties
  set packetMask_inst_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetMask:1.0 packetMask_inst_0 ]

  # Create instance: packetMask_inst_1, and set properties
  set packetMask_inst_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetMask:1.0 packetMask_inst_1 ]

  # Create instance: packetMask_inst_2, and set properties
  set packetMask_inst_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:packetMask:1.0 packetMask_inst_2 ]

  # Create instance: pf_dst_inst_0, and set properties
  set pf_dst_inst_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {274973442034179} \
CONFIG.CONST_WIDTH {48} \
 ] $pf_dst_inst_0

  # Create instance: pf_dst_inst_1, and set properties
  set pf_dst_inst_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {274973442034179} \
CONFIG.CONST_WIDTH {48} \
 ] $pf_dst_inst_1

  # Create instance: pf_dst_inst_2, and set properties
  set pf_dst_inst_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_2 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {274973442034179} \
CONFIG.CONST_WIDTH {48} \
 ] $pf_dst_inst_2

  # Create instance: pf_dst_inst_3, and set properties
  set pf_dst_inst_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_3 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {274973442034179} \
CONFIG.CONST_WIDTH {48} \
 ] $pf_dst_inst_3

  # Create instance: pf_dst_inst_4, and set properties
  set pf_dst_inst_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_4 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {274973442034179} \
CONFIG.CONST_WIDTH {48} \
 ] $pf_dst_inst_4

  # Create instance: pf_dst_inst_5, and set properties
  set pf_dst_inst_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_5 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {274973453189119} \
CONFIG.CONST_WIDTH {48} \
 ] $pf_dst_inst_5

  # Create instance: pf_dst_inst_6, and set properties
  set pf_dst_inst_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_6 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {274973453189119} \
CONFIG.CONST_WIDTH {48} \
 ] $pf_dst_inst_6

  # Create instance: receiveFifo_inst, and set properties
  set receiveFifo_inst [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 receiveFifo_inst ]
  set_property -dict [ list \
CONFIG.FIFO_DEPTH {32768} \
CONFIG.HAS_TKEEP {1} \
CONFIG.HAS_TLAST {1} \
CONFIG.TDATA_NUM_BYTES {8} \
 ] $receiveFifo_inst

  # Create instance: sendFifo_inst, and set properties
  set sendFifo_inst [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 sendFifo_inst ]
  set_property -dict [ list \
CONFIG.FIFO_DEPTH {32768} \
CONFIG.HAS_TKEEP {1} \
CONFIG.HAS_TLAST {1} \
CONFIG.TDATA_NUM_BYTES {8} \
 ] $sendFifo_inst

  # Create instance: src_inst, and set properties
  set src_inst [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 src_inst ]
  set_property -dict [ list \
CONFIG.CONST_VAL {274973442034180} \
CONFIG.CONST_WIDTH {48} \
 ] $src_inst

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXIS_1 [get_bd_intf_ports S_AXIS] [get_bd_intf_pins receiveFifo_inst/S_AXIS]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_ports S_AXI] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net fireWall2_inst_stream_out [get_bd_intf_pins fireWall2_inst/stream_out] [get_bd_intf_pins inputSwitch_inst/S00_AXIS]
  connect_bd_intf_net -intf_net fireWall_inst_stream_out [get_bd_intf_pins fireWall2_inst/stream_in] [get_bd_intf_pins fireWall_inst/stream_out]
  connect_bd_intf_net -intf_net heartBeat_inst_stream_out [get_bd_intf_pins heartBeat_inst/stream_out] [get_bd_intf_pins outputSwitch_inst/S07_AXIS]
  connect_bd_intf_net -intf_net inputSwitch_inst_M00_AXIS [get_bd_intf_pins inputSwitch_inst/M00_AXIS] [get_bd_intf_pins packetMask_inst_1/packetIn]
  connect_bd_intf_net -intf_net inputSwitch_inst_M01_AXIS [get_bd_intf_pins inputSwitch_inst/M01_AXIS] [get_bd_intf_pins packetMask_inst_2/packetIn]
  connect_bd_intf_net -intf_net inputSwitch_inst_M02_AXIS [get_bd_intf_pins inputSwitch_inst/M02_AXIS] [get_bd_intf_pins packetFormatter_inst_0/packetIn]
  connect_bd_intf_net -intf_net inputSwitch_inst_M03_AXIS [get_bd_intf_pins inputSwitch_inst/M03_AXIS] [get_bd_intf_pins packetFormatter_inst_1/packetIn]
  connect_bd_intf_net -intf_net inputSwitch_inst_M04_AXIS [get_bd_intf_pins inputSwitch_inst/M04_AXIS] [get_bd_intf_pins packetFormatter_inst_2/packetIn]
  connect_bd_intf_net -intf_net inputSwitch_inst_M05_AXIS [get_bd_intf_pins inputSwitch_inst/M05_AXIS] [get_bd_intf_pins packetFormatter_inst_3/packetIn]
  connect_bd_intf_net -intf_net inputSwitch_inst_M06_AXIS [get_bd_intf_pins inputSwitch_inst/M06_AXIS] [get_bd_intf_pins packetFormatter_inst_4/packetIn]
  connect_bd_intf_net -intf_net outputSwitch_inst_M00_AXIS [get_bd_intf_pins outputSwitch_inst/M00_AXIS] [get_bd_intf_pins sendFifo_inst/S_AXIS]
  connect_bd_intf_net -intf_net packetFormatter_inst_0_packetOut [get_bd_intf_pins outputSwitch_inst/S00_AXIS] [get_bd_intf_pins packetFormatter_inst_0/packetOut]
  connect_bd_intf_net -intf_net packetFormatter_inst_1_packetOut [get_bd_intf_pins outputSwitch_inst/S01_AXIS] [get_bd_intf_pins packetFormatter_inst_1/packetOut]
  connect_bd_intf_net -intf_net packetFormatter_inst_2_packetOut [get_bd_intf_pins outputSwitch_inst/S02_AXIS] [get_bd_intf_pins packetFormatter_inst_2/packetOut]
  connect_bd_intf_net -intf_net packetFormatter_inst_3_packetOut [get_bd_intf_pins outputSwitch_inst/S03_AXIS] [get_bd_intf_pins packetFormatter_inst_3/packetOut]
  connect_bd_intf_net -intf_net packetFormatter_inst_4_packetOut [get_bd_intf_pins outputSwitch_inst/S04_AXIS] [get_bd_intf_pins packetFormatter_inst_4/packetOut]
  connect_bd_intf_net -intf_net packetFormatter_inst_5_packetOut [get_bd_intf_pins outputSwitch_inst/S05_AXIS] [get_bd_intf_pins packetFormatter_inst_5/packetOut]
  connect_bd_intf_net -intf_net packetFormatter_inst_6_packetOut [get_bd_intf_pins outputSwitch_inst/S06_AXIS] [get_bd_intf_pins packetFormatter_inst_6/packetOut]
  connect_bd_intf_net -intf_net packetMaker_inst_0_packetOut [get_bd_intf_pins packetMaker_inst_0/packetOut] [get_bd_intf_pins packetMask_inst_0/packetIn]
  connect_bd_intf_net -intf_net packetMaker_inst_1_packetOut [get_bd_intf_pins packetFormatter_inst_5/packetIn] [get_bd_intf_pins packetMaker_inst_1/packetOut]
  connect_bd_intf_net -intf_net packetMaker_inst_2_packetOut [get_bd_intf_pins packetFormatter_inst_6/packetIn] [get_bd_intf_pins packetMaker_inst_2/packetOut]
  connect_bd_intf_net -intf_net packetMask_inst_0_packetOut [get_bd_intf_pins inputSwitch_inst/S01_AXIS] [get_bd_intf_pins packetMask_inst_0/packetOut]
  connect_bd_intf_net -intf_net packetMask_inst_1_packetOut [get_bd_intf_pins inputSwitch_inst/S02_AXIS] [get_bd_intf_pins packetMask_inst_1/packetOut]
  connect_bd_intf_net -intf_net packetMask_inst_2_packetOut [get_bd_intf_pins inputSwitch_inst/S03_AXIS] [get_bd_intf_pins packetMask_inst_2/packetOut]
  connect_bd_intf_net -intf_net receiveFifo_inst_M_AXIS [get_bd_intf_pins fireWall_inst/stream_in] [get_bd_intf_pins receiveFifo_inst/M_AXIS]
  connect_bd_intf_net -intf_net sendFifo_inst_M_AXIS [get_bd_intf_ports M_AXIS] [get_bd_intf_pins sendFifo_inst/M_AXIS]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_ports ARESETN] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins fireWall2_inst/ap_rst_n] [get_bd_pins fireWall_inst/ap_rst_n] [get_bd_pins heartBeat_inst/ap_rst_n] [get_bd_pins inputSwitch_inst/aresetn] [get_bd_pins outputSwitch_inst/aresetn] [get_bd_pins packetFormatter_inst_0/ap_rst_n] [get_bd_pins packetFormatter_inst_1/ap_rst_n] [get_bd_pins packetFormatter_inst_2/ap_rst_n] [get_bd_pins packetFormatter_inst_3/ap_rst_n] [get_bd_pins packetFormatter_inst_4/ap_rst_n] [get_bd_pins packetFormatter_inst_5/ap_rst_n] [get_bd_pins packetFormatter_inst_6/ap_rst_n] [get_bd_pins packetMaker_inst_0/ap_rst_n] [get_bd_pins packetMaker_inst_1/ap_rst_n] [get_bd_pins packetMaker_inst_2/ap_rst_n] [get_bd_pins packetMask_inst_0/ap_rst_n] [get_bd_pins packetMask_inst_1/ap_rst_n] [get_bd_pins packetMask_inst_2/ap_rst_n] [get_bd_pins receiveFifo_inst/s_axis_aresetn] [get_bd_pins sendFifo_inst/s_axis_aresetn]
  connect_bd_net -net CLK_CONTROL_1 [get_bd_ports CLK_CONTROL] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk]
  connect_bd_net -net CLK_DATA_1 [get_bd_ports CLK_DATA] [get_bd_pins fireWall2_inst/ap_clk] [get_bd_pins fireWall_inst/ap_clk] [get_bd_pins heartBeat_inst/ap_clk] [get_bd_pins inputSwitch_inst/aclk] [get_bd_pins outputSwitch_inst/aclk] [get_bd_pins packetFormatter_inst_0/ap_clk] [get_bd_pins packetFormatter_inst_1/ap_clk] [get_bd_pins packetFormatter_inst_2/ap_clk] [get_bd_pins packetFormatter_inst_3/ap_clk] [get_bd_pins packetFormatter_inst_4/ap_clk] [get_bd_pins packetFormatter_inst_5/ap_clk] [get_bd_pins packetFormatter_inst_6/ap_clk] [get_bd_pins packetMaker_inst_0/ap_clk] [get_bd_pins packetMaker_inst_1/ap_clk] [get_bd_pins packetMaker_inst_2/ap_clk] [get_bd_pins packetMask_inst_0/ap_clk] [get_bd_pins packetMask_inst_1/ap_clk] [get_bd_pins packetMask_inst_2/ap_clk] [get_bd_pins receiveFifo_inst/s_axis_aclk] [get_bd_pins sendFifo_inst/s_axis_aclk]
  connect_bd_net -net fireWall_inst_match_out_V [get_bd_pins fireWall2_inst/match_in_V] [get_bd_pins fireWall_inst/match_out_V]
  connect_bd_net -net fireWall_inst_match_out_V_ap_vld [get_bd_pins fireWall2_inst/match_in_V_ap_vld] [get_bd_pins fireWall_inst/match_out_V_ap_vld]
  connect_bd_net -net id_12_dout [get_bd_pins id_12/dout] [get_bd_pins packetMaker_inst_0/id_V]
  connect_bd_net -net id_15_dout [get_bd_pins id_15/dout] [get_bd_pins packetMaker_inst_1/id_V]
  connect_bd_net -net id_16_dout [get_bd_pins id_16/dout] [get_bd_pins packetMaker_inst_2/id_V]
  connect_bd_net -net id_4_dout [get_bd_pins id_4/dout] [get_bd_pins packetMask_inst_0/id_V]
  connect_bd_net -net id_5_dout [get_bd_pins id_5/dout] [get_bd_pins packetMask_inst_1/id_V]
  connect_bd_net -net id_6_dout [get_bd_pins id_6/dout] [get_bd_pins packetMask_inst_2/id_V]
  connect_bd_net -net logic_1_dout [get_bd_pins fireWall2_inst/stream_garbage_TREADY] [get_bd_pins logic_1/dout]
  connect_bd_net -net pf_dst_inst_0_dout [get_bd_pins packetFormatter_inst_0/eth_dst_V] [get_bd_pins pf_dst_inst_0/dout]
  connect_bd_net -net pf_dst_inst_1_dout [get_bd_pins packetFormatter_inst_1/eth_dst_V] [get_bd_pins pf_dst_inst_1/dout]
  connect_bd_net -net pf_dst_inst_2_dout [get_bd_pins packetFormatter_inst_2/eth_dst_V] [get_bd_pins pf_dst_inst_2/dout]
  connect_bd_net -net pf_dst_inst_3_dout [get_bd_pins packetFormatter_inst_3/eth_dst_V] [get_bd_pins pf_dst_inst_3/dout]
  connect_bd_net -net pf_dst_inst_4_dout [get_bd_pins packetFormatter_inst_4/eth_dst_V] [get_bd_pins pf_dst_inst_4/dout]
  connect_bd_net -net pf_dst_inst_5_dout [get_bd_pins packetFormatter_inst_5/eth_dst_V] [get_bd_pins pf_dst_inst_5/dout]
  connect_bd_net -net pf_dst_inst_6_dout [get_bd_pins packetFormatter_inst_6/eth_dst_V] [get_bd_pins pf_dst_inst_6/dout]
  connect_bd_net -net src_inst_dout [get_bd_pins fireWall_inst/eth_address_V] [get_bd_pins heartBeat_inst/eth_address_V] [get_bd_pins packetFormatter_inst_0/eth_src_V] [get_bd_pins packetFormatter_inst_1/eth_src_V] [get_bd_pins packetFormatter_inst_2/eth_src_V] [get_bd_pins packetFormatter_inst_3/eth_src_V] [get_bd_pins packetFormatter_inst_4/eth_src_V] [get_bd_pins packetFormatter_inst_5/eth_src_V] [get_bd_pins packetFormatter_inst_6/eth_src_V] [get_bd_pins src_inst/dout]

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



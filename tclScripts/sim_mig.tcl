
################################################################
# This is a generated script based on design: shell_test
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
set scripts_vivado_version 2018.2
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
# source shell_test_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku115-flva1517-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name shell_test

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
xilinx.com:ip:util_vector_logic:2.0\
xilinx.com:ip:ddr4:2.2\
xilinx.com:ip:proc_sys_reset:5.0\
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


# Hierarchical cell: mem_interface
proc create_hier_cell_mem_interface { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_mem_interface() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 MEM_AXI_1

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
  create_bd_pin -dir I -type clk clk156_25
  create_bd_pin -dir I -from 0 -to 0 -type rst sys_rst

  # Create instance: ddr4_0, and set properties
  set ddr4_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddr4_0 ]
  set_property -dict [ list \
   CONFIG.C0.ADDR_WIDTH {17} \
   CONFIG.C0.BANK_GROUP_WIDTH {2} \
   CONFIG.C0.DDR4_AxiAddressWidth {32} \
   CONFIG.C0.DDR4_AxiDataWidth {512} \
   CONFIG.C0.DDR4_CasLatency {15} \
   CONFIG.C0.DDR4_CasWriteLatency {11} \
   CONFIG.C0.DDR4_CustomParts {no_file_loaded} \
   CONFIG.C0.DDR4_DataWidth {64} \
   CONFIG.C0.DDR4_InputClockPeriod {3338} \
   CONFIG.C0.DDR4_MemoryPart {MT40A512M8RH-075E} \
   CONFIG.C0.DDR4_TimePeriod {939} \
   CONFIG.C0.DDR4_isCustom {false} \
   CONFIG.Simulation_Mode {Unisim} \
 ] $ddr4_0

  # Create instance: ddr4_1, and set properties
  set ddr4_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddr4_1 ]
  set_property -dict [ list \
   CONFIG.C0.ADDR_WIDTH {17} \
   CONFIG.C0.BANK_GROUP_WIDTH {2} \
   CONFIG.C0.DDR4_AxiAddressWidth {32} \
   CONFIG.C0.DDR4_AxiDataWidth {512} \
   CONFIG.C0.DDR4_CasLatency {15} \
   CONFIG.C0.DDR4_CasWriteLatency {11} \
   CONFIG.C0.DDR4_CustomParts {no_file_loaded} \
   CONFIG.C0.DDR4_DataWidth {64} \
   CONFIG.C0.DDR4_InputClockPeriod {3338} \
   CONFIG.C0.DDR4_MemoryPart {MT40A512M8RH-075E} \
   CONFIG.C0.DDR4_TimePeriod {939} \
   CONFIG.C0.DDR4_isCustom {false} \
   CONFIG.Simulation_Mode {Unisim} \
 ] $ddr4_1

  # Create instance: mem_interconnect, and set properties
  set mem_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 mem_interconnect ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.M00_HAS_REGSLICE {3} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S00_HAS_REGSLICE {3} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_REGSLICE {3} \
   CONFIG.S02_HAS_DATA_FIFO {2} \
   CONFIG.S02_HAS_REGSLICE {3} \
   CONFIG.S03_HAS_REGSLICE {3} \
   CONFIG.STRATEGY {0} \
   CONFIG.SYNCHRONIZATION_STAGES {3} \
   CONFIG.XBAR_DATA_WIDTH {512} \
 ] $mem_interconnect

  # Create instance: mem_interconnect_1, and set properties
  set mem_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 mem_interconnect_1 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.M00_HAS_REGSLICE {3} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S00_HAS_REGSLICE {3} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_REGSLICE {3} \
   CONFIG.S02_HAS_DATA_FIFO {2} \
   CONFIG.S02_HAS_REGSLICE {3} \
   CONFIG.S03_HAS_REGSLICE {3} \
   CONFIG.STRATEGY {0} \
   CONFIG.SYNCHRONIZATION_STAGES {3} \
   CONFIG.XBAR_DATA_WIDTH {512} \
 ] $mem_interconnect_1

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
 ] $proc_sys_reset_1

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_5

  # Create interface connections
  connect_bd_intf_net -intf_net MEM_AXI_0_1 [get_bd_intf_pins MEM_AXI_0] [get_bd_intf_pins mem_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net MEM_AXI_1_1 [get_bd_intf_pins MEM_AXI_1] [get_bd_intf_pins mem_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net mem_interconnect_1_M00_AXI [get_bd_intf_pins ddr4_1/C0_DDR4_S_AXI] [get_bd_intf_pins mem_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net pcie_interconnect_M00_AXI [get_bd_intf_pins ddr4_0/C0_DDR4_S_AXI] [get_bd_intf_pins mem_interconnect/M00_AXI]

  # Create port connections
  connect_bd_net -net M00_ARESETN_1 [get_bd_pins ddr4_0/c0_ddr4_aresetn] [get_bd_pins ddr4_1/c0_ddr4_aresetn] [get_bd_pins mem_interconnect/M00_ARESETN] [get_bd_pins mem_interconnect_1/M00_ARESETN] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net Net [get_bd_pins c1_ddr4_dqs_t] [get_bd_pins ddr4_1/c0_ddr4_dqs_t]
  connect_bd_net -net Net1 [get_bd_pins c1_ddr4_dqs_c] [get_bd_pins ddr4_1/c0_ddr4_dqs_c]
  connect_bd_net -net Net2 [get_bd_pins c1_ddr4_dm_dbi_n] [get_bd_pins ddr4_1/c0_ddr4_dm_dbi_n]
  connect_bd_net -net Net3 [get_bd_pins c1_ddr4_dq] [get_bd_pins ddr4_1/c0_ddr4_dq]
  connect_bd_net -net Net4 [get_bd_pins c0_ddr4_dm_dbi_n] [get_bd_pins ddr4_0/c0_ddr4_dm_dbi_n]
  connect_bd_net -net Net5 [get_bd_pins c0_ddr4_dqs_c] [get_bd_pins ddr4_0/c0_ddr4_dqs_c]
  connect_bd_net -net Net6 [get_bd_pins c0_ddr4_dqs_t] [get_bd_pins ddr4_0/c0_ddr4_dqs_t]
  connect_bd_net -net Net7 [get_bd_pins c0_ddr4_dg] [get_bd_pins ddr4_0/c0_ddr4_dq]
  connect_bd_net -net S01_ARESETN_1 [get_bd_pins S_ARESETN] [get_bd_pins mem_interconnect/S00_ARESETN] [get_bd_pins mem_interconnect_1/S00_ARESETN]
  connect_bd_net -net c1_sys_clk_n_1 [get_bd_pins c0_sys_clk_n] [get_bd_pins ddr4_0/c0_sys_clk_n]
  connect_bd_net -net c1_sys_clk_n_2 [get_bd_pins c1_sys_clk_n] [get_bd_pins ddr4_1/c0_sys_clk_n]
  connect_bd_net -net c1_sys_clk_p_1 [get_bd_pins c0_sys_clk_p] [get_bd_pins ddr4_0/c0_sys_clk_p]
  connect_bd_net -net c1_sys_clk_p_2 [get_bd_pins c1_sys_clk_p] [get_bd_pins ddr4_1/c0_sys_clk_p]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_0/c0_ddr4_ui_clk_sync_rst] [get_bd_pins util_vector_logic_4/Op1]
  connect_bd_net -net ddr4_0_c0_init_calib_complete [get_bd_pins ARESETN] [get_bd_pins proc_sys_reset_1/ext_reset_in] [get_bd_pins util_vector_logic_5/Res]
  connect_bd_net -net ddr4_0_c0_init_calib_complete1 [get_bd_pins ddr4_0/c0_init_calib_complete] [get_bd_pins util_vector_logic_5/Op1]
  connect_bd_net -net ddr4_1_c0_ddr4_act_n [get_bd_pins c0_ddr4_act_n] [get_bd_pins ddr4_0/c0_ddr4_act_n]
  connect_bd_net -net ddr4_1_c0_ddr4_act_n1 [get_bd_pins c1_ddr4_act_n] [get_bd_pins ddr4_1/c0_ddr4_act_n]
  connect_bd_net -net ddr4_1_c0_ddr4_adr [get_bd_pins c0_ddr4_adr] [get_bd_pins ddr4_0/c0_ddr4_adr]
  connect_bd_net -net ddr4_1_c0_ddr4_adr1 [get_bd_pins c1_ddr4_adr] [get_bd_pins ddr4_1/c0_ddr4_adr]
  connect_bd_net -net ddr4_1_c0_ddr4_ba [get_bd_pins c0_ddr4_ba] [get_bd_pins ddr4_0/c0_ddr4_ba]
  connect_bd_net -net ddr4_1_c0_ddr4_ba1 [get_bd_pins c1_ddr4_ba] [get_bd_pins ddr4_1/c0_ddr4_ba]
  connect_bd_net -net ddr4_1_c0_ddr4_bg [get_bd_pins c0_ddr4_bg] [get_bd_pins ddr4_0/c0_ddr4_bg]
  connect_bd_net -net ddr4_1_c0_ddr4_bg1 [get_bd_pins c1_ddr4_bg] [get_bd_pins ddr4_1/c0_ddr4_bg]
  connect_bd_net -net ddr4_1_c0_ddr4_ck_c [get_bd_pins c0_ddr4_ck_c] [get_bd_pins ddr4_0/c0_ddr4_ck_c]
  connect_bd_net -net ddr4_1_c0_ddr4_ck_c1 [get_bd_pins c1_ddr4_ck_c] [get_bd_pins ddr4_1/c0_ddr4_ck_c]
  connect_bd_net -net ddr4_1_c0_ddr4_ck_t [get_bd_pins c0_ddr4_ck_t] [get_bd_pins ddr4_0/c0_ddr4_ck_t]
  connect_bd_net -net ddr4_1_c0_ddr4_ck_t1 [get_bd_pins c1_ddr4_ck_t] [get_bd_pins ddr4_1/c0_ddr4_ck_t]
  connect_bd_net -net ddr4_1_c0_ddr4_cke [get_bd_pins c0_ddr4_cke] [get_bd_pins ddr4_0/c0_ddr4_cke]
  connect_bd_net -net ddr4_1_c0_ddr4_cke1 [get_bd_pins c1_ddr4_cke] [get_bd_pins ddr4_1/c0_ddr4_cke]
  connect_bd_net -net ddr4_1_c0_ddr4_cs_n [get_bd_pins c0_ddr4_cs_n] [get_bd_pins ddr4_0/c0_ddr4_cs_n]
  connect_bd_net -net ddr4_1_c0_ddr4_cs_n1 [get_bd_pins c1_ddr4_cs_n] [get_bd_pins ddr4_1/c0_ddr4_cs_n]
  connect_bd_net -net ddr4_1_c0_ddr4_odt [get_bd_pins c0_ddr4_odt] [get_bd_pins ddr4_0/c0_ddr4_odt]
  connect_bd_net -net ddr4_1_c0_ddr4_odt1 [get_bd_pins c1_ddr4_odt] [get_bd_pins ddr4_1/c0_ddr4_odt]
  connect_bd_net -net ddr4_1_c0_ddr4_reset_n [get_bd_pins c0_ddr4_reset_n] [get_bd_pins ddr4_0/c0_ddr4_reset_n]
  connect_bd_net -net ddr4_1_c0_ddr4_reset_n1 [get_bd_pins c1_ddr4_reset_n] [get_bd_pins ddr4_1/c0_ddr4_reset_n]
  connect_bd_net -net ddr4_1_c0_ddr4_ui_clk [get_bd_pins ddr4_0/c0_ddr4_ui_clk] [get_bd_pins mem_interconnect/ACLK] [get_bd_pins mem_interconnect/M00_ACLK] [get_bd_pins proc_sys_reset_1/slowest_sync_clk]
  connect_bd_net -net ddr4_1_c0_ddr4_ui_clk1 [get_bd_pins ddr4_1/c0_ddr4_ui_clk] [get_bd_pins mem_interconnect_1/ACLK] [get_bd_pins mem_interconnect_1/M00_ACLK]
  connect_bd_net -net ddr4_1_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_1/c0_ddr4_ui_clk_sync_rst] [get_bd_pins util_vector_logic_4/Op2]
  connect_bd_net -net ddr4_1_c0_init_calib_complete [get_bd_pins ddr4_1/c0_init_calib_complete] [get_bd_pins util_vector_logic_5/Op2]
  connect_bd_net -net m_axi_mm2s_aclk_1 [get_bd_pins clk156_25] [get_bd_pins mem_interconnect/S00_ACLK] [get_bd_pins mem_interconnect_1/S00_ACLK]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins mem_interconnect/ARESETN] [get_bd_pins mem_interconnect_1/ARESETN] [get_bd_pins proc_sys_reset_1/interconnect_aresetn]
  connect_bd_net -net sys_rst_1 [get_bd_pins sys_rst] [get_bd_pins ddr4_0/sys_rst] [get_bd_pins ddr4_1/sys_rst]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins proc_sys_reset_1/aux_reset_in] [get_bd_pins util_vector_logic_4/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}


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
  set S_AXI_MEM_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MEM_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {1} \
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
   ] $S_AXI_MEM_0
  set S_AXI_MEM_1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MEM_1 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {1} \
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
   ] $S_AXI_MEM_1

  # Create ports
  set c0_ddr4_act_n_0 [ create_bd_port -dir O c0_ddr4_act_n_0 ]
  set c0_ddr4_adr_0 [ create_bd_port -dir O -from 16 -to 0 c0_ddr4_adr_0 ]
  set c0_ddr4_ba_0 [ create_bd_port -dir O -from 1 -to 0 c0_ddr4_ba_0 ]
  set c0_ddr4_bg_0 [ create_bd_port -dir O -from 1 -to 0 c0_ddr4_bg_0 ]
  set c0_ddr4_ck_c_0 [ create_bd_port -dir O -from 0 -to 0 -type clk c0_ddr4_ck_c_0 ]
  set c0_ddr4_ck_t_0 [ create_bd_port -dir O -from 0 -to 0 -type clk c0_ddr4_ck_t_0 ]
  set c0_ddr4_cke_0 [ create_bd_port -dir O -from 0 -to 0 c0_ddr4_cke_0 ]
  set c0_ddr4_cs_n_0 [ create_bd_port -dir O -from 0 -to 0 c0_ddr4_cs_n_0 ]
  set c0_ddr4_dg_0 [ create_bd_port -dir IO -from 63 -to 0 c0_ddr4_dg_0 ]
  set c0_ddr4_dm_dbi_n_0 [ create_bd_port -dir IO -from 7 -to 0 c0_ddr4_dm_dbi_n_0 ]
  set c0_ddr4_dqs_c_0 [ create_bd_port -dir IO -from 7 -to 0 c0_ddr4_dqs_c_0 ]
  set c0_ddr4_dqs_t_0 [ create_bd_port -dir IO -from 7 -to 0 c0_ddr4_dqs_t_0 ]
  set c0_ddr4_odt_0 [ create_bd_port -dir O -from 0 -to 0 c0_ddr4_odt_0 ]
  set c0_ddr4_reset_n_0 [ create_bd_port -dir O c0_ddr4_reset_n_0 ]
  set c0_sys_clk_n [ create_bd_port -dir I -type clk c0_sys_clk_n ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
 ] $c0_sys_clk_n
  set c0_sys_clk_p [ create_bd_port -dir I -type clk c0_sys_clk_p ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
 ] $c0_sys_clk_p
  set c1_ddr4_act_n [ create_bd_port -dir O c1_ddr4_act_n ]
  set c1_ddr4_adr [ create_bd_port -dir O -from 16 -to 0 c1_ddr4_adr ]
  set c1_ddr4_ba [ create_bd_port -dir O -from 1 -to 0 c1_ddr4_ba ]
  set c1_ddr4_bg [ create_bd_port -dir O -from 1 -to 0 c1_ddr4_bg ]
  set c1_ddr4_ck_c [ create_bd_port -dir O -from 0 -to 0 -type clk c1_ddr4_ck_c ]
  set c1_ddr4_ck_t [ create_bd_port -dir O -from 0 -to 0 -type clk c1_ddr4_ck_t ]
  set c1_ddr4_cke [ create_bd_port -dir O -from 0 -to 0 c1_ddr4_cke ]
  set c1_ddr4_cs_n [ create_bd_port -dir O -from 0 -to 0 c1_ddr4_cs_n ]
  set c1_ddr4_dm_dbi_n [ create_bd_port -dir IO -from 7 -to 0 c1_ddr4_dm_dbi_n ]
  set c1_ddr4_dq [ create_bd_port -dir IO -from 63 -to 0 c1_ddr4_dq ]
  set c1_ddr4_dqs_c [ create_bd_port -dir IO -from 7 -to 0 c1_ddr4_dqs_c ]
  set c1_ddr4_dqs_t [ create_bd_port -dir IO -from 7 -to 0 c1_ddr4_dqs_t ]
  set c1_ddr4_odt [ create_bd_port -dir O -from 0 -to 0 c1_ddr4_odt ]
  set c1_ddr4_reset_n [ create_bd_port -dir O c1_ddr4_reset_n ]
  set c1_sys_clk_n [ create_bd_port -dir I -type clk c1_sys_clk_n ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
 ] $c1_sys_clk_n
  set c1_sys_clk_p [ create_bd_port -dir I -type clk c1_sys_clk_p ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
 ] $c1_sys_clk_p
  set sys_reset_n [ create_bd_port -dir I sys_reset_n ]
  set user_clk [ create_bd_port -dir I -type clk user_clk ]
  set user_resetn [ create_bd_port -dir O -from 0 -to 0 user_resetn ]

  # Create instance: mem_interface
  create_hier_cell_mem_interface [current_bd_instance .] mem_interface

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_3

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_MEM_1 [get_bd_intf_ports S_AXI_MEM_0] [get_bd_intf_pins mem_interface/MEM_AXI_0]
  connect_bd_intf_net -intf_net S_AXI_MEM_1_1 [get_bd_intf_ports S_AXI_MEM_1] [get_bd_intf_pins mem_interface/MEM_AXI_1]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports c0_ddr4_dg_0] [get_bd_pins mem_interface/c0_ddr4_dg]
  connect_bd_net -net Net1 [get_bd_ports c0_ddr4_dm_dbi_n_0] [get_bd_pins mem_interface/c0_ddr4_dm_dbi_n]
  connect_bd_net -net Net2 [get_bd_ports c0_ddr4_dqs_c_0] [get_bd_pins mem_interface/c0_ddr4_dqs_c]
  connect_bd_net -net Net3 [get_bd_ports c0_ddr4_dqs_t_0] [get_bd_pins mem_interface/c0_ddr4_dqs_t]
  connect_bd_net -net Net4 [get_bd_ports c1_ddr4_dqs_t] [get_bd_pins mem_interface/c1_ddr4_dqs_t]
  connect_bd_net -net Net5 [get_bd_ports c1_ddr4_dqs_c] [get_bd_pins mem_interface/c1_ddr4_dqs_c]
  connect_bd_net -net Net6 [get_bd_ports c1_ddr4_dm_dbi_n] [get_bd_pins mem_interface/c1_ddr4_dm_dbi_n]
  connect_bd_net -net Net7 [get_bd_ports c1_ddr4_dq] [get_bd_pins mem_interface/c1_ddr4_dq]
  connect_bd_net -net c0_sys_clk_n_0_1 [get_bd_ports c0_sys_clk_n] [get_bd_pins mem_interface/c0_sys_clk_n]
  connect_bd_net -net c0_sys_clk_p_0_1 [get_bd_ports c0_sys_clk_p] [get_bd_pins mem_interface/c0_sys_clk_p]
  connect_bd_net -net c1_sys_clk_n_1 [get_bd_ports c1_sys_clk_n] [get_bd_pins mem_interface/c1_sys_clk_n]
  connect_bd_net -net c1_sys_clk_p_1 [get_bd_ports c1_sys_clk_p] [get_bd_pins mem_interface/c1_sys_clk_p]
  connect_bd_net -net clk156_25_0_1 [get_bd_ports user_clk] [get_bd_pins mem_interface/clk156_25]
  connect_bd_net -net mem_interface_ARESETN [get_bd_ports user_resetn] [get_bd_pins mem_interface/ARESETN]
  connect_bd_net -net mem_interface_c0_ddr4_act_n [get_bd_ports c0_ddr4_act_n_0] [get_bd_pins mem_interface/c0_ddr4_act_n]
  connect_bd_net -net mem_interface_c0_ddr4_adr [get_bd_ports c0_ddr4_adr_0] [get_bd_pins mem_interface/c0_ddr4_adr]
  connect_bd_net -net mem_interface_c0_ddr4_ba [get_bd_ports c0_ddr4_ba_0] [get_bd_pins mem_interface/c0_ddr4_ba]
  connect_bd_net -net mem_interface_c0_ddr4_bg [get_bd_ports c0_ddr4_bg_0] [get_bd_pins mem_interface/c0_ddr4_bg]
  connect_bd_net -net mem_interface_c0_ddr4_ck_c [get_bd_ports c0_ddr4_ck_c_0] [get_bd_pins mem_interface/c0_ddr4_ck_c]
  connect_bd_net -net mem_interface_c0_ddr4_ck_t [get_bd_ports c0_ddr4_ck_t_0] [get_bd_pins mem_interface/c0_ddr4_ck_t]
  connect_bd_net -net mem_interface_c0_ddr4_cke [get_bd_ports c0_ddr4_cke_0] [get_bd_pins mem_interface/c0_ddr4_cke]
  connect_bd_net -net mem_interface_c0_ddr4_cs_n [get_bd_ports c0_ddr4_cs_n_0] [get_bd_pins mem_interface/c0_ddr4_cs_n]
  connect_bd_net -net mem_interface_c0_ddr4_odt [get_bd_ports c0_ddr4_odt_0] [get_bd_pins mem_interface/c0_ddr4_odt]
  connect_bd_net -net mem_interface_c0_ddr4_reset_n [get_bd_ports c0_ddr4_reset_n_0] [get_bd_pins mem_interface/c0_ddr4_reset_n]
  connect_bd_net -net mem_interface_c1_ddr4_act_n [get_bd_ports c1_ddr4_act_n] [get_bd_pins mem_interface/c1_ddr4_act_n]
  connect_bd_net -net mem_interface_c1_ddr4_adr [get_bd_ports c1_ddr4_adr] [get_bd_pins mem_interface/c1_ddr4_adr]
  connect_bd_net -net mem_interface_c1_ddr4_ba [get_bd_ports c1_ddr4_ba] [get_bd_pins mem_interface/c1_ddr4_ba]
  connect_bd_net -net mem_interface_c1_ddr4_bg [get_bd_ports c1_ddr4_bg] [get_bd_pins mem_interface/c1_ddr4_bg]
  connect_bd_net -net mem_interface_c1_ddr4_ck_c [get_bd_ports c1_ddr4_ck_c] [get_bd_pins mem_interface/c1_ddr4_ck_c]
  connect_bd_net -net mem_interface_c1_ddr4_ck_t [get_bd_ports c1_ddr4_ck_t] [get_bd_pins mem_interface/c1_ddr4_ck_t]
  connect_bd_net -net mem_interface_c1_ddr4_cke [get_bd_ports c1_ddr4_cke] [get_bd_pins mem_interface/c1_ddr4_cke]
  connect_bd_net -net mem_interface_c1_ddr4_cs_n [get_bd_ports c1_ddr4_cs_n] [get_bd_pins mem_interface/c1_ddr4_cs_n]
  connect_bd_net -net mem_interface_c1_ddr4_odt [get_bd_ports c1_ddr4_odt] [get_bd_pins mem_interface/c1_ddr4_odt]
  connect_bd_net -net mem_interface_c1_ddr4_reset_n [get_bd_ports c1_ddr4_reset_n] [get_bd_pins mem_interface/c1_ddr4_reset_n]
  connect_bd_net -net sys_reset_n_1 [get_bd_ports sys_reset_n] [get_bd_pins mem_interface/S_ARESETN] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net sys_rst_1 [get_bd_pins mem_interface/sys_rst] [get_bd_pins util_vector_logic_3/Res]

  # Create address segments
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces S_AXI_MEM_0] [get_bd_addr_segs mem_interface/ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces S_AXI_MEM_1] [get_bd_addr_segs mem_interface/ddr4_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_1_C0_DDR4_ADDRESS_BLOCK


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



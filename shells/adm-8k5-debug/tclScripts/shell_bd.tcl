namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

namespace eval 2017.2 {
  set ip_list "\ 
    xilinx.com:ip:axi_bram_ctrl:4.0\
    xilinx.com:ip:axi_gpio:2.0\
    xilinx.com:ip:blk_mem_gen:8.3\
    xilinx.com:ip:clk_wiz:5.4\
    xilinx.com:ip:xlconstant:1.1\
    xilinx.com:ip:system_ila:1.0\
    xilinx.com:ip:util_vector_logic:2.0\
    xilinx.com:ip:vio:3.0\
    xilinx.com:ip:util_ds_buf:2.1\
    xilinx.com:ip:xdma:3.1\
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
    xilinx.com:ip:fifo_generator:13.2
  "
}

namespace eval 2017.4 {
  set ip_list "\ 
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
    xilinx.com:ip:fifo_generator:13.2\
  "
}

namespace eval 2018.1 {
  set ip_list "\ 
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
    xilinx.com:ip:fifo_generator:13.2
  "
}

namespace eval 2018.2 {
  set ip_list "\ 
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
}


# defines get_design_name
if { [info exists ::env(GALAPAGOS_PATH)] } {
    source ${::env(GALAPAGOS_PATH)}/shells/tclScripts/utilities.tcl
    # defines procs for creating IPs/hierarchies
    source ${::env(GALAPAGOS_PATH)}/shells/tclScripts/shell_procs.tcl
} else {
    source ${::env(SHELLS_PATH)}/tclScripts/utilities.tcl
    # defines procs for creating IPs/hierarchies
    source ${::env(SHELLS_PATH)}/tclScripts/shell_procs.tcl
}



# determine Vivado version
set current_vivado_version [version -short]
if { [string first 2017.2 $current_vivado_version] != -1 } {
  set version 2017.2
} elseif { [string first 2017.4 $current_vivado_version] != -1 } {
  set version 2017.4
} elseif { [string first 2018.1 $current_vivado_version] != -1 } {
  set version 2018.1
} elseif { [string first 2018.2 $current_vivado_version] != -1 } {
  set version 2018.2
} else {
  puts ""
  catch {common::send_msg_id "BD_TCL-109" "ERROR" "Unsupported Vivado version:\
    $current_vivado_version for shell_bd.tcl"}
  return 1
}

# CHANGE DESIGN NAME HERE
variable design_name
set design_name shell
  
set result [get_design_name $design_name]

set cur_design [lindex $result 0]
set design_name [lindex $result 1]
set errMsg [lindex $result 2]
set nRet [lindex $result 3]

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
  catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
  return $nRet
}

# Check IPs
set list_check_ips [puts [subst $\{[subst ${version}::ip_list]\}]]
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

  # Create interface ports
  set M_AXIS [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS ]
  set M_AXI_CONTROL [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_CONTROL ]
  set_property -dict [ list \
    CONFIG.ADDR_WIDTH {32} \
    CONFIG.DATA_WIDTH {32} \
    CONFIG.HAS_BURST {0} \
    CONFIG.HAS_CACHE {0} \
    CONFIG.HAS_LOCK {0} \
    CONFIG.HAS_QOS {0} \
    CONFIG.HAS_REGION {0} \
    CONFIG.PROTOCOL {AXI4LITE} \
  ] $M_AXI_CONTROL
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
  set diff_clock_rtl [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 diff_clock_rtl ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   ] $diff_clock_rtl
  set pcie_7x_mgt_rtl [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_7x_mgt_rtl ]
  set c0_sys_clk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c0_sys_clk ]
  set_property -dict [ list \
    CONFIG.FREQ_HZ {300000000} \
  ] $c0_sys_clk
  set c1_sys_clk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 c1_sys_clk ]
  set_property -dict [ list \
    CONFIG.FREQ_HZ {300000000} \
  ] $c1_sys_clk

  # Create ports
  set ARESETN [ create_bd_port -dir O ARESETN ]
  set CLK_DATA [ create_bd_port -dir O -type clk CLK_DATA ]
  set_property -dict [ list \
    CONFIG.ASSOCIATED_BUSIF {M_AXIS:S_AXIS:S_AXI_MEM_0:M_AXI_CONTROL:S_AXI_MEM_1} \
  ] $CLK_DATA
  set c0_ddr4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c0_ddr4 ]
  # set c0_ddr4_act_n_0 [ create_bd_port -dir O c0_ddr4_act_n_0 ]
  # set c0_ddr4_adr_0 [ create_bd_port -dir O -from 16 -to 0 c0_ddr4_adr_0 ]
  # set c0_ddr4_ba_0 [ create_bd_port -dir O -from 1 -to 0 c0_ddr4_ba_0 ]
  # set c0_ddr4_bg_0 [ create_bd_port -dir O -from 1 -to 0 c0_ddr4_bg_0 ]
  # set c0_ddr4_ck_c_0 [ create_bd_port -dir O -from 0 -to 0 -type clk c0_ddr4_ck_c_0 ]
  # set c0_ddr4_ck_t_0 [ create_bd_port -dir O -from 0 -to 0 -type clk c0_ddr4_ck_t_0 ]
  # set c0_ddr4_cke_0 [ create_bd_port -dir O -from 0 -to 0 c0_ddr4_cke_0 ]
  # set c0_ddr4_cs_n_0 [ create_bd_port -dir O -from 0 -to 0 c0_ddr4_cs_n_0 ]
  # set c0_ddr4_dg_0 [ create_bd_port -dir IO -from 63 -to 0 c0_ddr4_dg_0 ]
  # set c0_ddr4_dm_dbi_n_0 [ create_bd_port -dir IO -from 7 -to 0 c0_ddr4_dm_dbi_n_0 ]
  # set c0_ddr4_dqs_c_0 [ create_bd_port -dir IO -from 7 -to 0 c0_ddr4_dqs_c_0 ]
  # set c0_ddr4_dqs_t_0 [ create_bd_port -dir IO -from 7 -to 0 c0_ddr4_dqs_t_0 ]
  # set c0_ddr4_odt_0 [ create_bd_port -dir O -from 0 -to 0 c0_ddr4_odt_0 ]
  # set c0_ddr4_reset_n_0 [ create_bd_port -dir O c0_ddr4_reset_n_0 ]
  # set c0_sys_clk_n_0 [ create_bd_port -dir I -type clk c0_sys_clk_n_0 ]
  # set_property -dict [ list \
  #   CONFIG.FREQ_HZ {300000000} \
  # ] $c0_sys_clk_n_0
  # set c0_sys_clk_p_0 [ create_bd_port -dir I -type clk c0_sys_clk_p_0 ]
  #   set_property -dict [ list \
  #   CONFIG.FREQ_HZ {300000000} \
  # ] $c0_sys_clk_p_0
  set c1_ddr4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c1_ddr4 ]
  # set c1_ddr4_act_n [ create_bd_port -dir O c1_ddr4_act_n ]
  # set c1_ddr4_adr [ create_bd_port -dir O -from 16 -to 0 c1_ddr4_adr ]
  # set c1_ddr4_ba [ create_bd_port -dir O -from 1 -to 0 c1_ddr4_ba ]
  # set c1_ddr4_bg [ create_bd_port -dir O -from 1 -to 0 c1_ddr4_bg ]
  # set c1_ddr4_ck_c [ create_bd_port -dir O -from 0 -to 0 -type clk c1_ddr4_ck_c ]
  # set c1_ddr4_ck_t [ create_bd_port -dir O -from 0 -to 0 -type clk c1_ddr4_ck_t ]
  # set c1_ddr4_cke [ create_bd_port -dir O -from 0 -to 0 c1_ddr4_cke ]
  # set c1_ddr4_cs_n [ create_bd_port -dir O -from 0 -to 0 c1_ddr4_cs_n ]
  # set c1_ddr4_dm_dbi_n [ create_bd_port -dir IO -from 7 -to 0 c1_ddr4_dm_dbi_n ]
  # set c1_ddr4_dq [ create_bd_port -dir IO -from 63 -to 0 c1_ddr4_dq ]
  # set c1_ddr4_dqs_c [ create_bd_port -dir IO -from 7 -to 0 c1_ddr4_dqs_c ]
  # set c1_ddr4_dqs_t [ create_bd_port -dir IO -from 7 -to 0 c1_ddr4_dqs_t ]
  # set c1_ddr4_odt [ create_bd_port -dir O -from 0 -to 0 c1_ddr4_odt ]
  # set c1_ddr4_reset_n [ create_bd_port -dir O c1_ddr4_reset_n ]
  # set c1_sys_clk_n [ create_bd_port -dir I -type clk c1_sys_clk_n ]
  # set_property -dict [ list \
  #   CONFIG.FREQ_HZ {300000000} \
  # ] $c1_sys_clk_n
  # set c1_sys_clk_p [ create_bd_port -dir I -type clk c1_sys_clk_p ]
  # set_property -dict [ list \
  #   CONFIG.FREQ_HZ {300000000} \
  # ] $c1_sys_clk_p
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
  create_hier_PCIe [current_bd_instance .] PCIe

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl axi_bram_ctrl_0 ]
  set_property -dict [ list \
    CONFIG.PROTOCOL {AXI4LITE} \
    CONFIG.SINGLE_PORT_BRAM {1} \
  ] $axi_bram_ctrl_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio axi_gpio_0 ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect axi_interconnect_0 ]
  set_property -dict [ list \
    CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
    CONFIG.NUM_MI {3} \
    CONFIG.NUM_SI {2} \
    CONFIG.XBAR_DATA_WIDTH {32} \
  ] $axi_interconnect_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen blk_mem_gen_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz clk_wiz_0 ]
  set_property -dict [ list \
    CONFIG.USE_LOCKED {false} \
    CONFIG.USE_RESET {false} \
  ] $clk_wiz_0

  # Create instance: gnd, and set properties
  set gnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant gnd ]
  set_property -dict [ list \
    CONFIG.CONST_VAL {0} \
    CONFIG.CONST_WIDTH {2} \
  ] $gnd

  # Create instance: mb_system - defined in shell_procs.tcl
  create_hier_MB [current_bd_instance .] mb_system clk100 ext_reset_in MB_AXI

  # Create instance: mem_interface
  create_hier_ddr4 [current_bd_instance .] mem_interface true true
  #
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
  ] [get_bd_cells mem_interface/ddr4_0]
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
  ] [get_bd_cells mem_interface/ddr4_1]

  # Create instance: network
  create_hier_eth10G [current_bd_instance .] network X1Y12

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila system_ila_0 ]
  set_property -dict [ list \
    CONFIG.C_NUM_MONITOR_SLOTS {5} \
    CONFIG.C_SLOT {4} \
    CONFIG.C_SLOT_3_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
    CONFIG.C_SLOT_4_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
  ] $system_ila_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic util_vector_logic_0 ]
  set_property -dict [ list \
    CONFIG.C_SIZE {1} \
  ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic util_vector_logic_1 ]
  set_property -dict [ list \
    CONFIG.C_OPERATION {not} \
    CONFIG.C_SIZE {1} \
  ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic util_vector_logic_2 ]
  set_property -dict [ list \
    CONFIG.C_SIZE {1} \
  ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic util_vector_logic_3 ]
  set_property -dict [ list \
    CONFIG.C_OPERATION {not} \
    CONFIG.C_SIZE {1} \
  ] $util_vector_logic_3

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio vio_0 ]
  set_property -dict [ list \
    CONFIG.C_NUM_PROBE_IN {0} \
    CONFIG.C_PROBE_OUT0_WIDTH {32} \
  ] $vio_0

  # Create interface connections
  connect_bd_intf_net -intf_net PCIe_M_AXI [get_bd_intf_pins PCIe/M_AXI] [get_bd_intf_pins mem_interface/PCIE_AXI]
  connect_bd_intf_net -intf_net PCIe_pcie_mgt [get_bd_intf_ports pcie_7x_mgt_rtl] [get_bd_intf_pins PCIe/pcie_mgt]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins mb_system/MB_AXI]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins PCIe/M_AXI_LITE] [get_bd_intf_pins axi_interconnect_0/S01_AXI]
  connect_bd_intf_net -intf_net S_AXIS_1 [get_bd_intf_ports S_AXIS] [get_bd_intf_pins network/S_AXIS]
  connect_bd_intf_net -intf_net [get_bd_intf_nets S_AXIS_1] [get_bd_intf_ports S_AXIS] [get_bd_intf_pins system_ila_0/SLOT_3_AXIS]
  connect_bd_intf_net -intf_net S_AXI_MEM_1 [get_bd_intf_ports S_AXI_MEM_0] [get_bd_intf_pins mem_interface/MEM_AXI_0]
  connect_bd_intf_net -intf_net [get_bd_intf_nets S_AXI_MEM_1] [get_bd_intf_ports S_AXI_MEM_0] [get_bd_intf_pins system_ila_0/SLOT_0_AXI]
  connect_bd_intf_net -intf_net S_AXI_MEM_1_1 [get_bd_intf_ports S_AXI_MEM_1] [get_bd_intf_pins mem_interface/MEM_AXI_1]
  connect_bd_intf_net -intf_net [get_bd_intf_nets S_AXI_MEM_1_1] [get_bd_intf_ports S_AXI_MEM_1] [get_bd_intf_pins system_ila_0/SLOT_1_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_ports M_AXI_CONTROL] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets axi_interconnect_0_M02_AXI] [get_bd_intf_ports M_AXI_CONTROL] [get_bd_intf_pins system_ila_0/SLOT_2_AXI]
  connect_bd_intf_net -intf_net diff_clock_rtl_1 [get_bd_intf_ports diff_clock_rtl] [get_bd_intf_pins PCIe/CLK_IN_D]
  connect_bd_intf_net -intf_net network_M_AXIS [get_bd_intf_ports M_AXIS] [get_bd_intf_pins network/M_AXIS]
  connect_bd_intf_net -intf_net [get_bd_intf_nets network_M_AXIS] [get_bd_intf_ports M_AXIS] [get_bd_intf_pins system_ila_0/SLOT_4_AXIS]
  connect_bd_intf_net [get_bd_intf_ports c0_ddr4] -boundary_type upper [get_bd_intf_pins mem_interface/c0_ddr4]
  connect_bd_intf_net [get_bd_intf_ports c1_ddr4] -boundary_type upper [get_bd_intf_pins mem_interface/c1_ddr4]
  connect_bd_intf_net [get_bd_intf_ports c0_sys_clk] -boundary_type upper [get_bd_intf_pins mem_interface/c0_sys_clk]
  connect_bd_intf_net [get_bd_intf_ports c1_sys_clk] -boundary_type upper [get_bd_intf_pins mem_interface/c1_sys_clk]

  # Create port connections
  # connect_bd_net -net Net [get_bd_ports c0_ddr4_dg_0] [get_bd_pins mem_interface/c0_ddr4_dg]
  # connect_bd_net -net Net1 [get_bd_ports c0_ddr4_dm_dbi_n_0] [get_bd_pins mem_interface/c0_ddr4_dm_dbi_n]
  # connect_bd_net -net Net2 [get_bd_ports c0_ddr4_dqs_c_0] [get_bd_pins mem_interface/c0_ddr4_dqs_c]
  # connect_bd_net -net Net3 [get_bd_ports c0_ddr4_dqs_t_0] [get_bd_pins mem_interface/c0_ddr4_dqs_t]
  # connect_bd_net -net Net4 [get_bd_ports c1_ddr4_dqs_t] [get_bd_pins mem_interface/c1_ddr4_dqs_t]
  # connect_bd_net -net Net5 [get_bd_ports c1_ddr4_dqs_c] [get_bd_pins mem_interface/c1_ddr4_dqs_c]
  # connect_bd_net -net Net6 [get_bd_ports c1_ddr4_dm_dbi_n] [get_bd_pins mem_interface/c1_ddr4_dm_dbi_n]
  # connect_bd_net -net Net7 [get_bd_ports c1_ddr4_dq] [get_bd_pins mem_interface/c1_ddr4_dq]
  connect_bd_net -net PCIe_axi_aclk [get_bd_pins PCIe/axi_aclk] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins mem_interface/PCIE_ACLK]
  connect_bd_net -net PCIe_axi_aresetn [get_bd_pins PCIe/axi_aresetn] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins util_vector_logic_2/Op1]
  # connect_bd_net -net c0_sys_clk_n_0_1 [get_bd_ports c0_sys_clk_n_0] [get_bd_pins mem_interface/c0_sys_clk_n]
  # connect_bd_net -net c0_sys_clk_p_0_1 [get_bd_ports c0_sys_clk_p_0] [get_bd_pins mem_interface/c0_sys_clk_p]
  # connect_bd_net -net c1_sys_clk_n_1 [get_bd_ports c1_sys_clk_n] [get_bd_pins mem_interface/c1_sys_clk_n]
  # connect_bd_net -net c1_sys_clk_p_1 [get_bd_ports c1_sys_clk_p] [get_bd_pins mem_interface/c1_sys_clk_p]
  connect_bd_net -net gnd_dout [get_bd_ports sfp_tx_disable] [get_bd_pins gnd/dout]
  connect_bd_net -net mem_interface_ARESETN [get_bd_ports ARESETN] [get_bd_pins mem_interface/ARESETN]
  # connect_bd_net -net mem_interface_c0_ddr4_act_n [get_bd_ports c0_ddr4_act_n_0] [get_bd_pins mem_interface/c0_ddr4_act_n]
  # connect_bd_net -net mem_interface_c0_ddr4_adr [get_bd_ports c0_ddr4_adr_0] [get_bd_pins mem_interface/c0_ddr4_adr]
  # connect_bd_net -net mem_interface_c0_ddr4_ba [get_bd_ports c0_ddr4_ba_0] [get_bd_pins mem_interface/c0_ddr4_ba]
  # connect_bd_net -net mem_interface_c0_ddr4_bg [get_bd_ports c0_ddr4_bg_0] [get_bd_pins mem_interface/c0_ddr4_bg]
  # connect_bd_net -net mem_interface_c0_ddr4_ck_c [get_bd_ports c0_ddr4_ck_c_0] [get_bd_pins mem_interface/c0_ddr4_ck_c]
  # connect_bd_net -net mem_interface_c0_ddr4_ck_t [get_bd_ports c0_ddr4_ck_t_0] [get_bd_pins mem_interface/c0_ddr4_ck_t]
  # connect_bd_net -net mem_interface_c0_ddr4_cke [get_bd_ports c0_ddr4_cke_0] [get_bd_pins mem_interface/c0_ddr4_cke]
  # connect_bd_net -net mem_interface_c0_ddr4_cs_n [get_bd_ports c0_ddr4_cs_n_0] [get_bd_pins mem_interface/c0_ddr4_cs_n]
  # connect_bd_net -net mem_interface_c0_ddr4_odt [get_bd_ports c0_ddr4_odt_0] [get_bd_pins mem_interface/c0_ddr4_odt]
  # connect_bd_net -net mem_interface_c0_ddr4_reset_n [get_bd_ports c0_ddr4_reset_n_0] [get_bd_pins mem_interface/c0_ddr4_reset_n]
  # connect_bd_net -net mem_interface_c1_ddr4_act_n [get_bd_ports c1_ddr4_act_n] [get_bd_pins mem_interface/c1_ddr4_act_n]
  # connect_bd_net -net mem_interface_c1_ddr4_adr [get_bd_ports c1_ddr4_adr] [get_bd_pins mem_interface/c1_ddr4_adr]
  # connect_bd_net -net mem_interface_c1_ddr4_ba [get_bd_ports c1_ddr4_ba] [get_bd_pins mem_interface/c1_ddr4_ba]
  # connect_bd_net -net mem_interface_c1_ddr4_bg [get_bd_ports c1_ddr4_bg] [get_bd_pins mem_interface/c1_ddr4_bg]
  # connect_bd_net -net mem_interface_c1_ddr4_ck_c [get_bd_ports c1_ddr4_ck_c] [get_bd_pins mem_interface/c1_ddr4_ck_c]
  # connect_bd_net -net mem_interface_c1_ddr4_ck_t [get_bd_ports c1_ddr4_ck_t] [get_bd_pins mem_interface/c1_ddr4_ck_t]
  # connect_bd_net -net mem_interface_c1_ddr4_cke [get_bd_ports c1_ddr4_cke] [get_bd_pins mem_interface/c1_ddr4_cke]
  # connect_bd_net -net mem_interface_c1_ddr4_cs_n [get_bd_ports c1_ddr4_cs_n] [get_bd_pins mem_interface/c1_ddr4_cs_n]
  # connect_bd_net -net mem_interface_c1_ddr4_odt [get_bd_ports c1_ddr4_odt] [get_bd_pins mem_interface/c1_ddr4_odt]
  # connect_bd_net -net mem_interface_c1_ddr4_reset_n [get_bd_ports c1_ddr4_reset_n] [get_bd_pins mem_interface/c1_ddr4_reset_n]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins mb_system/clk100] [get_bd_pins network/clk_100]
  connect_bd_net -net network_clk_156 [get_bd_ports CLK_DATA] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins mem_interface/clk156_25] [get_bd_pins network/clk_156] [get_bd_pins system_ila_0/clk] [get_bd_pins vio_0/clk]
  connect_bd_net -net network_network_reset_done [get_bd_pins network/network_reset_done] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net network_txn [get_bd_ports txn] [get_bd_pins network/txn]
  connect_bd_net -net network_txp [get_bd_ports txp] [get_bd_pins network/txp]
  connect_bd_net -net perst_n_1 [get_bd_ports perst_n] [get_bd_pins PCIe/sys_rst_n] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net refclk200_1 [get_bd_ports refclk200] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net refclk_n_1 [get_bd_ports refclk_n] [get_bd_pins network/refclk_n]
  connect_bd_net -net refclk_p_1 [get_bd_ports refclk_p] [get_bd_pins network/refclk_p]
  connect_bd_net -net rxn_1 [get_bd_ports rxn] [get_bd_pins network/rxn]
  connect_bd_net -net rxp_1 [get_bd_ports rxp] [get_bd_pins network/rxp]
  connect_bd_net -net sys_rst_1 [get_bd_pins mem_interface/sys_rst] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins network/reset] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins mb_system/ext_reset_in] [get_bd_pins mem_interface/S_ARESETN] [get_bd_pins network/aresetn] [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins vio_0/probe_out0]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces PCIe/xdma_0/M_AXI_LITE] [get_bd_addr_segs M_AXI_CONTROL/Reg] SEG_M_AXI_CONTROL_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0xC0000000 [get_bd_addr_spaces PCIe/xdma_0/M_AXI_LITE] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x00090000 [get_bd_addr_spaces PCIe/xdma_0/M_AXI_LITE] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces PCIe/xdma_0/M_AXI] [get_bd_addr_segs mem_interface/ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces mb_system/microblaze_0/Data] [get_bd_addr_segs M_AXI_CONTROL/Reg] SEG_M_AXI_CONTROL_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0xC0000000 [get_bd_addr_spaces mb_system/microblaze_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x00090000 [get_bd_addr_spaces mb_system/microblaze_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0x00000000 [get_bd_addr_spaces mb_system/microblaze_0/Data] [get_bd_addr_segs mb_system/microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00002000 -offset 0x00000000 [get_bd_addr_spaces mb_system/microblaze_0/Instruction] [get_bd_addr_segs mb_system/microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces mb_system/microblaze_0/Data] [get_bd_addr_segs mb_system/mdm_0/S_AXI/Reg] SEG_mdm_0_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces S_AXI_MEM_0] [get_bd_addr_segs mem_interface/ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces S_AXI_MEM_1] [get_bd_addr_segs mem_interface/ddr4_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_1_C0_DDR4_ADDRESS_BLOCK

  # Restore current instance
  current_bd_instance $oldCurInst

  regenerate_bd_layout
  save_bd_design
  validate_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""
return 0

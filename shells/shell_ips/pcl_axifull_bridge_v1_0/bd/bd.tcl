
proc init {cellpath otherInfo} { 
  if { ![get_property CONFIG.HAS_BURST [get_bd_cells $cellpath]] } {
    set_property -dict {CONFIG.HAS_BURST 0 CONFIG.HAS_BURST.VALUE_SRC CONSTANT} [get_bd_intf_pins $cellpath/m_axi]
  }
  #bd::mark_propagate_only [get_bd_cells $cellpath] {HAS_SLAVE_ID S_ID_WIDTH}
  set_property BRIDGES m_axi [get_bd_intf_pins $cellpath/s_axi]
  foreach i [get_bd_intf_pins -of_objects [get_bd_cells $cellpath]] {
    set_property BD_ATTRIBUTE.TYPE interior $i 
  }
}

if { 0 } {
proc propagate {cellpath prop_info} { 
  #puts "DBG: propagate [get_bd_intf_pins $cellpath/s_axi] ID_WIDTH=[get_property CONFIG.ID_WIDTH [get_bd_intf_pins $cellpath/s_axi]]"
  #puts "DBG: propagate [get_bd_intf_pins $cellpath/m_axi] DATA_WIDTH=[get_property CONFIG.DATA_WIDTH [get_bd_intf_pins $cellpath/m_axi]]"
 
  if { 0 } {
    set cell [get_bd_cells $cellpath]
    set conn {}
    set bd_intf_pins [get_bd_intf_pins -of_objects $cell -filter {mode==Slave}]
    if { [llength $bd_intf_pins] == 1 } {
      set bd_intf_pin [lindex $bd_intf_pins 0] 
      set conn [find_bd_objs -legacy_mode -relation CONNECTED_TO $bd_intf_pin]
    }
    set conn_id_width [expr {[llength $conn] ? [get_property CONFIG.ID_WIDTH $conn] : 0}]
    set has_slave_id [expr {$conn_id_width > 0}]
    set s_id_width [expr {$has_slave_id ? $conn_id_width : 1}]
    
    set props {}
    lappend props CONFIG.S_ID_WIDTH $s_id_width
    lappend props CONFIG.HAS_SLAVE_ID [expr {$has_slave_id?"true":"false"}]

    set_property CONFIG.ID_WIDTH $s_id_width [get_bd_intf_pins $cellpath/s_axi]
    puts "DBG: propagate conn=[list $conn] conn_id_width=$conn_id_width s_id_width=$s_id_width props=[list $props]"
    set_property -dict $props $cell
  }
}
}

proc post_propagate {cellpath prop_info} { 
  ### 
  ### WARNING: This proc must exist even if empty.  It seems to resolve an issue with m_axi DATA_WIDTH propagation when (DATA_WIDTH != 32):
  ###   ERROR: [BD 41-237] Bus Interface property DATA_WIDTH does not match between /M_AXI(512) and /master_bridge_0/m_axi(32)
  ###
  
  #puts "DBG: post_propagate [get_bd_intf_pins $cellpath/m_axi] DATA_WIDTH=[get_property CONFIG.DATA_WIDTH [get_bd_intf_pins $cellpath/m_axi]]"
}


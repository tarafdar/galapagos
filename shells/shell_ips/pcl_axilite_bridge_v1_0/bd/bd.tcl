
proc init {cellpath otherInfo} { 
  if { ![get_property CONFIG.HAS_BURST [get_bd_cells $cellpath]] } {
    set_property -dict {CONFIG.HAS_BURST 0 CONFIG.HAS_BURST.VALUE_SRC CONSTANT} [get_bd_intf_pins $cellpath/m_axi]
  }
  set_property BRIDGES m_axi [get_bd_intf_pins $cellpath/s_axi]
  foreach i [get_bd_intf_pins -of_objects [get_bd_cells $cellpath]] {
    set_property BD_ATTRIBUTE.TYPE interior $i 
  }
}


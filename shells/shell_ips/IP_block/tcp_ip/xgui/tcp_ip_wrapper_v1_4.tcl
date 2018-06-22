# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "TCP_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "UDP_ENABLE" -parent ${Page_0}


}

proc update_PARAM_VALUE.TCP_ENABLE { PARAM_VALUE.TCP_ENABLE } {
	# Procedure called to update TCP_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TCP_ENABLE { PARAM_VALUE.TCP_ENABLE } {
	# Procedure called to validate TCP_ENABLE
	return true
}

proc update_PARAM_VALUE.UDP_ENABLE { PARAM_VALUE.UDP_ENABLE } {
	# Procedure called to update UDP_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UDP_ENABLE { PARAM_VALUE.UDP_ENABLE } {
	# Procedure called to validate UDP_ENABLE
	return true
}


proc update_MODELPARAM_VALUE.TCP_ENABLE { MODELPARAM_VALUE.TCP_ENABLE PARAM_VALUE.TCP_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TCP_ENABLE}] ${MODELPARAM_VALUE.TCP_ENABLE}
}

proc update_MODELPARAM_VALUE.UDP_ENABLE { MODELPARAM_VALUE.UDP_ENABLE PARAM_VALUE.UDP_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UDP_ENABLE}] ${MODELPARAM_VALUE.UDP_ENABLE}
}


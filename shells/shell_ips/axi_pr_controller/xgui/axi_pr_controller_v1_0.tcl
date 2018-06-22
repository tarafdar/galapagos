# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_CHIP_FAMILY" -parent ${Page_0} -widget comboBox


}

proc update_PARAM_VALUE.C_ADDR_WIDTH { PARAM_VALUE.C_ADDR_WIDTH } {
	# Procedure called to update C_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ADDR_WIDTH { PARAM_VALUE.C_ADDR_WIDTH } {
	# Procedure called to validate C_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CHIP_FAMILY { PARAM_VALUE.C_CHIP_FAMILY } {
	# Procedure called to update C_CHIP_FAMILY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CHIP_FAMILY { PARAM_VALUE.C_CHIP_FAMILY } {
	# Procedure called to validate C_CHIP_FAMILY
	return true
}

proc update_PARAM_VALUE.C_DM_MAX_SIZE { PARAM_VALUE.C_DM_MAX_SIZE } {
	# Procedure called to update C_DM_MAX_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DM_MAX_SIZE { PARAM_VALUE.C_DM_MAX_SIZE } {
	# Procedure called to validate C_DM_MAX_SIZE
	return true
}

proc update_PARAM_VALUE.C_SIZE_WIDTH { PARAM_VALUE.C_SIZE_WIDTH } {
	# Procedure called to update C_SIZE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SIZE_WIDTH { PARAM_VALUE.C_SIZE_WIDTH } {
	# Procedure called to validate C_SIZE_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_CHIP_FAMILY { MODELPARAM_VALUE.C_CHIP_FAMILY PARAM_VALUE.C_CHIP_FAMILY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CHIP_FAMILY}] ${MODELPARAM_VALUE.C_CHIP_FAMILY}
}

proc update_MODELPARAM_VALUE.C_SIZE_WIDTH { MODELPARAM_VALUE.C_SIZE_WIDTH PARAM_VALUE.C_SIZE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SIZE_WIDTH}] ${MODELPARAM_VALUE.C_SIZE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_ADDR_WIDTH { MODELPARAM_VALUE.C_ADDR_WIDTH PARAM_VALUE.C_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_DM_MAX_SIZE { MODELPARAM_VALUE.C_DM_MAX_SIZE PARAM_VALUE.C_DM_MAX_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DM_MAX_SIZE}] ${MODELPARAM_VALUE.C_DM_MAX_SIZE}
}


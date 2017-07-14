# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BTT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DRR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DSA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KEEP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "START_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "START_DATA" -parent ${Page_0}


}

proc update_PARAM_VALUE.BTT { PARAM_VALUE.BTT } {
	# Procedure called to update BTT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BTT { PARAM_VALUE.BTT } {
	# Procedure called to validate BTT
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DRR { PARAM_VALUE.DRR } {
	# Procedure called to update DRR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DRR { PARAM_VALUE.DRR } {
	# Procedure called to validate DRR
	return true
}

proc update_PARAM_VALUE.DSA { PARAM_VALUE.DSA } {
	# Procedure called to update DSA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DSA { PARAM_VALUE.DSA } {
	# Procedure called to validate DSA
	return true
}

proc update_PARAM_VALUE.KEEP_WIDTH { PARAM_VALUE.KEEP_WIDTH } {
	# Procedure called to update KEEP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KEEP_WIDTH { PARAM_VALUE.KEEP_WIDTH } {
	# Procedure called to validate KEEP_WIDTH
	return true
}

proc update_PARAM_VALUE.START_ADDR { PARAM_VALUE.START_ADDR } {
	# Procedure called to update START_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.START_ADDR { PARAM_VALUE.START_ADDR } {
	# Procedure called to validate START_ADDR
	return true
}

proc update_PARAM_VALUE.START_DATA { PARAM_VALUE.START_DATA } {
	# Procedure called to update START_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.START_DATA { PARAM_VALUE.START_DATA } {
	# Procedure called to validate START_DATA
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.KEEP_WIDTH { MODELPARAM_VALUE.KEEP_WIDTH PARAM_VALUE.KEEP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KEEP_WIDTH}] ${MODELPARAM_VALUE.KEEP_WIDTH}
}

proc update_MODELPARAM_VALUE.START_ADDR { MODELPARAM_VALUE.START_ADDR PARAM_VALUE.START_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.START_ADDR}] ${MODELPARAM_VALUE.START_ADDR}
}

proc update_MODELPARAM_VALUE.START_DATA { MODELPARAM_VALUE.START_DATA PARAM_VALUE.START_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.START_DATA}] ${MODELPARAM_VALUE.START_DATA}
}

proc update_MODELPARAM_VALUE.BTT { MODELPARAM_VALUE.BTT PARAM_VALUE.BTT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BTT}] ${MODELPARAM_VALUE.BTT}
}

proc update_MODELPARAM_VALUE.DRR { MODELPARAM_VALUE.DRR PARAM_VALUE.DRR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DRR}] ${MODELPARAM_VALUE.DRR}
}

proc update_MODELPARAM_VALUE.DSA { MODELPARAM_VALUE.DSA PARAM_VALUE.DSA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DSA}] ${MODELPARAM_VALUE.DSA}
}


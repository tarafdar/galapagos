# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  #Adding Group
  set IP_Address [ipgui::add_group $IPINST -name "IP Address" -parent ${Page_0} -layout horizontal]
  set C_IP_B3 [ipgui::add_param $IPINST -name "C_IP_B3" -parent ${IP_Address} -show_label false]
  set_property tooltip {Byte3} ${C_IP_B3}
  ipgui::add_static_text $IPINST -name "dot0" -parent ${IP_Address} -text {.}
  ipgui::add_param $IPINST -name "C_IP_B2" -parent ${IP_Address} -show_label false
  ipgui::add_static_text $IPINST -name "dot1" -parent ${IP_Address} -text {.}
  ipgui::add_param $IPINST -name "C_IP_B1" -parent ${IP_Address} -show_label false
  ipgui::add_static_text $IPINST -name "dot2" -parent ${IP_Address} -text {.}
  ipgui::add_param $IPINST -name "C_IP_B0" -parent ${IP_Address} -show_label false

  #Adding Group
  set Gateway [ipgui::add_group $IPINST -name "Gateway" -parent ${Page_0} -layout horizontal]
  set_property tooltip {Gateway} ${Gateway}
  ipgui::add_param $IPINST -name "C_GATEWAY_B3" -parent ${Gateway} -show_label false
  ipgui::add_static_text $IPINST -name "dot3" -parent ${Gateway} -text {.}
  ipgui::add_param $IPINST -name "C_GATEWAY_B2" -parent ${Gateway} -show_label false
  ipgui::add_static_text $IPINST -name "dot4" -parent ${Gateway} -text {.}
  ipgui::add_param $IPINST -name "C_GATEWAY_B1" -parent ${Gateway} -show_label false
  ipgui::add_static_text $IPINST -name "dot5" -parent ${Gateway} -text {.}
  ipgui::add_param $IPINST -name "C_GATEWAY_B0" -parent ${Gateway} -show_label false

  #Adding Group
  set Subnet [ipgui::add_group $IPINST -name "Subnet" -parent ${Page_0} -layout horizontal]
  ipgui::add_param $IPINST -name "C_SUBNET_B3" -parent ${Subnet} -show_label false
  ipgui::add_static_text $IPINST -name "dot6" -parent ${Subnet} -text {.}
  ipgui::add_param $IPINST -name "C_SUBNET_B2" -parent ${Subnet} -show_label false
  ipgui::add_static_text $IPINST -name "dot7" -parent ${Subnet} -text {.}
  ipgui::add_param $IPINST -name "C_SUBNET_B1" -parent ${Subnet} -show_label false
  ipgui::add_static_text $IPINST -name "dot8" -parent ${Subnet} -text {.}
  ipgui::add_param $IPINST -name "C_SUBNET_B0" -parent ${Subnet} -show_label false

  #Adding Group
  set MAC_Address [ipgui::add_group $IPINST -name "MAC Address" -parent ${Page_0} -layout horizontal]
  ipgui::add_param $IPINST -name "C_MAC" -parent ${MAC_Address} -show_label false



}

proc update_PARAM_VALUE.C_GATEWAY_B0 { PARAM_VALUE.C_GATEWAY_B0 } {
	# Procedure called to update C_GATEWAY_B0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_GATEWAY_B0 { PARAM_VALUE.C_GATEWAY_B0 } {
	# Procedure called to validate C_GATEWAY_B0
	return true
}

proc update_PARAM_VALUE.C_GATEWAY_B1 { PARAM_VALUE.C_GATEWAY_B1 } {
	# Procedure called to update C_GATEWAY_B1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_GATEWAY_B1 { PARAM_VALUE.C_GATEWAY_B1 } {
	# Procedure called to validate C_GATEWAY_B1
	return true
}

proc update_PARAM_VALUE.C_GATEWAY_B2 { PARAM_VALUE.C_GATEWAY_B2 } {
	# Procedure called to update C_GATEWAY_B2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_GATEWAY_B2 { PARAM_VALUE.C_GATEWAY_B2 } {
	# Procedure called to validate C_GATEWAY_B2
	return true
}

proc update_PARAM_VALUE.C_GATEWAY_B3 { PARAM_VALUE.C_GATEWAY_B3 } {
	# Procedure called to update C_GATEWAY_B3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_GATEWAY_B3 { PARAM_VALUE.C_GATEWAY_B3 } {
	# Procedure called to validate C_GATEWAY_B3
	return true
}

proc update_PARAM_VALUE.C_IP_B0 { PARAM_VALUE.C_IP_B0 } {
	# Procedure called to update C_IP_B0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IP_B0 { PARAM_VALUE.C_IP_B0 } {
	# Procedure called to validate C_IP_B0
	return true
}

proc update_PARAM_VALUE.C_IP_B1 { PARAM_VALUE.C_IP_B1 } {
	# Procedure called to update C_IP_B1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IP_B1 { PARAM_VALUE.C_IP_B1 } {
	# Procedure called to validate C_IP_B1
	return true
}

proc update_PARAM_VALUE.C_IP_B2 { PARAM_VALUE.C_IP_B2 } {
	# Procedure called to update C_IP_B2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IP_B2 { PARAM_VALUE.C_IP_B2 } {
	# Procedure called to validate C_IP_B2
	return true
}

proc update_PARAM_VALUE.C_IP_B3 { PARAM_VALUE.C_IP_B3 } {
	# Procedure called to update C_IP_B3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IP_B3 { PARAM_VALUE.C_IP_B3 } {
	# Procedure called to validate C_IP_B3
	return true
}

proc update_PARAM_VALUE.C_MAC { PARAM_VALUE.C_MAC } {
	# Procedure called to update C_MAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAC { PARAM_VALUE.C_MAC } {
	# Procedure called to validate C_MAC
	return true
}

proc update_PARAM_VALUE.C_SUBNET_B0 { PARAM_VALUE.C_SUBNET_B0 } {
	# Procedure called to update C_SUBNET_B0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SUBNET_B0 { PARAM_VALUE.C_SUBNET_B0 } {
	# Procedure called to validate C_SUBNET_B0
	return true
}

proc update_PARAM_VALUE.C_SUBNET_B1 { PARAM_VALUE.C_SUBNET_B1 } {
	# Procedure called to update C_SUBNET_B1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SUBNET_B1 { PARAM_VALUE.C_SUBNET_B1 } {
	# Procedure called to validate C_SUBNET_B1
	return true
}

proc update_PARAM_VALUE.C_SUBNET_B2 { PARAM_VALUE.C_SUBNET_B2 } {
	# Procedure called to update C_SUBNET_B2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SUBNET_B2 { PARAM_VALUE.C_SUBNET_B2 } {
	# Procedure called to validate C_SUBNET_B2
	return true
}

proc update_PARAM_VALUE.C_SUBNET_B3 { PARAM_VALUE.C_SUBNET_B3 } {
	# Procedure called to update C_SUBNET_B3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SUBNET_B3 { PARAM_VALUE.C_SUBNET_B3 } {
	# Procedure called to validate C_SUBNET_B3
	return true
}


proc update_MODELPARAM_VALUE.C_IP_B0 { MODELPARAM_VALUE.C_IP_B0 PARAM_VALUE.C_IP_B0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IP_B0}] ${MODELPARAM_VALUE.C_IP_B0}
}

proc update_MODELPARAM_VALUE.C_IP_B1 { MODELPARAM_VALUE.C_IP_B1 PARAM_VALUE.C_IP_B1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IP_B1}] ${MODELPARAM_VALUE.C_IP_B1}
}

proc update_MODELPARAM_VALUE.C_IP_B2 { MODELPARAM_VALUE.C_IP_B2 PARAM_VALUE.C_IP_B2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IP_B2}] ${MODELPARAM_VALUE.C_IP_B2}
}

proc update_MODELPARAM_VALUE.C_IP_B3 { MODELPARAM_VALUE.C_IP_B3 PARAM_VALUE.C_IP_B3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IP_B3}] ${MODELPARAM_VALUE.C_IP_B3}
}

proc update_MODELPARAM_VALUE.C_GATEWAY_B0 { MODELPARAM_VALUE.C_GATEWAY_B0 PARAM_VALUE.C_GATEWAY_B0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_GATEWAY_B0}] ${MODELPARAM_VALUE.C_GATEWAY_B0}
}

proc update_MODELPARAM_VALUE.C_GATEWAY_B1 { MODELPARAM_VALUE.C_GATEWAY_B1 PARAM_VALUE.C_GATEWAY_B1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_GATEWAY_B1}] ${MODELPARAM_VALUE.C_GATEWAY_B1}
}

proc update_MODELPARAM_VALUE.C_GATEWAY_B2 { MODELPARAM_VALUE.C_GATEWAY_B2 PARAM_VALUE.C_GATEWAY_B2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_GATEWAY_B2}] ${MODELPARAM_VALUE.C_GATEWAY_B2}
}

proc update_MODELPARAM_VALUE.C_GATEWAY_B3 { MODELPARAM_VALUE.C_GATEWAY_B3 PARAM_VALUE.C_GATEWAY_B3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_GATEWAY_B3}] ${MODELPARAM_VALUE.C_GATEWAY_B3}
}

proc update_MODELPARAM_VALUE.C_SUBNET_B0 { MODELPARAM_VALUE.C_SUBNET_B0 PARAM_VALUE.C_SUBNET_B0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SUBNET_B0}] ${MODELPARAM_VALUE.C_SUBNET_B0}
}

proc update_MODELPARAM_VALUE.C_SUBNET_B1 { MODELPARAM_VALUE.C_SUBNET_B1 PARAM_VALUE.C_SUBNET_B1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SUBNET_B1}] ${MODELPARAM_VALUE.C_SUBNET_B1}
}

proc update_MODELPARAM_VALUE.C_SUBNET_B2 { MODELPARAM_VALUE.C_SUBNET_B2 PARAM_VALUE.C_SUBNET_B2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SUBNET_B2}] ${MODELPARAM_VALUE.C_SUBNET_B2}
}

proc update_MODELPARAM_VALUE.C_SUBNET_B3 { MODELPARAM_VALUE.C_SUBNET_B3 PARAM_VALUE.C_SUBNET_B3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SUBNET_B3}] ${MODELPARAM_VALUE.C_SUBNET_B3}
}

proc update_MODELPARAM_VALUE.C_MAC { MODELPARAM_VALUE.C_MAC PARAM_VALUE.C_MAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAC}] ${MODELPARAM_VALUE.C_MAC}
}


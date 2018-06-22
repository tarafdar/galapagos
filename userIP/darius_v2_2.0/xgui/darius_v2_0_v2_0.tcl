# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_LOG2_BUFFER_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_IMG_DIMENSION_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_INPUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_ITER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_KERN_DIMENSION_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_OUTPUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_PAD_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_POOL_DIMENSION_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_STRIDE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_CMD_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_CMD_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_IFM_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_IFM_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OFM_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OFM_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_WEIGHT_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_WEIGHT_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_NUM_OF_COLS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_NUM_OF_ROWS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_CONTROL_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_CONTROL_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_XILINX_FPGA_ARCH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_LOG2_BUFFER_DEPTH { PARAM_VALUE.C_LOG2_BUFFER_DEPTH } {
	# Procedure called to update C_LOG2_BUFFER_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LOG2_BUFFER_DEPTH { PARAM_VALUE.C_LOG2_BUFFER_DEPTH } {
	# Procedure called to validate C_LOG2_BUFFER_DEPTH
	return true
}

proc update_PARAM_VALUE.C_MAX_IMG_DIMENSION_WIDTH { PARAM_VALUE.C_MAX_IMG_DIMENSION_WIDTH } {
	# Procedure called to update C_MAX_IMG_DIMENSION_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_IMG_DIMENSION_WIDTH { PARAM_VALUE.C_MAX_IMG_DIMENSION_WIDTH } {
	# Procedure called to validate C_MAX_IMG_DIMENSION_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MAX_INPUT_WIDTH { PARAM_VALUE.C_MAX_INPUT_WIDTH } {
	# Procedure called to update C_MAX_INPUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_INPUT_WIDTH { PARAM_VALUE.C_MAX_INPUT_WIDTH } {
	# Procedure called to validate C_MAX_INPUT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MAX_ITER_WIDTH { PARAM_VALUE.C_MAX_ITER_WIDTH } {
	# Procedure called to update C_MAX_ITER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_ITER_WIDTH { PARAM_VALUE.C_MAX_ITER_WIDTH } {
	# Procedure called to validate C_MAX_ITER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MAX_KERN_DIMENSION_WIDTH { PARAM_VALUE.C_MAX_KERN_DIMENSION_WIDTH } {
	# Procedure called to update C_MAX_KERN_DIMENSION_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_KERN_DIMENSION_WIDTH { PARAM_VALUE.C_MAX_KERN_DIMENSION_WIDTH } {
	# Procedure called to validate C_MAX_KERN_DIMENSION_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MAX_OUTPUT_WIDTH { PARAM_VALUE.C_MAX_OUTPUT_WIDTH } {
	# Procedure called to update C_MAX_OUTPUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_OUTPUT_WIDTH { PARAM_VALUE.C_MAX_OUTPUT_WIDTH } {
	# Procedure called to validate C_MAX_OUTPUT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MAX_PAD_WIDTH { PARAM_VALUE.C_MAX_PAD_WIDTH } {
	# Procedure called to update C_MAX_PAD_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_PAD_WIDTH { PARAM_VALUE.C_MAX_PAD_WIDTH } {
	# Procedure called to validate C_MAX_PAD_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MAX_POOL_DIMENSION_WIDTH { PARAM_VALUE.C_MAX_POOL_DIMENSION_WIDTH } {
	# Procedure called to update C_MAX_POOL_DIMENSION_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_POOL_DIMENSION_WIDTH { PARAM_VALUE.C_MAX_POOL_DIMENSION_WIDTH } {
	# Procedure called to validate C_MAX_POOL_DIMENSION_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MAX_STRIDE_WIDTH { PARAM_VALUE.C_MAX_STRIDE_WIDTH } {
	# Procedure called to update C_MAX_STRIDE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_STRIDE_WIDTH { PARAM_VALUE.C_MAX_STRIDE_WIDTH } {
	# Procedure called to validate C_MAX_STRIDE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CMD_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_CMD_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_CMD_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CMD_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_CMD_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_CMD_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CMD_DATA_WIDTH { PARAM_VALUE.C_M_AXI_CMD_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_CMD_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CMD_DATA_WIDTH { PARAM_VALUE.C_M_AXI_CMD_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_CMD_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_IFM_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_IFM_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_IFM_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_IFM_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_IFM_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_IFM_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_IFM_DATA_WIDTH { PARAM_VALUE.C_M_AXI_IFM_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_IFM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_IFM_DATA_WIDTH { PARAM_VALUE.C_M_AXI_IFM_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_IFM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OFM_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_OFM_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_OFM_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OFM_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_OFM_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_OFM_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OFM_DATA_WIDTH { PARAM_VALUE.C_M_AXI_OFM_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_OFM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OFM_DATA_WIDTH { PARAM_VALUE.C_M_AXI_OFM_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_OFM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_WEIGHT_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_WEIGHT_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_WEIGHT_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_WEIGHT_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_WEIGHT_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_WEIGHT_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_WEIGHT_DATA_WIDTH { PARAM_VALUE.C_M_AXI_WEIGHT_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_WEIGHT_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_WEIGHT_DATA_WIDTH { PARAM_VALUE.C_M_AXI_WEIGHT_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_WEIGHT_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_NUM_OF_COLS { PARAM_VALUE.C_NUM_OF_COLS } {
	# Procedure called to update C_NUM_OF_COLS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_OF_COLS { PARAM_VALUE.C_NUM_OF_COLS } {
	# Procedure called to validate C_NUM_OF_COLS
	return true
}

proc update_PARAM_VALUE.C_NUM_OF_ROWS { PARAM_VALUE.C_NUM_OF_ROWS } {
	# Procedure called to update C_NUM_OF_ROWS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_OF_ROWS { PARAM_VALUE.C_NUM_OF_ROWS } {
	# Procedure called to validate C_NUM_OF_ROWS
	return true
}

proc update_PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_CONTROL_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_CONTROL_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_CONTROL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_CONTROL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_XILINX_FPGA_ARCH { PARAM_VALUE.C_XILINX_FPGA_ARCH } {
	# Procedure called to update C_XILINX_FPGA_ARCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_XILINX_FPGA_ARCH { PARAM_VALUE.C_XILINX_FPGA_ARCH } {
	# Procedure called to validate C_XILINX_FPGA_ARCH
	return true
}


proc update_MODELPARAM_VALUE.C_XILINX_FPGA_ARCH { MODELPARAM_VALUE.C_XILINX_FPGA_ARCH PARAM_VALUE.C_XILINX_FPGA_ARCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_XILINX_FPGA_ARCH}] ${MODELPARAM_VALUE.C_XILINX_FPGA_ARCH}
}

proc update_MODELPARAM_VALUE.C_NUM_OF_COLS { MODELPARAM_VALUE.C_NUM_OF_COLS PARAM_VALUE.C_NUM_OF_COLS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_OF_COLS}] ${MODELPARAM_VALUE.C_NUM_OF_COLS}
}

proc update_MODELPARAM_VALUE.C_NUM_OF_ROWS { MODELPARAM_VALUE.C_NUM_OF_ROWS PARAM_VALUE.C_NUM_OF_ROWS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_OF_ROWS}] ${MODELPARAM_VALUE.C_NUM_OF_ROWS}
}

proc update_MODELPARAM_VALUE.C_MAX_IMG_DIMENSION_WIDTH { MODELPARAM_VALUE.C_MAX_IMG_DIMENSION_WIDTH PARAM_VALUE.C_MAX_IMG_DIMENSION_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_IMG_DIMENSION_WIDTH}] ${MODELPARAM_VALUE.C_MAX_IMG_DIMENSION_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MAX_KERN_DIMENSION_WIDTH { MODELPARAM_VALUE.C_MAX_KERN_DIMENSION_WIDTH PARAM_VALUE.C_MAX_KERN_DIMENSION_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_KERN_DIMENSION_WIDTH}] ${MODELPARAM_VALUE.C_MAX_KERN_DIMENSION_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MAX_STRIDE_WIDTH { MODELPARAM_VALUE.C_MAX_STRIDE_WIDTH PARAM_VALUE.C_MAX_STRIDE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_STRIDE_WIDTH}] ${MODELPARAM_VALUE.C_MAX_STRIDE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MAX_PAD_WIDTH { MODELPARAM_VALUE.C_MAX_PAD_WIDTH PARAM_VALUE.C_MAX_PAD_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_PAD_WIDTH}] ${MODELPARAM_VALUE.C_MAX_PAD_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MAX_ITER_WIDTH { MODELPARAM_VALUE.C_MAX_ITER_WIDTH PARAM_VALUE.C_MAX_ITER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_ITER_WIDTH}] ${MODELPARAM_VALUE.C_MAX_ITER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MAX_INPUT_WIDTH { MODELPARAM_VALUE.C_MAX_INPUT_WIDTH PARAM_VALUE.C_MAX_INPUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_INPUT_WIDTH}] ${MODELPARAM_VALUE.C_MAX_INPUT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MAX_OUTPUT_WIDTH { MODELPARAM_VALUE.C_MAX_OUTPUT_WIDTH PARAM_VALUE.C_MAX_OUTPUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_OUTPUT_WIDTH}] ${MODELPARAM_VALUE.C_MAX_OUTPUT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_LOG2_BUFFER_DEPTH { MODELPARAM_VALUE.C_LOG2_BUFFER_DEPTH PARAM_VALUE.C_LOG2_BUFFER_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LOG2_BUFFER_DEPTH}] ${MODELPARAM_VALUE.C_LOG2_BUFFER_DEPTH}
}

proc update_MODELPARAM_VALUE.C_MAX_POOL_DIMENSION_WIDTH { MODELPARAM_VALUE.C_MAX_POOL_DIMENSION_WIDTH PARAM_VALUE.C_MAX_POOL_DIMENSION_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_POOL_DIMENSION_WIDTH}] ${MODELPARAM_VALUE.C_MAX_POOL_DIMENSION_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_IFM_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_IFM_ADDR_WIDTH PARAM_VALUE.C_M_AXI_IFM_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_IFM_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_IFM_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_IFM_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_IFM_DATA_WIDTH PARAM_VALUE.C_M_AXI_IFM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_IFM_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_IFM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_OFM_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_OFM_ADDR_WIDTH PARAM_VALUE.C_M_AXI_OFM_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OFM_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_OFM_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_OFM_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_OFM_DATA_WIDTH PARAM_VALUE.C_M_AXI_OFM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OFM_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_OFM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_WEIGHT_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_WEIGHT_ADDR_WIDTH PARAM_VALUE.C_M_AXI_WEIGHT_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_WEIGHT_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_WEIGHT_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_WEIGHT_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_WEIGHT_DATA_WIDTH PARAM_VALUE.C_M_AXI_WEIGHT_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_WEIGHT_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_WEIGHT_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CMD_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_CMD_ADDR_WIDTH PARAM_VALUE.C_M_AXI_CMD_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CMD_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CMD_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CMD_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_CMD_DATA_WIDTH PARAM_VALUE.C_M_AXI_CMD_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CMD_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CMD_DATA_WIDTH}
}


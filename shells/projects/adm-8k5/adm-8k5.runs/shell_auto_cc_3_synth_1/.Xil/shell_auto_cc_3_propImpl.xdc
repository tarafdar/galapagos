set_property SRC_FILE_INFO {cfile:/opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl rfile:../../../../../../../../../../opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl id:1 order:LATE scoped_inst:inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_ar/handshake unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl rfile:../../../../../../../../../../opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl id:2 order:LATE scoped_inst:inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_aw/handshake unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl rfile:../../../../../../../../../../opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl id:3 order:LATE scoped_inst:inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_w/handshake unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl rfile:../../../../../../../../../../opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl id:4 order:LATE scoped_inst:inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_resp_b/handshake unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl rfile:../../../../../../../../../../opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl id:5 order:LATE scoped_inst:inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_resp_r/handshake unmanaged:yes} [current_design]
current_instance inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_ar/handshake
set_property src_info {type:SCOPED_XDC file:1 line:19 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_hsdata_ff_reg*] -to [get_cells dest_hsdata_ff_reg*] 30.000
current_instance
current_instance inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_aw/handshake
set_property src_info {type:SCOPED_XDC file:2 line:19 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_hsdata_ff_reg*] -to [get_cells dest_hsdata_ff_reg*] 30.000
current_instance
current_instance inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_w/handshake
set_property src_info {type:SCOPED_XDC file:3 line:19 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_hsdata_ff_reg*] -to [get_cells dest_hsdata_ff_reg*] 30.000
current_instance
current_instance inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_resp_b/handshake
set_property src_info {type:SCOPED_XDC file:4 line:19 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_hsdata_ff_reg*] -to [get_cells dest_hsdata_ff_reg*] 12.000
current_instance
current_instance inst/gen_clock_conv.gen_async_lite_conv.clock_conv_lite_resp_r/handshake
set_property src_info {type:SCOPED_XDC file:5 line:19 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_hsdata_ff_reg*] -to [get_cells dest_hsdata_ff_reg*] 12.000

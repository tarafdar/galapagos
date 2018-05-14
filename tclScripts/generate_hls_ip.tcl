cd hlsIP_adm-8k5


open_project reverseEndian64 
set_top reverseEndian64
add_files ../hlsSources/srcs/reverseEndian64.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
source "../hlsSources/directives/reverseEndian64.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project


#test app for pr region

open_project conv_proj
set_top conv_layer 
add_files ../hlsTest/conv_layer.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 250MHz -name default
config_interface -m_axi_addr64 -m_axi_offset off -register_io off
#csim_design -compiler gcc
csynth_design
#cosim_design
export_design -format ip_catalog
close_project


quit

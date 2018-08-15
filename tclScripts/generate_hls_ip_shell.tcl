set boardName [lindex $argv 0]
set partName [lindex $argv 1]

cd hlsIP_${boardName}

open_project reverseEndian64 
set_top reverseEndian64
add_files ../hlsSources/srcs/reverseEndian64.cpp
open_solution "solution1"
#set_part {xcku115-flva1517-2-e}
set_part ${partName}
create_clock -period 5 -name default
#source "../hlsSources/directives/reverseEndian64.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project


quit

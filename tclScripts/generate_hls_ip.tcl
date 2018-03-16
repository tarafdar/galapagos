

cd hlsIP_adm-8k5


open_project heartBeat 
set_top heartBeat
add_files ../hlsSources/srcs/heartBeat.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
source "../hlsSources/directives/heartBeat.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project


open_project axiStreamGate 
set_top axiStreamGate
add_files ../hlsSources/srcs/axiStreamGate.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
source "../hlsSources/directives/axiStreamGate.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project

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


open_project fireWall64
set_top fireWall64
add_files ../hlsSources/srcs/fireWall64.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
source "../hlsSources/directives/fireWall64.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project

open_project fireWall64_2
set_top fireWall64_2
add_files ../hlsSources/srcs/fireWall64_2.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
source "../hlsSources/directives/fireWall64_2.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project

open_project packetFormatter_hardcode_64 
set_top packetFormatter_hardcode_64
add_files ../hlsSources/srcs/packetFormatter_hardcode_64.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
source "../hlsSources/directives/packetFormatter_hardcode_64.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project


quit

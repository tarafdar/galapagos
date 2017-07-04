############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
cd hlsIP_8k5


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


#userIP


open_project packetMaker
set_top packetMaker
add_files ../hlsSources/srcs/packetMaker.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
source "../hlsSources/directives/packetMaker.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project

open_project packetMask
set_top packetMask
add_files ../hlsSources/srcs/packetMask.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
source "../hlsSources/directives/packetMask.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project

open_project roundRobin 
set_top roundRobin
add_files ../hlsSources/srcs/roundRobin.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
source "../hlsSources/directives/roundRobin.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project




quit

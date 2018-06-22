############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ethernet_bridge
set_top ethernet_bridge
add_files ../hlsSources/srcs/ethernet_bridge.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 250MHz -name default
config_interface -expose_global
#source "./ethernet_bridge/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog

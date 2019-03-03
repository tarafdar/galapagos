#Author: Naif Tarafdar

cd hlsBuild 


open_project hlsTest 
set_top hlsTest
add_files ../hlsTest/hlsTest.cpp 
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
csynth_design
export_design -rtl verilog -format ip_catalog
close_project

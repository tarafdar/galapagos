#Author: Naif Tarafdar

cd userIP 

set MPI_HEADERS_DIR "../HMPI/HLS_lib/"

open_project hlsTest 
set_top hlsTest
add_files hlsTest.cpp -cflags "-I ${MPI_HEADERS_DIR} "
#add_files ../HMPI/HLS_lib/HUM.cpp -cflags "-I ${MPI_HEADERS_DIR} "
#add_files -tb hlsTest_test.cpp -cflags "-I .  -std=c++0x"
#add_files -tb hlsTest_test.cpp  
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
#config_interface -m_axi_addr64 -m_axi_offset off -register_io off -expose_global=true
#config_interface -m_axi_addr64 -m_axi_offset off -register_io off
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project

#Author: Naif Tarafdar

cd userIP

set MPI_HEADERS_DIR "../HMPI/HLS_lib/"

open_project dariusController  
set_top dariusController
add_files ../telepathy/hlsSources/dariusController.cpp -cflags "-I ${MPI_HEADERS_DIR} "
#add_files ../HMPI/HLS_lib/HUM.cpp -cflags "-I ${MPI_HEADERS_DIR} "
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
config_interface -m_axi_addr64 -m_axi_offset off -register_io off -expose_global=true
csynth_design
export_design -rtl verilog -format ip_catalog
close_project

#open_project dummy  
#set_top dummy
#add_files ../telepathy/hlsSources/dummy.cpp -cflags "-I ${MPI_HEADERS_DIR} "
##add_files ../HMPI/HLS_lib/HUM.cpp -cflags "-I ${MPI_HEADERS_DIR} "
#open_solution "solution1"
#set_part {xcku115-flva1517-2-e}
#create_clock -period 5 -name default
#config_interface -m_axi_addr64 -m_axi_offset off -register_io off -expose_global=true
#csynth_design
#export_design -rtl verilog -format ip_catalog
#close_project

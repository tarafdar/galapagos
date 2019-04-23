#Author: Naif Tarafdar

set galapagos_path $::env(GALAPAGOS_PATH)
set board_name $::env(GALAPAGOS_BOARD_NAME)
set part_name $::env(GALAPAGOS_PART)
set src_path_root $galapagos_path/telepathy/hlsSources


cd $galapagos_path/hlsBuild/${board_name}/ip


open_project dariusController_raw 
set_top dariusController_raw
add_files $src_path_root/dariusController_raw.cpp -cflags "-I $galapagos_path/middleware/include "
#add_files -tb $src_path_root/dariusController_test.cpp -cflags "-I $galapagos_path/middleware/include "
open_solution "solution1"
set_part ${part_name}
create_clock -period 5 -name default
#config_interface -m_axi_addr64 -m_axi_offset off -register_io off -expose_global=true
csynth_design
#cosim_design
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

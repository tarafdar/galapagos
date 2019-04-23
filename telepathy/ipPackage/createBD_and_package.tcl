
create_bd_design ${ip_name}
open_bd_design ./ML_layer/projects/${proj_name}/${proj_name}_9.srcs/sources_1/bd/${ip_name}/${ip_name}.bd
#source ./telepathy/ipPackage/recreate_bd_v1.tcl
source ./telepathy/ipPackage/recreate_bd_demo.tcl


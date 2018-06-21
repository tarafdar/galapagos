set ip_name dariusMPI_debug
set proj_name ${ip_name}_proj 

create_project ${proj_name} telepathy/projects -part xcku115-flva1517-2-e

set_property  ip_repo_paths  {./userIP} [current_project]
update_ip_catalog

create_bd_design ${ip_name}
open_bd_design ./ML_layer/projects/${proj_name}/${proj_name}.srcs/sources_1/bd/${ip_name}/${ip_name}.bd
#source ./telepathy/ipPackage/recreate_bd_v1.tcl
source ./telepathy/ipPackage/recreate_bd_v2.tcl

source ./telepathy/ipPackage/debug.tcl


source ./telepathy/ipPackage/package_ip.tcl

close_project
file delete -force ./telepathy/projects

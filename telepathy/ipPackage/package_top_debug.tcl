set proj_name dariusMPI_debug_proj 

create_project ${proj_name} telepathy/projects -part xcku115-flva1517-2-e

set_property  ip_repo_paths  {./userIP ./shells/shell_ips} [current_project]
update_ip_catalog

set ip_name dariusMPI_8x8
set row_col 8
source ./telepathy/ipPackage/createBD_and_package.tcl
source ./telepathy/ipPackage/package_ip.tcl

set ip_name dariusMPI_debug_8x8
set row_col 8
source ./telepathy/ipPackage/createBD_and_package.tcl
source ./telepathy/ipPackage/debug.tcl
source ./telepathy/ipPackage/package_ip.tcl

set ip_name dariusMPI_16x16
set row_col 16 
source ./telepathy/ipPackage/createBD_and_package.tcl
source ./telepathy/ipPackage/package_ip.tcl

set ip_name dariusMPI_debug_16x16
set row_col 16 
source ./telepathy/ipPackage/createBD_and_package.tcl
source ./telepathy/ipPackage/debug.tcl
source ./telepathy/ipPackage/package_ip.tcl

set ip_name dariusMPI_32x32
set row_col 32 
source ./telepathy/ipPackage/createBD_and_package.tcl
source ./telepathy/ipPackage/package_ip.tcl

set ip_name dariusMPI_debug_32x32
set row_col 32 
source ./telepathy/ipPackage/createBD_and_package.tcl
source ./telepathy/ipPackage/debug.tcl
source ./telepathy/ipPackage/package_ip.tcl

close_project
file delete -force ./telepathy/projects

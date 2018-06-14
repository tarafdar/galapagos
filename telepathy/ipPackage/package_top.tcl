
create_project darius_wrapper_ip telepathy/projects -part xcku115-flva1517-2-e

set_property  ip_repo_paths  {./PYNQ-DL/darius/ip ./userIP} [current_project]
update_ip_catalog

create_bd_design darius_wrapper_bd
open_bd_design ./ML_layer/projects/darius_wrapper_ip/darius_wrapper_ip.srcs/sources_1/bd/darius_wrapper_bd/darius_wrapper_bd.bd
#source ./telepathy/ipPackage/recreate_bd_v1.tcl
source ./telepathy/ipPackage/recreate_bd_v2.tcl

ipx::package_project -root_dir ./userIP/dariusWrapper -vendor user.org -library user -taxonomy /UserIP -module darius_wrapper_bd -import_files
set_property core_revision 2 [ipx::find_open_core user.org:user:darius_wrapper_bd:1.0]
ipx::create_xgui_files [ipx::find_open_core user.org:user:darius_wrapper_bd:1.0]
ipx::update_checksums [ipx::find_open_core user.org:user:darius_wrapper_bd:1.0]
ipx::save_core [ipx::find_open_core user.org:user:darius_wrapper_bd:1.0]
close_project
file delete -force ./telepathy/projects

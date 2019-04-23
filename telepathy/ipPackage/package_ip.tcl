ipx::package_project -root_dir ./userIP/${ip_name} -vendor galapagos.org -library galapagos -taxonomy /UserIP -module ${ip_name} -import_files
set_property core_revision 2 [ipx::find_open_core galapagos.org:galapagos:${ip_name}:1.0]
set_property supported_families {kintexu Production zynquplus Beta zynq Production} [ipx::find_open_core galapagos.org:galapagos:${ip_name}:1.0]
ipx::create_xgui_files [ipx::find_open_core galapagos.org:galapagos:${ip_name}:1.0]
ipx::update_checksums [ipx::find_open_core galapagos.org:galapagos:${ip_name}:1.0]
ipx::save_core [ipx::find_open_core galapagos.org:galapagos:${ip_name}:1.0]


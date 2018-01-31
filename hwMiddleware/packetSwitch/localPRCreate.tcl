# Create project
create_project $fpgaNum projects/$projName/$fpgaNum -part $part 

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Reconstruct message rules
set_msg_config  -ruleid {1}  -id {[BD 41-1306]}  -suppress  -source 2
set_msg_config  -ruleid {2}  -id {[BD 41-1271]}  -suppress  -source 2
set_msg_config  -ruleid {7}  -id {[BD 41-1306]}  -suppress  -source 2
set_msg_config  -ruleid {8}  -id {[BD 41-1271]}  -suppress  -source 2


# Set project properties
set obj [get_projects $fpgaNum]
set_property "board_part" "" $obj
set_property "compxlib.activehdl_compiled_library_dir" "projects/$projName/$fpgaNum/$fpgaNum.cache/compile_simlib/activehdl" $obj
set_property "compxlib.funcsim" "1" $obj
set_property "compxlib.ies_compiled_library_dir" "projects/$projName/$fpgaNum/$fpgaNum.cache/compile_simlib/ies" $obj
set_property "compxlib.modelsim_compiled_library_dir" "projects/$projName/$fpgaNum/$fpgaNum.cache/compile_simlib/modelsim" $obj
set_property "compxlib.overwrite_libs" "0" $obj
set_property "compxlib.questa_compiled_library_dir" "projects/$projName/$fpgaNum/$fpgaNum.cache/compile_simlib/questa" $obj
set_property "compxlib.riviera_compiled_library_dir" "projects/$projName/$fpgaNum/$fpgaNum.cache/compile_simlib/riviera" $obj
set_property "compxlib.timesim" "1" $obj
set_property "compxlib.vcs_compiled_library_dir" "projects/$projName/$fpgaNum/$fpgaNum.cache/compile_simlib/vcs" $obj
set_property "compxlib.xsim_compiled_library_dir" "" $obj
set_property "corecontainer.enable" "1" $obj
set_property "default_lib" "xil_defaultlib" $obj
set_property "dsa.num_compute_units" "16" $obj
set_property "enable_optional_runs_sta" "0" $obj
set_property "generate_ip_upgrade_log" "1" $obj
set_property "ip_cache_permissions" "read write" $obj
set_property "managed_ip" "0" $obj
set_property "part" $part $obj
set_property "pr_flow" "0" $obj
set_property "sim.ip.auto_export_scripts" "1" $obj
set_property "sim.use_ip_compiled_libs" "1" $obj
set_property "simulator_language" "Mixed" $obj
set_property "source_mgmt_mode" "All" $obj
set_property "target_language" "Verilog" $obj
set_property "target_simulator" "XSim" $obj
set_property "xpm_libraries" "XPM_CDC XPM_MEMORY" $obj
set_property "xsim.array_display_limit" "64" $obj
set_property "xsim.radix" "hex" $obj
set_property "xsim.time_unit" "ns" $obj
set_property "xsim.trace_limit" "65536" $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
set_property "ip_repo_paths" "[file normalize "$origin_dir/hlsIP_8k5"]" $obj

# Rebuild user ip_repo's index before adding any source files
update_ip_catalog -rebuild
#---- makes .bd
create_bd_design "pr"
#open_bd_design {projects/$projName/$fpgaNum/$fpgaNum.srcs/sources_1/bd/pr/pr.bd}
source projects/$projName/$fpgaNum/$fpgaNum.tcl

# Set 'sources_1' fileset file properties for remote files
set file "projects/$projName/$fpgaNum/$fpgaNum.srcs/sources_1/bd/pr/pr.bd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
  #set_property "synth_checkpoint_mode" "Hierarchical" $file_obj

}
#------ 

generate_target all [get_files projects/$projName/$fpgaNum/$fpgaNum.srcs/sources_1/bd/pr/pr.bd]
export_ip_user_files -of_objects [get_files projects/$projName/$fpgaNum/$fpgaNum.srcs/sources_1/bd/pr/pr.bd] -no_script -sync -force -quiet
create_ip_run [get_files -of_objects [get_fileset sources_1] projects/$projName/$fpgaNum/$fpgaNum.srcs/sources_1/bd/pr/pr.bd]
launch_runs -jobs 20 pr_synth_1
wait_on_run pr_synth_1

# # Make a top module
# make_wrapper -files [get_files /home/savi/nariman/Naif_test/MIXcoatl/projects/nariman/0/0.srcs/sources_1/bd/pr/pr.bd] -top
# add_files -norecurse /home/savi/nariman/Naif_test/MIXcoatl/projects/nariman/0/0.srcs/sources_1/bd/pr/hdl/pr_wrapper.v

# # Get the list of runs and reset them
# set ooc_runs [get_runs -filter {IS_SYNTHESIS} ]
# foreach run $ooc_runs { reset_run $run }

# if { [ llength $ooc_runs ] } {
#   launch_runs -jobs 20 $ooc_runs
# }
# set checkpoints [get_property NAME [get_bd_cells]]
# foreach run $ooc_runs { wait_on_run $run }

close_project

open_checkpoint shells/projects/$projDir_static/static_design.dcp
read_checkpoint -cell pr_wrapper_i/pr_i projects/$projName/$fpgaNum/$fpgaNum.runs/pr_synth_1/pr.dcp


# foreach cp $checkpoints {
#   read_checkpoint -cell pr_wrapper_i/pr_i/pr_i/$cp projects/$projName/$fpgaNum/$fpgaNum.runs/pr_${cp}_0_synth_1/pr_${cp}_0.dcp
#   #puts stdout $cp
# }



opt_design
place_design
route_design
write_bitstream -force -file projects/$projName/$fpgaNum/top.bit
close_project



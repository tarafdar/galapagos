
if { [file exists ./projects/$projDir/$projName/$projName.srcs/sources_1/synth_pr.v] } {
    remove_files ./projects/$projDir/$projName/$projName.srcs/sources_1/synth_pr.v
    file delete -force ./projects/$projDir/$projName/$projName.srcs/sources_1/synth_pr.v
}


if { [file exists ./projects/$projDir/$projName/$projName.srcs/sources_1/bd/mem/mem.bd] } {
    remove_files ./projects/$projDir/$projName/$projName.srcs/sources_1/bd/mem/mem.bd
    file delete -force ./projects/$projDir/$projName/$projName.srcs/sources_1/bd/mem/mem.bd
}

if { [file exists ./projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd] } {
    remove_files ./projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd
    file delete -force ./projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd
}

if { {array size [get_runs -filter {IS_SYNTHESIS && name == "synth_1"}]} == 1 } {
    reset_run synth_1
}

# Set 'sources_1' fileset object
create_bd_design "pr"
open_bd_design {projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd}
source $pr_tcl_file
#make_wrapper -files [get_files projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd] -top
#add_files -norecurse projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/hdl/pr_wrapper.v

# Set 'sources_1' fileset file properties for remote files
set file "projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "None" $file_obj
}

validate_bd_design

generate_target all [get_files  projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd]
#export_ip_user_files -of_objects [get_files projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd] -no_script -sync -force -quiet
#launch_runs -jobs 8 [create_ip_run [get_files -of_objects [get_fileset sources_1] projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd]]
#set_property top pr_wrapper [current_fileset]
#
#set ooc_runs [get_runs -filter {IS_SYNTHESIS && name != "synth_1"} ]
#foreach run $ooc_runs { wait_on_run $run}
#launch_runs synth_1 -jobs 8
#wait_on_run synth_1
#
#open_run synth_1 -name synth_1
#write_verilog ./projects/$projDir/$projName/$projName.srcs/sources_1/synth_pr.v
#remove_files  projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/hdl/pr_wrapper.v
#file delete -force  projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/hdl/pr_wrapper.v
#remove_files  projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd
#file delete -force  projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd
#add_files ./projects/$projDir/$projName/$projName.srcs/sources_1/synth_pr.v 
#close_design
#

# Set 'sources_1' fileset object
create_bd_design "mem"
open_bd_design {projects/$projDir/$projName/$projName.srcs/sources_1/bd/mem/mem.bd}
source ./shells/$boardName/tclScripts/sim_mig.tcl
validate_bd_design

set file "projects/$projDir/$projName/$projName.srcs/sources_1/bd/mem/mem.bd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "None" $file_obj
}

generate_target all [get_files  projects/$projDir/$projName/$projName.srcs/sources_1/bd/mem/mem.bd]

set_property top top_sim [current_fileset]

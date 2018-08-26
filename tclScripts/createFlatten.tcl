set boardName [lindex $argv 0]
set projDir [lindex $argv 1]
set projName [lindex $argv 2]

if { $::argc > 3 } {
    set pr_tcl_file [lindex $argv 3]
} else {
    set pr_tcl_file projects/$projDir/$projName/$projName.tcl
}
puts $boardName
puts $projDir
puts $projName
puts $pr_tcl_file


if {$boardName eq "adm-8k5"} {
    set partName xcku115-flva1517-2-e
} elseif {$boardName eq "adm-8k5-debug"} {
    set partName xcku115-flva1517-2-e
}

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "projects/$projDir"]"

# Create project
#create_project $projName projects/$projDir/$projName -part xcku115-flva1517-2-e
create_project $projName projects/$projDir/$projName -part $partName

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Reconstruct message rules
set_msg_config  -ruleid {7}  -id {[BD 41-1306]}  -suppress  -source 2
set_msg_config  -ruleid {8}  -id {[BD 41-1271]}  -suppress  -source 2


# Set project properties
set obj [get_projects $projName]
set_property "corecontainer.enable" "1" $obj
set_property "default_lib" "xil_defaultlib" $obj
set_property "ip_cache_permissions" "read write" $obj
set_property "ip_output_repo" "shells/projects/$projDir/$projDir.cache/ip" $obj
#set_property "part" "xcku115-flva1517-2-e" $obj
set_property "part" $partName $obj
set_property "sim.ip.auto_export_scripts" "1" $obj
set_property "simulator_language" "Mixed" $obj
set_property "xpm_libraries" "XPM_CDC XPM_MEMORY" $obj
set_property "xsim.array_display_limit" "64" $obj
set_property "xsim.trace_limit" "65536" $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
#set_property ip_repo_paths {hlsIP_8k5 networkingIPRepo}
set_property ip_repo_paths {hlsIP_adm-8k5 shells/shell_ips userIP} [current_project]

# Rebuild user ip_repo's index before adding any source files
update_ip_catalog -rebuild

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
#set files [list \
# "[file normalize "shells/$boardName/srcs/shell.bd"]"\
# "[file normalize "shells/$boardName/srcs/shellTop.v"]"\
# "[file normalize "shells/$boardName/constraints/custom_parts_2133.csv"]"\
#]
set files [glob shells/$boardName/srcs/*]
import_files -norecurse -fileset $obj $files
#add_files -norecurse -fileset $obj $files

create_bd_design "shell"
open_bd_design {projects/$projDir/$projName/$projName.srcs/sources_1/bd/shell/shell.bd}
source ./tclScripts/shell_bd.tcl

# Set 'sources_1' fileset file properties for remote files
#set file "projects/$projDir/$projName/$projName.srcs/sources_1/bd/srcs/shell.bd"
set file "projects/$projDir/$projName/$projName.srcs/sources_1/bd/shell/shell.bd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Hierarchical" $file_obj
}

set files [glob shells/$boardName/sim/*]
import_files -norecurse -fileset sim_1 $files

# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property "top" "shellTop" $obj


# Set 'sources_1' fileset object
create_bd_design "pr"
open_bd_design {projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd}
#source projects/$projDir/$projName/$projName.tcl
source $pr_tcl_file 

# Set 'sources_1' fileset file properties for remote files
set file "projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Hierarchical" $file_obj
}


# Set 'sources_1' fileset file properties for local files
# None

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties

set constFiles [glob shells/$boardName/constraints/*.xdc]
foreach constFilePath $constFiles { 
    set constFile [file tail $constFilePath]
    set file "[file normalize "shells/$boardName/constraints/$constFile"]"
    set file_imported [import_files -fileset constrs_1 $file]
    set file "projects/$projDir/$projName/$projName.srcs/constrs_1/imports/constraints/$constFile"
    set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
    set_property "file_type" "XDC" $file_obj
    set_property "is_enabled" "1" $file_obj
    set_property "is_global_include" "0" $file_obj
    set_property "library" "xil_defaultlib" $file_obj
    set_property "path_mode" "RelativeFirst" $file_obj
    set_property "processing_order" "NORMAL" $file_obj
    set_property "scoped_to_cells" "" $file_obj
    set_property "scoped_to_ref" "" $file_obj
    set_property "used_in" "synthesis implementation" $file_obj
}

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "top" "shellTop" $obj
set_property "transport_int_delay" "0" $obj
set_property "transport_path_delay" "0" $obj
set_property "xelab.nosort" "1" $obj
set_property "xelab.unifast" "" $obj

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  #create_run -name synth_1 -part xcku115-flva1517-2-e -flow {Vivado Synthesis 2016} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
  create_run -name synth_1 -part $partName -flow {Vivado Synthesis 2016} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2016" [get_runs synth_1]
}
set obj [get_runs synth_1]
#set_property "part" "xcku115-flva1517-2-e" $obj
set_property "part" $partName $obj


# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  #create_run -name impl_1 -part xcku115-flva1517-2-e -flow {Vivado Implementation 2016} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
  create_run -name impl_1 -part $partName -flow {Vivado Implementation 2016} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2016" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "part" $partName $obj
set_property "steps.write_bitstream.args.readback_file" "0" $obj
set_property "steps.write_bitstream.args.verbose" "0" $obj


puts "INFO: Project created:$projDir"

update_compile_order -fileset sources_1
generate_target all [get_files  projects/$projDir/$projName/$projName.srcs/sources_1/bd/shell/shell.bd]
export_ip_user_files -of_objects [get_files projects/$projDir/$projName/$projName.srcs/sources_1/bd/shell/shell.bd] -no_script -sync -force -quiet
launch_runs -jobs 8 [create_ip_run [get_files -of_objects [get_fileset sources_1] projects/$projDir/$projName/$projName.srcs/sources_1/bd/shell/shell.bd]]
set ooc_runs [get_runs -filter {IS_SYNTHESIS && name != "synth_1"} ]
foreach run $ooc_runs { wait_on_run $run}

update_compile_order -fileset sources_1
generate_target all [get_files  projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd]
export_ip_user_files -of_objects [get_files projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd] -no_script -sync -force -quiet
launch_runs -jobs 8 [create_ip_run [get_files -of_objects [get_fileset sources_1] projects/$projDir/$projName/$projName.srcs/sources_1/bd/pr/pr.bd]]
set ooc_runs [get_runs -filter {IS_SYNTHESIS && name != "synth_1"} ]
foreach run $ooc_runs { wait_on_run $run}

update_compile_order -fileset sources_1
# set the current impl run
current_run -implementation [get_runs impl_1]

launch_runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
#source ./tclScripts/synth_impl.tcl
#close_project


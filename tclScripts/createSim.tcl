set boardName [lindex $argv 0]
set projDir [lindex $argv 1]
set projName [lindex $argv 2]
set simDir [lindex $argv 3]


if { $::argc > 4 } {
    set pr_tcl_file [lindex $argv 4]
} else {
    set pr_tcl_file projects/$projDir/$projName/$projName.tcl
}


puts $boardName
puts $projDir
puts $projName


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

## Set 'sources_1' fileset object
set obj [get_filesets sources_1]
#set files [glob shells/$boardName/srcs/top_sim.v]
#import_files -norecurse -fileset $obj $files

set files [glob shells/$boardName/srcs/*.csv]
import_files -norecurse -fileset $obj $files

#set files [glob shells/$boardName/sim/top_sim.v]
#import_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset properties
#set obj [get_filesets sources_1]


# Set 'sources_1' fileset file properties for local files
# None

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset properties
#set obj [get_filesets constrs_1]

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

set files [glob shells/$boardName/sim/*]
import_files -norecurse -fileset sim_1 $files

set files [glob $simDir/*]
import_files -norecurse -fileset sim_1 $files

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "top" "testbench" $obj
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


set obj [get_filesets sources_1]
set files [glob shells/$boardName/sim/top_sim.v]
import_files -norecurse -fileset $obj $files
source ./tclScripts/createSim_pr_bd.tcl
set_property sim.use_ip_compiled_libs 0 [current_project]
set_param synth.vivado.filterDuplicatedIPFiles 0

#launch_simulation 


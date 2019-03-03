# Help information for this script
proc help {} {
  variable script_file
  puts "\nDescription:"
  puts "Makes a shell for the board based on environment variables\n"
  puts "Syntax:"

  puts "$script_file -tclargs --project_name <name>"
  puts "$script_file -tclargs \[--help\]\n"
  puts "Usage:"
  puts "Name                   Description"
  puts "-------------------------------------------------------------------------"
  puts "--project_name <name>  The name of the Vivado project for this shell"
  puts "\[--help\]               Print help information for this script"
  puts "-------------------------------------------------------------------------\n"
  exit 0
}

if { $::argc > 0 } {
  for {set i 0} {$i < $::argc} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--project_name" { incr i; set project_name [lindex $::argv $i] }
      "--pr_tcl" { incr i; set pr_tcl [lindex $::argv $i] }
      "--start_synth" { incr i; set start_synth [lindex $::argv $i] }
      "--help"         { help }
      default {
        if { [regexp {^-} $option] } {
          puts "ERROR: Unknown option '$option' specified, please type '$script_file -tclargs --help' for usage info.\n"
          return 1
        }
      }
    }
  }
} else {
  puts "ERROR: no arguments specified to make_shell.tcl"
  return 1
}

set orig_proj_dir "[file normalize "projects/$project_name"]"

if { [info exists ::env(GALAPAGOS_PATH)] } {
    set top_path ${::env(GALAPAGOS_PATH)}
    set top_shells ${::env(GALAPAGOS_PATH)}/shells
    set shell_path ${::env(GALAPAGOS_PATH)}/shells/${::env(GALAPAGOS_BOARD_NAME)}
    set top_part ${::env(GALAPAGOS_PART)}
    set top_board ${::env(GALAPAGOS_BOARD_NAME)}

    if { [info exists ::env(GALAPAGOS_BOARD)] } {
        set top_board_part ${::env(GALAPAGOS_BOARD)}
    }
} else {
    set top_path ${::env(SHELLS_PATH)}
    set top_shells $top_path 
    set top_part ${::env(SHELLS_PART)}
    set top_board ${::env(SHELLS_BOARD_NAME)}
    if { [info exists ::env(SHELLS_BOARD)] } {
        set top_board_part ${::env(SHELLS_BOARD)}
    }
}

set shell_path $top_shells/$top_board
set project_path $top_path/projects/$project_name
if { ! [info exists start_synth] } {
    set start_synth 0
}    
create_project $project_name $project_path -part $top_part -force





# Set the directory path for the new project
# set proj_dir [get_property directory [current_project]]

# Reconstruct message rules
set_msg_config  -ruleid {7}  -id {[BD 41-1306]}  -suppress  -source 2
set_msg_config  -ruleid {8}  -id {[BD 41-1271]}  -suppress  -source 2

# Set project properties
set obj [current_project]
set_property "part" $top_part $obj
if { [info exists top_board_part] } {
    set_property board_part $top_board -objects $obj
}
if { [file exists $shell_path/tclScripts/shell_prologue.tcl] } {
  set ret_val [source $shell_path/tclScripts/shell_prologue.tcl]
  if { $ret_val != 0 } {
    puts "Error in shell_prologue script"
    return $ret_val
  }
}

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
# set_property ip_repo_paths {hlsIP_adm-8k5 shells/shell_ips userIP} [current_project]
set_property ip_repo_paths [list \
  hlsBuild \
  $top_shells/shell_ips \
  userIP] [current_project]

# Rebuild user ip_repo's index before adding any source files
update_ip_catalog -rebuild

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
if {! [catch {glob $shell_path/srcs/*} yikes] } {
  set files [glob $shell_path/srcs/*]
  import_files -norecurse -fileset $obj $files
}

create_bd_design "shell"
# open_bd_design $project_path/$project_name.srcs/sources_1/bd/shell/shell.bd
set ret_val [source $shell_path/tclScripts/shell_bd.tcl]
if { $ret_val != 0 } {
  puts "Error in shell_bd script"
  return $ret_val
}

# Set 'sources_1' fileset file properties for remote files
set file "$project_path/$project_name.srcs/sources_1/bd/shell/shell.bd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Hierarchical" $file_obj
}

if {! [catch {glob $shell_path/sim/*} yikes] } {
  set files [glob $shell_path/sim/*]
  import_files -norecurse -fileset sim_1 $files
}

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property "top" "shellTop" $obj

# Set 'sources_1' fileset object
create_bd_design "pr"
open_bd_design $project_path/$project_name.srcs/sources_1/bd/pr/pr.bd


if { [info exists pr_tcl] } {
    source $pr_tcl
} else {
    set ret_val [source $top_shells/tclScripts/pr_standard_interfaces.tcl]
    if { $ret_val != 0 } {
      puts "Error in pr_standard_interfaces script"
      return $ret_val
    } 
    
    # Set 'sources_1' fileset file properties for remote files
    set file "$project_path/$project_name.srcs/sources_1/bd/pr/pr.bd"
    set file [file normalize $file]
    set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
    if { ![get_property "is_locked" $file_obj] } {
      set_property "synth_checkpoint_mode" "Hierarchical" $file_obj
    }
}

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
if {! [catch {glob shells/$top_board/constraints/*.xdc} yikes] } {
  set constFiles [glob shells/$top_board/constraints/*.xdc]
  foreach constFilePath $constFiles { 
    set constFile [file tail $constFilePath]
    set file "[file normalize "$shell_path/constraints/$constFile"]"
    set file_imported [import_files -fileset constrs_1 $file]
    set file "$project_path/$project_name.srcs/constrs_1/imports/constraints/$constFile"
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
  create_run -name synth_1 -part $top_part -flow {Vivado Synthesis 2016} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2016" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property "part" $top_part $obj

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  #create_run -name impl_1 -part xcku115-flva1517-2-e -flow {Vivado Implementation 2016} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
  create_run -name impl_1 -part $top_part -flow {Vivado Implementation 2016} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2016" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "part" $top_part $obj
set_property "steps.write_bitstream.args.readback_file" "0" $obj
set_property "steps.write_bitstream.args.verbose" "0" $obj

if { [file exists $shell_path/tclScripts/shell_epilogue.tcl] } {
  set ret_val [source $shell_path/tclScripts/shell_epilogue.tcl]
  if { $ret_val != 0 } {
    puts "Error in shell_epilogue script"
    return $ret_val
  }
}

puts "INFO: Project created:$project_name"

if { $start_synth != 0 } {
    update_compile_order -fileset sources_1
    generate_target all [get_files  $project_path/$project_name.srcs/sources_1/bd/srcs/shell.bd]
    export_ip_user_files -of_objects [get_files $project_path/$project_name.srcs/sources_1/bd/srcs/shell.bd] -no_script -sync -force -quiet
    launch_runs -jobs 8 [create_ip_run [get_files -of_objects [get_fileset sources_1] $project_path/$project_name.srcs/sources_1/bd/srcs/shell.bd]]
    set ooc_runs [get_runs -filter {IS_SYNTHESIS && name != "synth_1"} ]
    foreach run $ooc_runs { wait_on_run $run}
    
    generate_target all [get_files  $project_path/$project_name.srcs/sources_1/bd/pr/pr.bd]
    export_ip_user_files -of_objects [get_files $project_path/$project_name.srcs/sources_1/bd/pr/pr.bd] -no_script -sync -force -quiet
    launch_runs -jobs 8 [create_ip_run [get_files -of_objects [get_fileset sources_1] $project_path/$project_name.srcs/sources_1/bd/pr/pr.bd]]
    set ooc_runs [get_runs -filter {IS_SYNTHESIS && name != "synth_1"} ]
    foreach run $ooc_runs { wait_on_run $run}
    
    # set the current impl run
    current_run -implementation [get_runs impl_1]
    
    launch_runs synth_1 -jobs 8
    wait_on_run synth_1
    launch_runs impl_1 -to_step write_bitstream -jobs 8
    wait_on_run impl_1
}
#source ./tclScripts/synth_impl.tcl
#close_project

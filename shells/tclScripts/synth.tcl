
if { $start_synth != 0 } {
    update_compile_order -fileset sources_1
    generate_target all [get_files  $project_path/$project_name.srcs/sources_1/bd/shell/shell.bd]
    export_ip_user_files -of_objects [get_files $project_path/$project_name.srcs/sources_1/bd/shell/shell.bd] -no_script -sync -force -quiet
    launch_runs -jobs 8 [create_ip_run [get_files -of_objects [get_fileset sources_1] $project_path/$project_name.srcs/sources_1/bd/shell/shell.bd]]
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

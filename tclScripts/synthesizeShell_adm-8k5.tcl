source tclScripts/configurationParametersShell_adm-8k5.tcl
generate_target all [get_files  shells/projects/$projName/$projName.srcs/sources_1/bd/$prDir/pr.bd]
export_ip_user_files -of_objects [get_files shells/projects/$projName/$projName.srcs/sources_1/bd/$prDir/pr.bd] -no_script -sync -force -quiet
create_ip_run [get_files -of_objects [get_fileset sources_1] shells/projects/$projName/$projName.srcs/sources_1/bd/$prDir/pr.bd]
launch_runs -jobs 4 pr_synth_1

generate_target all [get_files  shells/projects/$projName/$projName.srcs/sources_1/bd/srcs/shell.bd]
export_ip_user_files -of_objects [get_files shells/projects/$projName/$projName.srcs/sources_1/bd/srcs/shell.bd] -no_script -sync -force -quiet
create_ip_run [get_files -of_objects [get_fileset sources_1] shells/projects/$projName/$projName.srcs/sources_1/bd/srcs/shell.bd]
launch_runs -jobs 4 {shell_util_vector_logic_0_0_synth_1 shell_util_vector_logic_1_0_synth_1 shell_clk_wiz_0_0_synth_1 shell_gnd_0_synth_1 shell_util_vector_logic_2_0_synth_1 shell_microblaze_0_0_synth_1 shell_axiStreamGate_0_0_synth_1 shell_mdm_1_0_synth_1 shell_rst_clk_wiz_0_100M_0_synth_1 shell_axi_hwicap_0_0_synth_1 shell_xbar_0_synth_1 shell_dlmb_v10_0_synth_1 shell_ilmb_v10_0_synth_1 shell_dlmb_bram_if_cntlr_0_synth_1 shell_ilmb_bram_if_cntlr_0_synth_1 shell_lmb_bram_0_synth_1 shell_xdma_0_0_synth_1 shell_util_ds_buf_0_synth_1 shell_gnd_1_synth_1 shell_tx_register_slice_0_0_synth_1 shell_axi_10g_ethernet_0_0_synth_1 shell_mac_config_vector_0_synth_1 shell_tx_ifg_tuser_0_synth_1 shell_ifg_delay_0_synth_1 shell_vcc_0_synth_1 shell_pcs_config_vector_0_synth_1 shell_rx_register_slice_1_0_synth_1 shell_rx_data_fifo_1_0_synth_1 shell_tx_data_fifo_0_0_synth_1 shell_auto_cc_0_synth_1}
wait_on_run pr_synth_1
wait_on_run shell_util_vector_logic_0_0_synth_1
wait_on_run shell_util_vector_logic_1_0_synth_1
wait_on_run shell_clk_wiz_0_0_synth_1
wait_on_run shell_gnd_0_synth_1
wait_on_run shell_gnd_1_synth_1
wait_on_run  shell_util_vector_logic_0_0_synth_1
wait_on_run shell_util_vector_logic_1_0_synth_1
wait_on_run shell_util_vector_logic_2_0_synth_1
wait_on_run shell_microblaze_0_0_synth_1
wait_on_run shell_axiStreamGate_0_0_synth_1
wait_on_run shell_axi_hwicap_0_0_synth_1
wait_on_run shell_mdm_1_0_synth_1
wait_on_run shell_rst_clk_wiz_0_100M_0_synth_1
wait_on_run shell_xbar_0_synth_1
wait_on_run shell_ilmb_bram_if_cntlr_0_synth_1
wait_on_run shell_ilmb_v10_0_synth_1
wait_on_run shell_ilmb_bram_if_cntlr_0_synth_1
wait_on_run shell_ilmb_v10_0_synth_1
wait_on_run shell_lmb_bram_0_synth_1
wait_on_run shell_xdma_0_0_synth_1
wait_on_run shell_util_ds_buf_0_synth_1
wait_on_run shell_tx_register_slice_0_0_synth_1
wait_on_run shell_axi_10g_ethernet_0_0_synth_1
wait_on_run shell_mac_config_vector_0_synth_1
wait_on_run shell_tx_ifg_tuser_0_synth_1
wait_on_run shell_tx_data_fifo_0_0_synth_1
wait_on_run shell_auto_cc_0_synth_1

launch_runs synth_1 -jobs 4
wait_on_run synth_1
open_run synth_1 -name synth_1

create_pblock pblock_pr_i
add_cells_to_pblock pblock_pr_i [get_cells -quiet [list pr_i]]
resize_pblock pblock_pr_i -add {SLICE_X3Y0:SLICE_X95Y238 DSP48E2_X0Y0:DSP48E2_X17Y93 IOB_X1Y0:IOB_X1Y181 RAMB18_X1Y0:RAMB18_X11Y93 RAMB36_X1Y0:RAMB36_X11Y46}
set_property HD.RECONFIGURABLE 1 [get_cells pr_i]
set_property SNAPPING_MODE ON [get_pblocks pblock_pr_i]
set_property RESET_AFTER_RECONFIG 1 [get_pblocks pblock_pr_i]

opt_design 
place_design -directive Explore
phys_opt_design -directive Explore
route_design -directive Explore
update_design -cell pr_i -black_box
lock_design -level routing

write_checkpoint -force shells/projects/$projName/$dcpName

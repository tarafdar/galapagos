set_property SRC_FILE_INFO {cfile:/home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/constrs_1/imports/constraints/ad_8k5.xdc rfile:../../../8k5Shell.srcs/constrs_1/imports/constraints/ad_8k5.xdc id:1} [current_design]
set_property SRC_FILE_INFO {cfile:/home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/constrs_1/imports/constraints/pcie.xdc rfile:../../../8k5Shell.srcs/constrs_1/imports/constraints/pcie.xdc id:2} [current_design]
set_property SRC_FILE_INFO {cfile:/home/tarafdar/thesis/MIXcoatl/shells/projects/8k5Shell/8k5Shell.srcs/constrs_1/imports/constraints/refclk200.xdc rfile:../../../8k5Shell.srcs/constrs_1/imports/constraints/refclk200.xdc id:3} [current_design]
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AM19 [get_ports {refclk200}]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_min_delay -from [get_ports {refclk200}] -100.0
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE15 [get_ports perst_n]
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AT19    [get_ports "led_l[0]"] ; # USER_LED_G0
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports "led_l[0]"]
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AU19    [get_ports "led_l[1]"] ; # USER_LED_G1
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports "led_l[1]"]
set_property src_info {type:XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AU20    [get_ports "led_l[2]"] ; # USER_LED_R
set_property src_info {type:XDC file:1 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports "led_l[2]"]
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -to [get_ports "led_l[*]"]  100
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_min_delay -to [get_ports "led_l[*]"] -100
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AV18    [get_ports "user_sw_l"]
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports "user_sw_l"]
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_ports "user_sw_l"]  100
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_min_delay -from [get_ports "user_sw_l"] -100
set_property src_info {type:XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA8 [get_ports refclk_p]
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA7 [get_ports refclk_n]
set_property src_info {type:XDC file:1 line:538 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AG17 [get_ports sfp_tx_disable[0]]
set_property src_info {type:XDC file:1 line:540 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF19 [get_ports sfp_tx_disable[1]]
set_property src_info {type:XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE15 [get_ports reset_rtl]
set_property src_info {type:XDC file:2 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports reset_rtl]
set_property src_info {type:XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_ports {reset_rtl}]  100
set_property src_info {type:XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_min_delay -from [get_ports {reset_rtl}] -100
set_property src_info {type:XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_ports reset_rtl]
set_property src_info {type:XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AT10 [get_ports diff_clock_rtl_clk_p]
set_property src_info {type:XDC file:2 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_min_delay -from [get_ports {diff_clock_rtl_clk_n}] -100
set_property src_info {type:XDC file:2 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AT9 [get_ports diff_clock_rtl_clk_n]
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_min_delay -from [get_ports {diff_clock_rtl_clk_p}] -100
set_property src_info {type:XDC file:3 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AM19 [get_ports {refclk200}]
set_property src_info {type:XDC file:3 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_min_delay -from [get_ports {refclk200}] -100.0

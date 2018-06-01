# PCIe reset
set_property PACKAGE_PIN AE15 [get_ports reset_rtl]
set_property IOSTANDARD LVCMOS18 [get_ports reset_rtl]
set_max_delay -from [get_ports {reset_rtl}]  100
set_min_delay -from [get_ports {reset_rtl}] -100
set_false_path -from [get_ports reset_rtl]

# PCIe reference clock
set_property PACKAGE_PIN AT10 [get_ports diff_clock_rtl_clk_p]
set_max_delay -from [get_ports {diff_clock_rtl_clk_n}]  100
set_min_delay -from [get_ports {diff_clock_rtl_clk_n}] -100
set_property PACKAGE_PIN AT9 [get_ports diff_clock_rtl_clk_n]
set_max_delay -from [get_ports {diff_clock_rtl_clk_p}]  100
set_min_delay -from [get_ports {diff_clock_rtl_clk_p}] -100
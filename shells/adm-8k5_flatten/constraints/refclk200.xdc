set_property PACKAGE_PIN AM19 [get_ports {refclk200}]
set_property IOSTANDARD LVCMOS33 [get_ports {refclk200}]

set_max_delay -from [get_ports {refclk200}]  100.0
set_min_delay -from [get_ports {refclk200}] -100.0

create_clock -period 5.000 -name refclk200 [get_ports {refclk200}]

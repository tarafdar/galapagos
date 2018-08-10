#
# This file contains non-PACKAGE_PIN constraints for twin-die / stacked-die related signals of
# SDRAM bank 0 that are not driven by MIG when it is in a single-die configuration. Without
# these constraints, the IOSTANDARD, SLEW & OUTPUT_IMPEDANCE would not be specified.
#

set_property IOSTANDARD [get_property IOSTANDARD [get_ports "c0_ddr4_cke[0]"]]  [get_ports "c0_ddr4_cke[1]"]
set_property IOSTANDARD [get_property IOSTANDARD [get_ports "c0_ddr4_cs_n[0]"]] [get_ports "c0_ddr4_cs_n[1]"]
set_property IOSTANDARD [get_property IOSTANDARD [get_ports "c0_ddr4_odt[0]"]]  [get_ports "c0_ddr4_odt[1]"]

set_property SLEW [get_property SLEW [get_ports "c0_ddr4_cke[0]"]]  [get_ports "c0_ddr4_cke[1]"]
set_property SLEW [get_property SLEW [get_ports "c0_ddr4_cs_n[0]"]] [get_ports "c0_ddr4_cs_n[1]"]
set_property SLEW [get_property SLEW [get_ports "c0_ddr4_odt[0]"]]  [get_ports "c0_ddr4_odt[1]"]

set_property OUTPUT_IMPEDANCE [get_property OUTPUT_IMPEDANCE [get_ports "c0_ddr4_cke[0]"]]  [get_ports "c0_ddr4_cke[1]"]
set_property OUTPUT_IMPEDANCE [get_property OUTPUT_IMPEDANCE [get_ports "c0_ddr4_cs_n[0]"]] [get_ports "c0_ddr4_cs_n[1]"]
set_property OUTPUT_IMPEDANCE [get_property OUTPUT_IMPEDANCE [get_ports "c0_ddr4_odt[0]"]]  [get_ports "c0_ddr4_odt[1]"]

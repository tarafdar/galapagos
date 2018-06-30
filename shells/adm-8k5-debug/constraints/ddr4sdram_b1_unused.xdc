#
# This file contains constraints for signals of SDRAM bank 1 that are not used
# by MIG as of Vivado 2015.4.
#
# The pins referenced in this file are tied off to constant levels in order to
# avoid spurious transitions but must nevertheless be constrained.
#

# Use ODT (output only) as a model for PAR (output only)
set odt_iostandard       [get_property IOSTANDARD       [get_ports "c1_ddr4_odt[0]"]]
set odt_output_impedance [get_property OUTPUT_IMPEDANCE [get_ports "c1_ddr4_odt[0]"]]
set odt_slew             [get_property SLEW             [get_ports "c1_ddr4_odt[0]"]]
set_property PACKAGE_PIN      AG20                  [get_ports "c1_ddr4_par"]
set_property IOSTANDARD       $odt_iostandard       [get_ports "c1_ddr4_par"]
set_property OUTPUT_IMPEDANCE $odt_output_impedance [get_ports "c1_ddr4_par"]
set_property SLEW             $odt_slew             [get_ports "c1_ddr4_par"]

# Use RESET# (output only) as a model for TEN (output only)
set reset_iostandard [get_property IOSTANDARD [get_ports "c1_ddr4_reset_n"]]
set reset_drive      [get_property DRIVE      [get_ports "c1_ddr4_reset_n"]]
set_property PACKAGE_PIN AD20              [get_ports "c1_ddr4_ten"]
set_property IOSTANDARD  $reset_iostandard [get_ports "c1_ddr4_ten"]
set_property DRIVE       $reset_drive      [get_ports "c1_ddr4_ten"]

# ALERT# is open-drain
set_property PACKAGE_PIN AJ20     [get_ports "c1_ddr4_alert_n"]
set_property IOSTANDARD  LVCMOS12 [get_ports "c1_ddr4_alert_n"]

# Use ADR0 (output only) as a model for ADR17 (output only)
set adr0_iostandard       [get_property IOSTANDARD       [get_ports "c1_ddr4_adr[0]"]]
set adr0_output_impedance [get_property OUTPUT_IMPEDANCE [get_ports "c1_ddr4_adr[0]"]]
set adr0_slew             [get_property SLEW             [get_ports "c1_ddr4_adr[0]"]]
set_property PACKAGE_PIN      AF20                   [get_ports "c1_ddr4_adr[17]"]
set_property IOSTANDARD       $adr0_iostandard       [get_ports "c1_ddr4_adr[17]"]
set_property OUTPUT_IMPEDANCE $adr0_output_impedance [get_ports "c1_ddr4_adr[17]"]
set_property SLEW             $adr0_slew             [get_ports "c1_ddr4_adr[17]"]

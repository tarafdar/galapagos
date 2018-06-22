#
# This file contains constraints for the 9th byte lane (byte lane 8) for DDR4
# SDRAM bank 1 that are not driven by MIG when it is in an x64 configuration.
#
# The pins referenced in this file are tied off to constant levels in order to
# avoid spurious transitions but must nevertheless be constrained.
#

# Get IOSTANDARD & OUTPUT_IMPEDANCE for DQ[0] pin, which should use the same
# values as DQ[71:64].
set c1_dq_iostandard       [ get_property IOSTANDARD       [ get_ports "c1_ddr4_dq[0]" ] ]
set c1_dq_output_impedance [ get_property OUTPUT_IMPEDANCE [ get_ports "c1_ddr4_dq[0]" ] ]
set c1_dq_slew             [ get_property SLEW             [ get_ports "c1_ddr4_dq[0]" ] ]

## Pad Function: 
set_property PACKAGE_PIN A38  [ get_ports "c1_ddr4_dq[64]" ]
set_property IOSTANDARD       $c1_dq_iostandard       [ get_ports "c1_ddr4_dq[64]" ]
set_property OUTPUT_IMPEDANCE $c1_dq_output_impedance [ get_ports "c1_ddr4_dq[64]" ]
set_property SLEW             $c1_dq_slew             [ get_ports "c1_ddr4_dq[64]" ]

## Pad Function: 
set_property PACKAGE_PIN D38  [ get_ports "c1_ddr4_dq[65]" ]
set_property IOSTANDARD       $c1_dq_iostandard       [ get_ports "c1_ddr4_dq[65]" ]
set_property OUTPUT_IMPEDANCE $c1_dq_output_impedance [ get_ports "c1_ddr4_dq[65]" ]
set_property SLEW             $c1_dq_slew             [ get_ports "c1_ddr4_dq[65]" ]

## Pad Function: 
set_property PACKAGE_PIN C39  [ get_ports "c1_ddr4_dq[66]" ]
set_property IOSTANDARD       $c1_dq_iostandard       [ get_ports "c1_ddr4_dq[66]" ]
set_property OUTPUT_IMPEDANCE $c1_dq_output_impedance [ get_ports "c1_ddr4_dq[66]" ]
set_property SLEW             $c1_dq_slew             [ get_ports "c1_ddr4_dq[66]" ]

## Pad Function: 
set_property PACKAGE_PIN D39  [ get_ports "c1_ddr4_dq[67]" ]
set_property IOSTANDARD       $c1_dq_iostandard       [ get_ports "c1_ddr4_dq[67]" ]
set_property OUTPUT_IMPEDANCE $c1_dq_output_impedance [ get_ports "c1_ddr4_dq[67]" ]
set_property SLEW             $c1_dq_slew             [ get_ports "c1_ddr4_dq[67]" ]

## Pad Function: 
set_property PACKAGE_PIN A37  [ get_ports "c1_ddr4_dq[68]" ]
set_property IOSTANDARD       $c1_dq_iostandard       [ get_ports "c1_ddr4_dq[68]" ]
set_property OUTPUT_IMPEDANCE $c1_dq_output_impedance [ get_ports "c1_ddr4_dq[68]" ]
set_property SLEW             $c1_dq_slew             [ get_ports "c1_ddr4_dq[68]" ]

## Pad Function: 
set_property PACKAGE_PIN E37  [ get_ports "c1_ddr4_dq[69]" ]
set_property IOSTANDARD       $c1_dq_iostandard       [ get_ports "c1_ddr4_dq[69]" ]
set_property OUTPUT_IMPEDANCE $c1_dq_output_impedance [ get_ports "c1_ddr4_dq[69]" ]
set_property SLEW             $c1_dq_slew             [ get_ports "c1_ddr4_dq[69]" ]

## Pad Function: 
set_property PACKAGE_PIN B37  [ get_ports "c1_ddr4_dq[70]" ]
set_property IOSTANDARD       $c1_dq_iostandard       [ get_ports "c1_ddr4_dq[70]" ]
set_property OUTPUT_IMPEDANCE $c1_dq_output_impedance [ get_ports "c1_ddr4_dq[70]" ]
set_property SLEW             $c1_dq_slew             [ get_ports "c1_ddr4_dq[70]" ]

## Pad Function: 
set_property PACKAGE_PIN C37  [ get_ports "c1_ddr4_dq[71]" ]
set_property IOSTANDARD       $c1_dq_iostandard       [ get_ports "c1_ddr4_dq[71]" ]
set_property OUTPUT_IMPEDANCE $c1_dq_output_impedance [ get_ports "c1_ddr4_dq[71]" ]
set_property SLEW             $c1_dq_slew             [ get_ports "c1_ddr4_dq[71]" ]

# Get IOSTANDARD & OUTPUT_IMPEDANCE for DM[0] pin, which should use the same
# values as DM[8].
set c1_dm_dbi_n_iostandard       [ get_property IOSTANDARD       [ get_ports "c1_ddr4_dm_dbi_n[0]" ] ]
set c1_dm_dbi_n_output_impedance [ get_property OUTPUT_IMPEDANCE [ get_ports "c1_ddr4_dm_dbi_n[0]" ] ]
set c1_dm_dbi_n_slew             [ get_property SLEW             [ get_ports "c1_ddr4_dm_dbi_n[0]" ] ]

## Pad Function: 
set_property PACKAGE_PIN F38  [ get_ports "c1_ddr4_dm_dbi_n[8]" ]
set_property IOSTANDARD       $c1_dm_dbi_n_iostandard       [ get_ports "c1_ddr4_dm_dbi_n[8]" ]
set_property OUTPUT_IMPEDANCE $c1_dm_dbi_n_output_impedance [ get_ports "c1_ddr4_dm_dbi_n[8]" ]
set_property SLEW             $c1_dm_dbi_n_slew             [ get_ports "c1_ddr4_dm_dbi_n[8]" ]

# Get IOSTANDARD & OUTPUT_IMPEDANCE for DQS#[0] pin, which should use the same
# values as DQS#[8].
set c1_dqs_c_iostandard       [ get_property IOSTANDARD       [ get_ports "c1_ddr4_dqs_c[0]" ] ]
set c1_dqs_c_output_impedance [ get_property OUTPUT_IMPEDANCE [ get_ports "c1_ddr4_dqs_c[0]" ] ]
set c1_dqs_c_slew             [ get_property SLEW             [ get_ports "c1_ddr4_dqs_c[0]" ] ]

## Pad Function: 
set_property PACKAGE_PIN B39  [ get_ports "c1_ddr4_dqs_c[8]" ]
set_property IOSTANDARD       $c1_dqs_c_iostandard       [ get_ports "c1_ddr4_dqs_c[8]" ]
set_property OUTPUT_IMPEDANCE $c1_dqs_c_output_impedance [ get_ports "c1_ddr4_dqs_c[8]" ]
set_property SLEW             $c1_dqs_c_slew             [ get_ports "c1_ddr4_dqs_c[8]" ]

# Get IOSTANDARD & OUTPUT_IMPEDANCE for DQS[0] pin, which should use the same
# values as DQS[8].
set c1_dqs_t_iostandard       [ get_property IOSTANDARD       [ get_ports "c1_ddr4_dqs_t[0]" ] ]
set c1_dqs_t_output_impedance [ get_property OUTPUT_IMPEDANCE [ get_ports "c1_ddr4_dqs_t[0]" ] ]
set c1_dqs_t_slew             [ get_property SLEW             [ get_ports "c1_ddr4_dqs_t[0]" ] ]

## Pad Function: 
set_property PACKAGE_PIN C38  [ get_ports "c1_ddr4_dqs_t[8]" ]
set_property IOSTANDARD       $c1_dqs_t_iostandard       [ get_ports "c1_ddr4_dqs_t[8]" ]
set_property OUTPUT_IMPEDANCE $c1_dqs_t_output_impedance [ get_ports "c1_ddr4_dqs_t[8]" ]
set_property SLEW             $c1_dqs_t_slew             [ get_ports "c1_ddr4_dqs_t[8]" ]

#
# This file contains constraints for the 9th byte lane (byte lane 8) for DDR4
# SDRAM bank 0 that are not driven by MIG when it is in an x64 configuration.
#
# The pins referenced in this file are tied off to constant levels in order to
# avoid spurious transitions but must nevertheless be constrained.
#

# Get IOSTANDARD & OUTPUT_IMPEDANCE for DQ[0] pin, which should use the same
# values as DQ[71:64].
set c0_dq_iostandard       [ get_property IOSTANDARD       [ get_ports "c0_ddr4_dq[0]" ] ]
set c0_dq_output_impedance [ get_property OUTPUT_IMPEDANCE [ get_ports "c0_ddr4_dq[0]" ] ]
set c0_dq_slew             [ get_property SLEW             [ get_ports "c0_ddr4_dq[0]" ] ]

## Pad Function: 
set_property PACKAGE_PIN N14 [ get_ports "c0_ddr4_dq[64]" ]
set_property IOSTANDARD       $c0_dq_iostandard       [ get_ports "c0_ddr4_dq[64]" ]
set_property OUTPUT_IMPEDANCE $c0_dq_output_impedance [ get_ports "c0_ddr4_dq[64]" ]
set_property SLEW             $c0_dq_slew             [ get_ports "c0_ddr4_dq[64]" ]

## Pad Function: 
set_property PACKAGE_PIN R12 [ get_ports "c0_ddr4_dq[65]" ]
set_property IOSTANDARD       $c0_dq_iostandard       [ get_ports "c0_ddr4_dq[65]" ]
set_property OUTPUT_IMPEDANCE $c0_dq_output_impedance [ get_ports "c0_ddr4_dq[65]" ]
set_property SLEW             $c0_dq_slew             [ get_ports "c0_ddr4_dq[65]" ]

## Pad Function: 
set_property PACKAGE_PIN P15 [ get_ports "c0_ddr4_dq[66]" ]
set_property IOSTANDARD       $c0_dq_iostandard       [ get_ports "c0_ddr4_dq[66]" ]
set_property OUTPUT_IMPEDANCE $c0_dq_output_impedance [ get_ports "c0_ddr4_dq[66]" ]
set_property SLEW             $c0_dq_slew             [ get_ports "c0_ddr4_dq[66]" ]

## Pad Function: 
set_property PACKAGE_PIN P14 [ get_ports "c0_ddr4_dq[67]" ]
set_property IOSTANDARD       $c0_dq_iostandard       [ get_ports "c0_ddr4_dq[67]" ]
set_property OUTPUT_IMPEDANCE $c0_dq_output_impedance [ get_ports "c0_ddr4_dq[67]" ]
set_property SLEW             $c0_dq_slew             [ get_ports "c0_ddr4_dq[67]" ]

## Pad Function: 
set_property PACKAGE_PIN M14 [ get_ports "c0_ddr4_dq[68]" ]
set_property IOSTANDARD       $c0_dq_iostandard       [ get_ports "c0_ddr4_dq[68]" ]
set_property OUTPUT_IMPEDANCE $c0_dq_output_impedance [ get_ports "c0_ddr4_dq[68]" ]
set_property SLEW             $c0_dq_slew             [ get_ports "c0_ddr4_dq[68]" ]

## Pad Function: 
set_property PACKAGE_PIN R13 [ get_ports "c0_ddr4_dq[69]" ]
set_property IOSTANDARD       $c0_dq_iostandard       [ get_ports "c0_ddr4_dq[69]" ]
set_property OUTPUT_IMPEDANCE $c0_dq_output_impedance [ get_ports "c0_ddr4_dq[69]" ]
set_property SLEW             $c0_dq_slew             [ get_ports "c0_ddr4_dq[69]" ]

## Pad Function: 
set_property PACKAGE_PIN L15 [ get_ports "c0_ddr4_dq[70]" ]
set_property IOSTANDARD       $c0_dq_iostandard       [ get_ports "c0_ddr4_dq[70]" ]
set_property OUTPUT_IMPEDANCE $c0_dq_output_impedance [ get_ports "c0_ddr4_dq[70]" ]
set_property SLEW             $c0_dq_slew             [ get_ports "c0_ddr4_dq[70]" ]

## Pad Function: 
set_property PACKAGE_PIN M15 [ get_ports "c0_ddr4_dq[71]" ]
set_property IOSTANDARD       $c0_dq_iostandard       [ get_ports "c0_ddr4_dq[71]" ]
set_property OUTPUT_IMPEDANCE $c0_dq_output_impedance [ get_ports "c0_ddr4_dq[71]" ]
set_property SLEW             $c0_dq_slew             [ get_ports "c0_ddr4_dq[71]" ]

# Get IOSTANDARD & OUTPUT_IMPEDANCE for DM[0] pin, which should use the same
# values as DM[8].
set c0_dm_dbi_n_iostandard       [ get_property IOSTANDARD       [ get_ports "c0_ddr4_dm_dbi_n[0]" ] ]
set c0_dm_dbi_n_output_impedance [ get_property OUTPUT_IMPEDANCE [ get_ports "c0_ddr4_dm_dbi_n[0]" ] ]
set c0_dm_dbi_n_slew             [ get_property SLEW             [ get_ports "c0_ddr4_dm_dbi_n[0]" ] ]

## Pad Function: 
set_property PACKAGE_PIN P13 [ get_ports "c0_ddr4_dm_dbi_n[8]" ]
set_property IOSTANDARD       $c0_dm_dbi_n_iostandard       [ get_ports "c0_ddr4_dm_dbi_n[8]" ]
set_property OUTPUT_IMPEDANCE $c0_dm_dbi_n_output_impedance [ get_ports "c0_ddr4_dm_dbi_n[8]" ]
set_property SLEW             $c0_dm_dbi_n_slew             [ get_ports "c0_ddr4_dm_dbi_n[8]" ]


# Get IOSTANDARD & OUTPUT_IMPEDANCE for DQS#[0] pin, which should use the same
# values as DQS#[8].
set c0_dqs_c_iostandard       [ get_property IOSTANDARD       [ get_ports "c0_ddr4_dqs_c[0]" ] ]
set c0_dqs_c_output_impedance [ get_property OUTPUT_IMPEDANCE [ get_ports "c0_ddr4_dqs_c[0]" ] ]
set c0_dqs_c_slew             [ get_property SLEW             [ get_ports "c0_ddr4_dqs_c[0]" ] ]

## Pad Function: 
set_property PACKAGE_PIN M12 [ get_ports "c0_ddr4_dqs_c[8]" ]
set_property IOSTANDARD       $c0_dqs_c_iostandard       [ get_ports "c0_ddr4_dqs_c[8]" ]
set_property OUTPUT_IMPEDANCE $c0_dqs_c_output_impedance [ get_ports "c0_ddr4_dqs_c[8]" ]
set_property SLEW             $c0_dqs_c_slew             [ get_ports "c0_ddr4_dqs_c[8]" ]

# Get IOSTANDARD & OUTPUT_IMPEDANCE for DQS[0] pin, which should use the same
# values as DQS[8].
set c0_dqs_t_iostandard       [ get_property IOSTANDARD       [ get_ports "c0_ddr4_dqs_t[0]" ] ]
set c0_dqs_t_output_impedance [ get_property OUTPUT_IMPEDANCE [ get_ports "c0_ddr4_dqs_t[0]" ] ]
set c0_dqs_t_slew             [ get_property SLEW             [ get_ports "c0_ddr4_dqs_t[0]" ] ]

## Pad Function: 
set_property PACKAGE_PIN N12 [ get_ports "c0_ddr4_dqs_t[8]" ]
set_property IOSTANDARD       $c0_dqs_t_iostandard       [ get_ports "c0_ddr4_dqs_t[8]" ]
set_property OUTPUT_IMPEDANCE $c0_dqs_t_output_impedance [ get_ports "c0_ddr4_dqs_t[8]" ]
set_property SLEW             $c0_dqs_t_slew             [ get_ports "c0_ddr4_dqs_t[8]" ]

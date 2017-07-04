


#set_false_path -from [get_ports perst_n]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {OpenCL_static_i/static_region/util_ds_buf_0/U0/IBUF_OUT[0]}]

#set_false_path -through [get_cells accelfpgaxbar/dmapcie/p_rst_reg]

set_property PACKAGE_PIN W27 [get_ports perst_n]
set_property IOSTANDARD LVCMOS18 [get_ports perst_n]
set_property PULLUP true [get_ports perst_n]

create_clock -period 10.000 -name ref_clk [get_ports {ref_clk_p[0]}]
set_property PACKAGE_PIN F6 [get_ports {ref_clk_p[0]}]

set_property PACKAGE_PIN V33 [get_ports init_calib_complete]
set_property IOSTANDARD LVCMOS18 [get_ports init_calib_complete]

# New pins for DRAM power
set_property PACKAGE_PIN AA24 [get_ports {dram_on[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {dram_on[0]}]
set_property PACKAGE_PIN AA31 [get_ports dram_power_ok]
set_property IOSTANDARD LVCMOS18 [get_ports dram_power_ok]

# LED0 - Link Up
set_property PACKAGE_PIN AC33 [get_ports led_0]
set_property IOSTANDARD LVCMOS18 [get_ports led_0]

#tie off DM
# PadFunction: IO_L1N_T0_19
set_property VCCAUX_IO NORMAL [get_ports {c1_ddr3_dm[0]}]
set_property SLEW FAST [get_ports {c1_ddr3_dm[0]}]
set_property IOSTANDARD SSTL15 [get_ports {c1_ddr3_dm[0]}]
set_property PACKAGE_PIN B32 [get_ports {c1_ddr3_dm[0]}]

# PadFunction: IO_L17P_T2_19
set_property VCCAUX_IO NORMAL [get_ports {c1_ddr3_dm[1]}]
set_property SLEW FAST [get_ports {c1_ddr3_dm[1]}]
set_property IOSTANDARD SSTL15 [get_ports {c1_ddr3_dm[1]}]
set_property PACKAGE_PIN A30 [get_ports {c1_ddr3_dm[1]}]

# PadFunction: IO_L23P_T3_19
set_property VCCAUX_IO NORMAL [get_ports {c1_ddr3_dm[2]}]
set_property SLEW FAST [get_ports {c1_ddr3_dm[2]}]
set_property IOSTANDARD SSTL15 [get_ports {c1_ddr3_dm[2]}]
set_property PACKAGE_PIN E24 [get_ports {c1_ddr3_dm[2]}]

# PadFunction: IO_L10P_T1_19
set_property VCCAUX_IO NORMAL [get_ports {c1_ddr3_dm[3]}]
set_property SLEW FAST [get_ports {c1_ddr3_dm[3]}]
set_property IOSTANDARD SSTL15 [get_ports {c1_ddr3_dm[3]}]
set_property PACKAGE_PIN B26 [get_ports {c1_ddr3_dm[3]}]

# PadFunction: IO_L10P_T1_17
set_property VCCAUX_IO NORMAL [get_ports {c1_ddr3_dm[4]}]
set_property SLEW FAST [get_ports {c1_ddr3_dm[4]}]
set_property IOSTANDARD SSTL15 [get_ports {c1_ddr3_dm[4]}]
set_property PACKAGE_PIN U31 [get_ports {c1_ddr3_dm[4]}]

# PadFunction: IO_L13N_T2_MRCC_17
set_property VCCAUX_IO NORMAL [get_ports {c1_ddr3_dm[5]}]
set_property SLEW FAST [get_ports {c1_ddr3_dm[5]}]
set_property IOSTANDARD SSTL15 [get_ports {c1_ddr3_dm[5]}]
set_property PACKAGE_PIN R29 [get_ports {c1_ddr3_dm[5]}]

# PadFunction: IO_L23P_T3_18
set_property VCCAUX_IO NORMAL [get_ports {c1_ddr3_dm[6]}]
set_property SLEW FAST [get_ports {c1_ddr3_dm[6]}]
set_property IOSTANDARD SSTL15 [get_ports {c1_ddr3_dm[6]}]
set_property PACKAGE_PIN K34 [get_ports {c1_ddr3_dm[6]}]

# PadFunction: IO_L22N_T3_17
set_property VCCAUX_IO NORMAL [get_ports {c1_ddr3_dm[7]}]
set_property SLEW FAST [get_ports {c1_ddr3_dm[7]}]
set_property IOSTANDARD SSTL15 [get_ports {c1_ddr3_dm[7]}]
set_property PACKAGE_PIN N34 [get_ports {c1_ddr3_dm[7]}]

# PadFunction: IO_L4N_T0_17
set_property VCCAUX_IO NORMAL [get_ports {c1_ddr3_dm[8]}]
set_property SLEW FAST [get_ports {c1_ddr3_dm[8]}]
set_property IOSTANDARD SSTL15 [get_ports {c1_ddr3_dm[8]}]
set_property PACKAGE_PIN P25 [get_ports {c1_ddr3_dm[8]}]

set_false_path -to [get_pins {OpenCL_static_i/static_region/flash_programmer/inst/reg_data_out_*reg[*]/D}]
set_false_path -to [get_pins {OpenCL_static_i/static_region/flash_programmer/inst/reg_data_out_*reg[*]/D}]
set_false_path -to [get_pins {OpenCL_static_i/static_region/flash_programmer/inst/reg_data_out_*reg[*]/D}]
set_false_path -to [get_pins {OpenCL_static_i/static_region/flash_programmer/inst/reg_data_out_*reg[*]/D}]

# Flash Address Pins
set_property PACKAGE_PIN AC24 [get_ports {flash_flash_a[25]}]
set_property PACKAGE_PIN AD24 [get_ports {flash_flash_a[24]}]
set_property PACKAGE_PIN AH28 [get_ports {flash_flash_a[23]}]
set_property PACKAGE_PIN AD26 [get_ports {flash_flash_a[22]}]
set_property PACKAGE_PIN AD27 [get_ports {flash_flash_a[21]}]
set_property PACKAGE_PIN AG26 [get_ports {flash_flash_a[20]}]
set_property PACKAGE_PIN AG27 [get_ports {flash_flash_a[19]}]
set_property PACKAGE_PIN AF26 [get_ports {flash_flash_a[18]}]
set_property PACKAGE_PIN AE23 [get_ports {flash_flash_a[17]}]
set_property PACKAGE_PIN AE24 [get_ports {flash_flash_a[16]}]
set_property PACKAGE_PIN AH25 [get_ports {flash_flash_a[15]}]
set_property PACKAGE_PIN AH24 [get_ports {flash_flash_a[14]}]
set_property PACKAGE_PIN AJ25 [get_ports {flash_flash_a[13]}]
set_property PACKAGE_PIN AL25 [get_ports {flash_flash_a[12]}]
set_property PACKAGE_PIN AL26 [get_ports {flash_flash_a[11]}]
set_property PACKAGE_PIN AM26 [get_ports {flash_flash_a[10]}]
set_property PACKAGE_PIN AM27 [get_ports {flash_flash_a[9]}]
set_property PACKAGE_PIN AN29 [get_ports {flash_flash_a[8]}]
set_property PACKAGE_PIN AP29 [get_ports {flash_flash_a[7]}]
set_property PACKAGE_PIN AN25 [get_ports {flash_flash_a[6]}]
set_property PACKAGE_PIN AM28 [get_ports {flash_flash_a[5]}]
set_property PACKAGE_PIN AN28 [get_ports {flash_flash_a[4]}]
set_property PACKAGE_PIN AP25 [get_ports {flash_flash_a[3]}]
set_property PACKAGE_PIN AP26 [get_ports {flash_flash_a[2]}]
set_property PACKAGE_PIN AN27 [get_ports {flash_flash_a[1]}]
set_property PACKAGE_PIN AP27 [get_ports {flash_flash_a[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[25]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[24]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[23]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[22]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[21]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[20]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[19]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[18]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[17]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[16]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[15]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[14]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[13]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[12]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[11]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[10]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_a[0]}]
# Flash Control Pins
set_property PACKAGE_PIN AL33 [get_ports flash_flash_cs_n]
set_property IOSTANDARD LVCMOS18 [get_ports flash_flash_cs_n]
set_property PACKAGE_PIN AC25 [get_ports flash_flash_oe_n]
set_property IOSTANDARD LVCMOS18 [get_ports flash_flash_oe_n]
set_property PACKAGE_PIN AD25 [get_ports flash_flash_we_n]
set_property IOSTANDARD LVCMOS18 [get_ports flash_flash_we_n]
set_property PACKAGE_PIN AC29 [get_ports flash_flash_adv_n]
set_property IOSTANDARD LVCMOS18 [get_ports flash_flash_adv_n]
# Flash Data Pins
set_property PACKAGE_PIN AN33 [get_ports {flash_flash_dq[0]}]
set_property PACKAGE_PIN AN34 [get_ports {flash_flash_dq[1]}]
set_property PACKAGE_PIN AK34 [get_ports {flash_flash_dq[2]}]
set_property PACKAGE_PIN AL34 [get_ports {flash_flash_dq[3]}]
set_property PACKAGE_PIN AK32 [get_ports {flash_flash_dq[4]}]
set_property PACKAGE_PIN AK33 [get_ports {flash_flash_dq[5]}]
set_property PACKAGE_PIN AM32 [get_ports {flash_flash_dq[6]}]
set_property PACKAGE_PIN AN32 [get_ports {flash_flash_dq[7]}]
set_property PACKAGE_PIN AM33 [get_ports {flash_flash_dq[8]}]
set_property PACKAGE_PIN AP30 [get_ports {flash_flash_dq[9]}]
set_property PACKAGE_PIN AP31 [get_ports {flash_flash_dq[10]}]
set_property PACKAGE_PIN AJ30 [get_ports {flash_flash_dq[11]}]
set_property PACKAGE_PIN AK31 [get_ports {flash_flash_dq[12]}]
set_property PACKAGE_PIN AN30 [get_ports {flash_flash_dq[13]}]
set_property PACKAGE_PIN AJ29 [get_ports {flash_flash_dq[14]}]
set_property PACKAGE_PIN AK29 [get_ports {flash_flash_dq[15]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[10]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[11]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[12]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[13]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[14]}]
set_property IOSTANDARD LVCMOS18 [get_ports {flash_flash_dq[15]}]

#set_property CONFIG_MODE BPI16 [current_design]
#set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type2 [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]
#set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK Enable [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x2000000 [current_design]
set_property BITSTREAM.CONFIG.NEXT_CONFIG_REBOOT Enable [current_design]

#############################flash constraint###################################
# 80MHz fixed frequency configuration clock
set_property VCCAUX_IO DONTCARE [get_ports REFCLK80M]
set_property IOSTANDARD LVCMOS18 [get_ports REFCLK80M]
set_property PACKAGE_PIN AP33 [get_ports REFCLK80M]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets REFCLK80M]

#set emcclk_out to empty io
set_property PACKAGE_PIN AM30 [get_ports emcclk_out]
set_property IOSTANDARD LVCMOS18 [get_ports emcclk_out]

# Specify a Type2 (P30) synchronous PROM with a 80MHz clock

#set_property BITSTREAM.CONFIG.CONFIGRATE 22 [current_design]

set_property BITSTREAM.CONFIG.OVERTEMPPOWERDOWN ENABLE [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

#SFP+ clock P - pin =  = t6  N- pin = t5
set_property IOSTANDARD LVDS [get_ports mgt_clk_clk_n]
set_property DIFF_TERM FALSE [get_ports mgt_clk_clk_n]
set_property IOSTANDARD LVDS [get_ports mgt_clk_clk_p]
set_property DIFF_TERM FALSE [get_ports mgt_clk_clk_p]
set_property PACKAGE_PIN T5 [get_ports mgt_clk_clk_n]

set_property PACKAGE_PIN R3 [get_ports sfp_rxn]
set_property PACKAGE_PIN R4 [get_ports sfp_rxp]
set_property PACKAGE_PIN P1 [get_ports sfp_txn]
set_property PACKAGE_PIN P2 [get_ports sfp_txp]

# sfp+ pwr enable    AA23
set_property IOSTANDARD LVCMOS18 [get_ports {sfp_pwr_en[0]}]
set_property PACKAGE_PIN AA23 [get_ports {sfp_pwr_en[0]}]

#    sfp0_tx_dis,
#    sfp1_tx_dis,

# SFP+0_TX_DISABLE drive low to enable tx output
set_property IOSTANDARD LVCMOS18 [get_ports {sfp0_tx_dis[0]}]
set_property PACKAGE_PIN AC34 [get_ports {sfp0_tx_dis[0]}]

# SFP+1_TX_DISABLE drive low to enable tx output
set_property IOSTANDARD LVCMOS18 [get_ports {sfp1_tx_dis[0]}]
set_property PACKAGE_PIN AA34 [get_ports {sfp1_tx_dis[0]}]

## FLOORPLAN CHANGE
## Hao 05/29/2015
# (1) Make RM PBLOCK FSR aligned, shift-up static PBLOCKs
# (2) Replace elaborated PPRange by wildcard
# (3) Add un-bonded/un-used IOB/GT/CMT tiles inside RM
# to do: need to demote DRC HDPR-5 in run.tcl
# Put HD.RECONFIGURABLE before PBLOCK creation
#set_property HD.RECONFIGURABLE true [get_cells OpenCL_static_i/u_ocl_region]
#create_pblock pblock_dmapcie
#add_cells_to_pblock [get_pblocks pblock_dmapcie] [get_cells -quiet [list OpenCL_static_i/mc_expresso_dma_xil_0 OpenCL_static_i/pcie3_7x_0]]
#resize_pblock [get_pblocks pblock_dmapcie] -add {SLICE_X62Y333:SLICE_X221Y499}
#resize_pblock [get_pblocks pblock_dmapcie] -add {DSP48_X4Y134:DSP48_X17Y199}
#resize_pblock [get_pblocks pblock_dmapcie] -add {RAMB18_X5Y134:RAMB18_X14Y199}
## (1) floorplan change
####Pblock pblock_u_ocl_region####
#create_pblock pblock_u_ocl_region
#add_cells_to_pblock [get_pblocks pblock_u_ocl_region] [get_cells -quiet [list OpenCL_static_i/u_ocl_region]]
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {SLICE_X92Y0:SLICE_X221Y349 SLICE_X90Y300:SLICE_X91Y349 SLICE_X90Y0:SLICE_X91Y199 SLICE_X0Y0:SLICE_X89Y349}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {DSP48_X0Y0:DSP48_X17Y139}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {PCIE3_X0Y0:PCIE3_X0Y1}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {RAMB18_X0Y0:RAMB18_X14Y139}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {RAMB36_X0Y0:RAMB36_X14Y69}
## IOB
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {IOB_X0Y0:IOB_X0Y199}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {OLOGIC_X0Y0:OLOGIC_X0Y199}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {ILOGIC_X0Y0:ILOGIC_X0Y199}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {ODELAY_X0Y0:ODELAY_X0Y199}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {IDELAY_X0Y0:IDELAY_X0Y199}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {IOB_X1Y0:IOB_X1Y199}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {OLOGIC_X1Y0:OLOGIC_X1Y199}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {ILOGIC_X1Y0:ILOGIC_X1Y199}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {ODELAY_X1Y0:ODELAY_X1Y199}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {IDELAY_X1Y0:IDELAY_X1Y199}
## CMT
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {OUT_FIFO_X0Y0:OUT_FIFO_X0Y15}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {IN_FIFO_X0Y0:IN_FIFO_X0Y15}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {MMCME2_ADV_X0Y0:MMCME2_ADV_X0Y3}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {PLLE2_ADV_X0Y0:PLLE2_ADV_X0Y3}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {PHASER_OUT_PHY_X0Y0:PHASER_OUT_PHY_X0Y15}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {PHASER_IN_PHY_X0Y0:PHASER_IN_PHY_X0Y15}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {PHY_CONTROL_X0Y0:PHY_CONTROL_X0Y3}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {PHASER_REF_X0Y0:PHASER_REF_X0Y3}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {OUT_FIFO_X1Y0:OUT_FIFO_X1Y15}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {IN_FIFO_X1Y0:IN_FIFO_X1Y15}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {MMCME2_ADV_X1Y0:MMCME2_ADV_X1Y3}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {PLLE2_ADV_X1Y0:PLLE2_ADV_X1Y3}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {PHASER_OUT_PHY_X1Y0:PHASER_OUT_PHY_X1Y15}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {PHASER_IN_PHY_X1Y0:PHASER_IN_PHY_X1Y15}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {PHY_CONTROL_X1Y0:PHY_CONTROL_X1Y3}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {PHASER_REF_X1Y0:PHASER_REF_X1Y3}
## GT
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {IPAD_X0Y0:IPAD_X0Y211}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {OPAD_X0Y0:OPAD_X0Y55}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {GTHE2_CHANNEL_X0Y0:GTHE2_CHANNEL_X0Y27}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {IBUFDS_GTE2_X0Y0:IBUFDS_GTE2_X0Y13}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {GTHE2_COMMON_X0Y0:GTHE2_COMMON_X0Y6}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {IPAD_X2Y0:IPAD_X2Y211}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {OPAD_X1Y0:OPAD_X1Y55}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {GTHE2_CHANNEL_X1Y0:GTHE2_CHANNEL_X1Y27}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {IBUFDS_GTE2_X1Y0:IBUFDS_GTE2_X1Y13}
#resize_pblock [get_pblocks pblock_u_ocl_region] -add {GTHE2_COMMON_X1Y0:GTHE2_COMMON_X1Y6}

####Pblock axi_register_slice_1####
#create_pblock axi_register_slice_1
#add_cells_to_pblock [get_pblocks axi_register_slice_1] [get_cells -quiet [list OpenCL_static_i/static_region/axi_register_slice_1]]
#resize_pblock [get_pblocks axi_register_slice_1] -add {SLICE_X0Y350:SLICE_X105Y359}
#resize_pblock [get_pblocks axi_register_slice_1] -add {DSP48_X0Y140:DSP48_X6Y143}
#resize_pblock [get_pblocks axi_register_slice_1] -add {RAMB18_X0Y140:RAMB18_X6Y143}
#resize_pblock [get_pblocks axi_register_slice_1] -add {RAMB36_X0Y70:RAMB36_X6Y71}
####Pblock axi_register_slice_2####
#create_pblock axi_register_slice_2
#add_cells_to_pblock [get_pblocks axi_register_slice_2] [get_cells -quiet [list OpenCL_static_i/static_region/axi_register_slice_2]]
#resize_pblock [get_pblocks axi_register_slice_2] -add {SLICE_X106Y350:SLICE_X221Y359}
#resize_pblock [get_pblocks axi_register_slice_2] -add {DSP48_X7Y140:DSP48_X17Y143}
#resize_pblock [get_pblocks axi_register_slice_2] -add {RAMB18_X7Y140:RAMB18_X14Y143}
#resize_pblock [get_pblocks axi_register_slice_2] -add {RAMB36_X7Y70:RAMB36_X14Y71}
####DMA_PCIE####
#create_pblock pblock_dma_pcie_0
#add_cells_to_pblock [get_pblocks pblock_dma_pcie_0] [get_cells -quiet [list OpenCL_static_i/static_region/dma_pcie_0]]
#resize_pblock [get_pblocks pblock_dma_pcie_0] -add {SLICE_X140Y360:SLICE_X221Y499}
#resize_pblock [get_pblocks pblock_dma_pcie_0] -add {DSP48_X11Y144:DSP48_X17Y199}
#resize_pblock [get_pblocks pblock_dma_pcie_0] -add {PCIE3_X0Y2:PCIE3_X0Y2}
#resize_pblock [get_pblocks pblock_dma_pcie_0] -add {RAMB18_X9Y144:RAMB18_X14Y199}
#resize_pblock [get_pblocks pblock_dma_pcie_0] -add {RAMB36_X9Y72:RAMB36_X14Y99}
# (2) PPRange change: use wildcard; shift-up due to PBLOCK shift-up
#set_property HD.PARTPIN_RANGE {SLICE_X10Y320:SLICE_X211Y349} [get_pins OpenCL_static_i/u_ocl_region/*]
#set_property HD.PARTPIN_RANGE {SLICE_X10Y304:SLICE_X210Y349} [get_pins OpenCL_static_i/u_ocl_region/*]
#set_property HD.PARTPIN_RANGE {SLICE_X52Y348:SLICE_X103Y349 SLICE_X106Y300:SLICE_X210Y349} [get_pins OpenCL_static_i/u_ocl_region/*]
#set_property HD.PARTPIN_RANGE {SLICE_X52Y348:SLICE_X103Y349 SLICE_X106Y300:SLICE_X210Y349} [get_pins OpenCL_static_i/u_ocl_region/*]
# (3) PROHIBIT only for CFG site
#set_property PROHIBIT true [get_sites SLICE_X90Y200]
#set_property PROHIBIT true [get_sites SLICE_X91Y200]
#set_property PROHIBIT true [get_sites SLICE_X90Y201]
#set_property PROHIBIT true [get_sites SLICE_X91Y201]
#set_property PROHIBIT true [get_sites SLICE_X90Y202]
#set_property PROHIBIT true [get_sites SLICE_X91Y202]
#set_property PROHIBIT true [get_sites SLICE_X90Y203]
#set_property PROHIBIT true [get_sites SLICE_X91Y203]
#set_property PROHIBIT true [get_sites SLICE_X90Y204]
#set_property PROHIBIT true [get_sites SLICE_X91Y204]
#set_property PROHIBIT true [get_sites SLICE_X90Y205]
#set_property PROHIBIT true [get_sites SLICE_X91Y205]
#set_property PROHIBIT true [get_sites SLICE_X90Y206]
#set_property PROHIBIT true [get_sites SLICE_X91Y206]
#set_property PROHIBIT true [get_sites SLICE_X90Y207]
#set_property PROHIBIT true [get_sites SLICE_X91Y207]
#set_property PROHIBIT true [get_sites SLICE_X90Y208]
#set_property PROHIBIT true [get_sites SLICE_X91Y208]
#set_property PROHIBIT true [get_sites SLICE_X90Y209]
#set_property PROHIBIT true [get_sites SLICE_X91Y209]
#set_property PROHIBIT true [get_sites SLICE_X90Y210]
#set_property PROHIBIT true [get_sites SLICE_X91Y210]
#set_property PROHIBIT true [get_sites SLICE_X90Y211]
#set_property PROHIBIT true [get_sites SLICE_X91Y211]
#set_property PROHIBIT true [get_sites SLICE_X90Y212]
#set_property PROHIBIT true [get_sites SLICE_X91Y212]
#set_property PROHIBIT true [get_sites SLICE_X90Y213]
#set_property PROHIBIT true [get_sites SLICE_X91Y213]
#set_property PROHIBIT true [get_sites SLICE_X90Y214]
#set_property PROHIBIT true [get_sites SLICE_X91Y214]
#set_property PROHIBIT true [get_sites SLICE_X90Y215]
#set_property PROHIBIT true [get_sites SLICE_X91Y215]
#set_property PROHIBIT true [get_sites SLICE_X90Y216]
#set_property PROHIBIT true [get_sites SLICE_X91Y216]
#set_property PROHIBIT true [get_sites SLICE_X90Y217]
#set_property PROHIBIT true [get_sites SLICE_X91Y217]
#set_property PROHIBIT true [get_sites SLICE_X90Y218]
#set_property PROHIBIT true [get_sites SLICE_X91Y218]
#set_property PROHIBIT true [get_sites SLICE_X90Y219]
#set_property PROHIBIT true [get_sites SLICE_X91Y219]
#set_property PROHIBIT true [get_sites SLICE_X90Y220]
#set_property PROHIBIT true [get_sites SLICE_X91Y220]
#set_property PROHIBIT true [get_sites SLICE_X90Y221]
#set_property PROHIBIT true [get_sites SLICE_X91Y221]
#set_property PROHIBIT true [get_sites SLICE_X90Y222]
#set_property PROHIBIT true [get_sites SLICE_X91Y222]
#set_property PROHIBIT true [get_sites SLICE_X90Y223]
#set_property PROHIBIT true [get_sites SLICE_X91Y223]
#set_property PROHIBIT true [get_sites SLICE_X90Y224]
#set_property PROHIBIT true [get_sites SLICE_X91Y224]
#set_property PROHIBIT true [get_sites SLICE_X90Y225]
#set_property PROHIBIT true [get_sites SLICE_X91Y225]
#set_property PROHIBIT true [get_sites SLICE_X90Y226]
#set_property PROHIBIT true [get_sites SLICE_X91Y226]
#set_property PROHIBIT true [get_sites SLICE_X90Y227]
#set_property PROHIBIT true [get_sites SLICE_X91Y227]
#set_property PROHIBIT true [get_sites SLICE_X90Y228]
#set_property PROHIBIT true [get_sites SLICE_X91Y228]
#set_property PROHIBIT true [get_sites SLICE_X90Y229]
#set_property PROHIBIT true [get_sites SLICE_X91Y229]
#set_property PROHIBIT true [get_sites SLICE_X90Y230]
#set_property PROHIBIT true [get_sites SLICE_X91Y230]
#set_property PROHIBIT true [get_sites SLICE_X90Y231]
#set_property PROHIBIT true [get_sites SLICE_X91Y231]
#set_property PROHIBIT true [get_sites SLICE_X90Y232]
#set_property PROHIBIT true [get_sites SLICE_X91Y232]
#set_property PROHIBIT true [get_sites SLICE_X90Y233]
#set_property PROHIBIT true [get_sites SLICE_X91Y233]
#set_property PROHIBIT true [get_sites SLICE_X90Y234]
#set_property PROHIBIT true [get_sites SLICE_X91Y234]
#set_property PROHIBIT true [get_sites SLICE_X90Y235]
#set_property PROHIBIT true [get_sites SLICE_X91Y235]
#set_property PROHIBIT true [get_sites SLICE_X90Y236]
#set_property PROHIBIT true [get_sites SLICE_X91Y236]
#set_property PROHIBIT true [get_sites SLICE_X90Y237]
#set_property PROHIBIT true [get_sites SLICE_X91Y237]
#set_property PROHIBIT true [get_sites SLICE_X90Y238]
#set_property PROHIBIT true [get_sites SLICE_X91Y238]
#set_property PROHIBIT true [get_sites SLICE_X90Y239]
#set_property PROHIBIT true [get_sites SLICE_X91Y239]
#set_property PROHIBIT true [get_sites SLICE_X90Y240]
#set_property PROHIBIT true [get_sites SLICE_X91Y240]
#set_property PROHIBIT true [get_sites SLICE_X90Y241]
#set_property PROHIBIT true [get_sites SLICE_X91Y241]
#set_property PROHIBIT true [get_sites SLICE_X90Y242]
#set_property PROHIBIT true [get_sites SLICE_X91Y242]
#set_property PROHIBIT true [get_sites SLICE_X90Y243]
#set_property PROHIBIT true [get_sites SLICE_X91Y243]
#set_property PROHIBIT true [get_sites SLICE_X90Y244]
#set_property PROHIBIT true [get_sites SLICE_X91Y244]
#set_property PROHIBIT true [get_sites SLICE_X90Y245]
#set_property PROHIBIT true [get_sites SLICE_X91Y245]
#set_property PROHIBIT true [get_sites SLICE_X90Y246]
#set_property PROHIBIT true [get_sites SLICE_X91Y246]
#set_property PROHIBIT true [get_sites SLICE_X91Y247]
#set_property PROHIBIT true [get_sites SLICE_X90Y248]
#set_property PROHIBIT true [get_sites SLICE_X91Y248]
#set_property PROHIBIT true [get_sites SLICE_X90Y249]
#set_property PROHIBIT true [get_sites SLICE_X91Y249]
#set_property PROHIBIT true [get_sites SLICE_X90Y250]
#set_property PROHIBIT true [get_sites SLICE_X91Y250]
#set_property PROHIBIT true [get_sites SLICE_X90Y251]
#set_property PROHIBIT true [get_sites SLICE_X91Y251]
#set_property PROHIBIT true [get_sites SLICE_X90Y252]
#set_property PROHIBIT true [get_sites SLICE_X91Y252]
#set_property PROHIBIT true [get_sites SLICE_X90Y253]
#set_property PROHIBIT true [get_sites SLICE_X91Y253]
#set_property PROHIBIT true [get_sites SLICE_X90Y254]
#set_property PROHIBIT true [get_sites SLICE_X91Y254]
#set_property PROHIBIT true [get_sites SLICE_X90Y255]
#set_property PROHIBIT true [get_sites SLICE_X91Y255]
#set_property PROHIBIT true [get_sites SLICE_X90Y256]
#set_property PROHIBIT true [get_sites SLICE_X91Y256]
#set_property PROHIBIT true [get_sites SLICE_X90Y257]
#set_property PROHIBIT true [get_sites SLICE_X91Y257]
#set_property PROHIBIT true [get_sites SLICE_X90Y258]
#set_property PROHIBIT true [get_sites SLICE_X91Y258]
#set_property PROHIBIT true [get_sites SLICE_X90Y259]
#set_property PROHIBIT true [get_sites SLICE_X91Y259]
#set_property PROHIBIT true [get_sites SLICE_X90Y260]
#set_property PROHIBIT true [get_sites SLICE_X91Y260]
#set_property PROHIBIT true [get_sites SLICE_X90Y261]
#set_property PROHIBIT true [get_sites SLICE_X91Y261]
#set_property PROHIBIT true [get_sites SLICE_X91Y262]
#set_property PROHIBIT true [get_sites SLICE_X90Y263]
#set_property PROHIBIT true [get_sites SLICE_X91Y263]
#set_property PROHIBIT true [get_sites SLICE_X90Y264]
#set_property PROHIBIT true [get_sites SLICE_X91Y264]
#set_property PROHIBIT true [get_sites SLICE_X90Y265]
#set_property PROHIBIT true [get_sites SLICE_X91Y265]
#set_property PROHIBIT true [get_sites SLICE_X90Y266]
#set_property PROHIBIT true [get_sites SLICE_X91Y266]
#set_property PROHIBIT true [get_sites SLICE_X90Y267]
#set_property PROHIBIT true [get_sites SLICE_X91Y267]
#set_property PROHIBIT true [get_sites SLICE_X90Y268]
#set_property PROHIBIT true [get_sites SLICE_X91Y268]
#set_property PROHIBIT true [get_sites SLICE_X90Y269]
#set_property PROHIBIT true [get_sites SLICE_X91Y269]
#set_property PROHIBIT true [get_sites SLICE_X90Y270]
#set_property PROHIBIT true [get_sites SLICE_X91Y270]
#set_property PROHIBIT true [get_sites SLICE_X90Y271]
#set_property PROHIBIT true [get_sites SLICE_X91Y271]
#set_property PROHIBIT true [get_sites SLICE_X90Y272]
#set_property PROHIBIT true [get_sites SLICE_X91Y272]
#set_property PROHIBIT true [get_sites SLICE_X90Y273]
#set_property PROHIBIT true [get_sites SLICE_X91Y273]
#set_property PROHIBIT true [get_sites SLICE_X90Y274]
#set_property PROHIBIT true [get_sites SLICE_X91Y274]
#set_property PROHIBIT true [get_sites SLICE_X90Y275]
#set_property PROHIBIT true [get_sites SLICE_X91Y275]
#set_property PROHIBIT true [get_sites SLICE_X90Y276]
#set_property PROHIBIT true [get_sites SLICE_X91Y276]
#set_property PROHIBIT true [get_sites SLICE_X91Y277]
#set_property PROHIBIT true [get_sites SLICE_X90Y278]
#set_property PROHIBIT true [get_sites SLICE_X91Y278]
#set_property PROHIBIT true [get_sites SLICE_X90Y279]
#set_property PROHIBIT true [get_sites SLICE_X91Y279]
#set_property PROHIBIT true [get_sites SLICE_X90Y280]
#set_property PROHIBIT true [get_sites SLICE_X91Y280]
#set_property PROHIBIT true [get_sites SLICE_X90Y281]
#set_property PROHIBIT true [get_sites SLICE_X91Y281]
#set_property PROHIBIT true [get_sites SLICE_X90Y282]
#set_property PROHIBIT true [get_sites SLICE_X91Y282]
#set_property PROHIBIT true [get_sites SLICE_X90Y283]
#set_property PROHIBIT true [get_sites SLICE_X91Y283]
#set_property PROHIBIT true [get_sites SLICE_X90Y284]
#set_property PROHIBIT true [get_sites SLICE_X91Y284]
#set_property PROHIBIT true [get_sites SLICE_X90Y285]
#set_property PROHIBIT true [get_sites SLICE_X91Y285]
#set_property PROHIBIT true [get_sites SLICE_X90Y286]
#set_property PROHIBIT true [get_sites SLICE_X91Y286]
#set_property PROHIBIT true [get_sites SLICE_X90Y287]
#set_property PROHIBIT true [get_sites SLICE_X91Y287]
#set_property PROHIBIT true [get_sites SLICE_X90Y288]
#set_property PROHIBIT true [get_sites SLICE_X91Y288]
#set_property PROHIBIT true [get_sites SLICE_X90Y289]
#set_property PROHIBIT true [get_sites SLICE_X91Y289]
#set_property PROHIBIT true [get_sites SLICE_X90Y290]
#set_property PROHIBIT true [get_sites SLICE_X91Y290]
#set_property PROHIBIT true [get_sites SLICE_X90Y291]
#set_property PROHIBIT true [get_sites SLICE_X91Y291]
#set_property PROHIBIT true [get_sites SLICE_X90Y292]
#set_property PROHIBIT true [get_sites SLICE_X91Y292]
#set_property PROHIBIT true [get_sites SLICE_X90Y293]
#set_property PROHIBIT true [get_sites SLICE_X91Y293]
#set_property PROHIBIT true [get_sites SLICE_X90Y294]
#set_property PROHIBIT true [get_sites SLICE_X91Y294]
#set_property PROHIBIT true [get_sites SLICE_X90Y295]
#set_property PROHIBIT true [get_sites SLICE_X91Y295]
#set_property PROHIBIT true [get_sites SLICE_X90Y296]
#set_property PROHIBIT true [get_sites SLICE_X91Y296]
#set_property PROHIBIT true [get_sites SLICE_X90Y297]
#set_property PROHIBIT true [get_sites SLICE_X91Y297]
#set_property PROHIBIT true [get_sites SLICE_X91Y298]
#set_property PROHIBIT true [get_sites SLICE_X90Y299]
#set_property PROHIBIT true [get_sites SLICE_X91Y299]
#set_property PROHIBIT true [get_sites SLICE_X90Y298]
#set_property PROHIBIT true [get_sites SLICE_X90Y247]
#set_property PROHIBIT true [get_sites SLICE_X90Y277]
#set_property PROHIBIT true [get_sites SLICE_X90Y262]
set_property BITSTREAM.CONFIG.CONFIGRATE 6 [current_design]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {OpenCL_static_i/util_ds_buf_0/U0/IBUF_OUT[0]}]

set_property BEL MMCME2_ADV [get_cells OpenCL_static_i/dma_pcie_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/mmcm_i]
set_property LOC MMCME2_ADV_X1Y8 [get_cells OpenCL_static_i/dma_pcie_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/mmcm_i]











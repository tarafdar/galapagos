
create_clock -period 6.400 -name xgemac_clk_156 [get_ports xphy_refclk_p]
set_property PACKAGE_PIN T6 [get_ports xphy_refclk_p]

# PCIe Lane 0
set_property BEL GTHE2_CHANNEL [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gth_channel.gthe2_channel_i}]
set_property LOC GTHE2_CHANNEL_X1Y35 [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gth_channel.gthe2_channel_i}]
# PCIe Lane 1
set_property BEL GTHE2_CHANNEL [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gth_channel.gthe2_channel_i}]
set_property LOC GTHE2_CHANNEL_X1Y34 [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gth_channel.gthe2_channel_i}]
# PCIe Lane 2
set_property BEL GTHE2_CHANNEL [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gth_channel.gthe2_channel_i}]
set_property LOC GTHE2_CHANNEL_X1Y33 [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gth_channel.gthe2_channel_i}]
# PCIe Lane 3
set_property BEL GTHE2_CHANNEL [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gth_channel.gthe2_channel_i}]
set_property LOC GTHE2_CHANNEL_X1Y32 [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gth_channel.gthe2_channel_i}]
# PCIe Lane 4
set_property BEL GTHE2_CHANNEL [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[4].gt_wrapper_i/gth_channel.gthe2_channel_i}]
set_property LOC GTHE2_CHANNEL_X1Y31 [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[4].gt_wrapper_i/gth_channel.gthe2_channel_i}]
# PCIe Lane 5
set_property BEL GTHE2_CHANNEL [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[5].gt_wrapper_i/gth_channel.gthe2_channel_i}]
set_property LOC GTHE2_CHANNEL_X1Y30 [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[5].gt_wrapper_i/gth_channel.gthe2_channel_i}]
# PCIe Lane 6
set_property BEL GTHE2_CHANNEL [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].gt_wrapper_i/gth_channel.gthe2_channel_i}]
set_property LOC GTHE2_CHANNEL_X1Y29 [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].gt_wrapper_i/gth_channel.gthe2_channel_i}]
# PCIe Lane 7
set_property BEL GTHE2_CHANNEL [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].gt_wrapper_i/gth_channel.gthe2_channel_i}]
set_property LOC GTHE2_CHANNEL_X1Y28 [get_cells {shellBD_i/xdma_0/inst/pcie3_7x_v1_3_i/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].gt_wrapper_i/gth_channel.gthe2_channel_i}]


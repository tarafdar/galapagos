set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells applicationRegion/axi_interconnect_control]
#create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 applicationRegion/axi_bram_ctrl_dummy
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl applicationRegion/axi_bram_ctrl_dummy
set_property -dict [list CONFIG.SINGLE_PORT_BRAM {1}] [get_bd_cells applicationRegion/axi_bram_ctrl_dummy]
connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_control/M00_ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_bram_ctrl_dummy/s_axi_aclk]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_bram_ctrl_dummy/s_axi_aresetn]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_control/M00_ARESETN]
#create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 applicationRegion/blk_mem_gen_dummy
create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen applicationRegion/blk_mem_gen_dummy
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins applicationRegion/axi_interconnect_control/M00_AXI] [get_bd_intf_pins applicationRegion/axi_bram_ctrl_dummy/S_AXI]
connect_bd_intf_net [get_bd_intf_pins applicationRegion/axi_bram_ctrl_dummy/BRAM_PORTA] [get_bd_intf_pins applicationRegion/blk_mem_gen_dummy/BRAM_PORTA]
assign_bd_address [get_bd_addr_segs {applicationRegion/axi_bram_ctrl_dummy/S_AXI/Mem0 }]

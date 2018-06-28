create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 applicationRegion/input_switch
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.NUM_MI ${num_local_ranks} CONFIG.DECODER_REG {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1}] [get_bd_cells applicationRegion/input_switch]
connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/input_switch/aclk]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/input_switch/aresetn]

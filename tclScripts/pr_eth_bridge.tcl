set netBridge_from_app from_app_V
set netBridge_to_app to_app_V

create_bd_cell -type ip -vlnv xilinx.com:hls:ethernet_bridge:1.0 network/network_bridge_inst
connect_bd_net [get_bd_ports CLK] [get_bd_pins network/network_bridge_inst/aclk]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins network/network_bridge_inst/aresetn]
connect_bd_net [get_bd_pins network/network_bridge_inst/mac_addr_V] [get_bd_pins network/ip_constant_block_inst/mac]
connect_bd_intf_net [get_bd_intf_ports S_AXIS] [get_bd_intf_pins network/network_bridge_inst/from_eth_V]
connect_bd_intf_net [get_bd_intf_ports M_AXIS] [get_bd_intf_pins network/network_bridge_inst/to_eth_V]
create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 network/blk_mem_bridge_rom
set_property -dict [list CONFIG.Memory_Type {Dual_Port_ROM} CONFIG.Enable_32bit_Address {false} CONFIG.Use_Byte_Write_Enable {false} CONFIG.Byte_Size {9} CONFIG.Write_Width_A {48} CONFIG.Write_Depth_A {256} CONFIG.Read_Width_A {48} CONFIG.Write_Width_B {48} CONFIG.Read_Width_B {48} CONFIG.Enable_B {Use_ENB_Pin} CONFIG.Register_PortA_Output_of_Memory_Primitives {true} CONFIG.Register_PortB_Output_of_Memory_Primitives {true} CONFIG.Use_RSTA_Pin {false} CONFIG.Port_A_Write_Rate {0} CONFIG.Port_B_Clock {100} CONFIG.Port_B_Enable_Rate {100} CONFIG.use_bram_block {Stand_Alone} CONFIG.EN_SAFETY_CKT {false} CONFIG.Load_init_file {true} CONFIG.Coe_File {../../../../../../../mac.coe}] [get_bd_cells network/blk_mem_bridge_rom]
connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/mac_table_V_PORTA] [get_bd_intf_pins network/blk_mem_bridge_rom/BRAM_PORTA]
connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/mac_table_V_PORTB] [get_bd_intf_pins network/blk_mem_bridge_rom/BRAM_PORTB]



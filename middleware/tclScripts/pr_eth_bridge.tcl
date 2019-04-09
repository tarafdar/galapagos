set netBridge_from_app from_app_V
set netBridge_to_app to_app_V

create_bd_cell -type ip -vlnv xilinx.com:hls:ethernet_bridge:1.0 network/network_bridge_inst
connect_bd_net [get_bd_ports CLK] [get_bd_pins network/network_bridge_inst/aclk]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins network/network_bridge_inst/aresetn]
connect_bd_net [get_bd_pins network/network_bridge_inst/mac_addr_V] [get_bd_pins network/ip_constant_block_inst/mac_big]
connect_bd_intf_net [get_bd_intf_ports S_AXIS] [get_bd_intf_pins network/network_bridge_inst/from_eth_V]
connect_bd_intf_net [get_bd_intf_ports M_AXIS] [get_bd_intf_pins network/network_bridge_inst/to_eth_V]
create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen network/blk_mem_bridge_rom

set_property -dict [list CONFIG.Memory_Type {Dual_Port_ROM} CONFIG.Enable_32bit_Address {true} CONFIG.Use_Byte_Write_Enable {false} CONFIG.Byte_Size {8} CONFIG.Write_Width_A {64} CONFIG.Write_Depth_A {256} CONFIG.Read_Width_A {64} CONFIG.Write_Width_B {64} CONFIG.Read_Width_B {64} CONFIG.Enable_B {Use_ENB_Pin} CONFIG.Register_PortA_Output_of_Memory_Primitives {false} CONFIG.Use_RSTA_Pin {true} CONFIG.Use_RSTB_Pin {true} CONFIG.Port_A_Write_Rate {0} CONFIG.Port_B_Clock {100} CONFIG.Port_B_Enable_Rate {100} CONFIG.use_bram_block {BRAM_Controller} CONFIG.EN_SAFETY_CKT {true} CONFIG.Load_init_file {true} CONFIG.Coe_File $top_path/projects/$default_dir/mac.coe] [get_bd_cells network/blk_mem_bridge_rom]
connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/mac_table_V_PORTA] [get_bd_intf_pins network/blk_mem_bridge_rom/BRAM_PORTA]
connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/mac_table_V_PORTB] [get_bd_intf_pins network/blk_mem_bridge_rom/BRAM_PORTB]



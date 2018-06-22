#create_bd_cell -type ip -vlnv xilinx.com:hls:ip_dest_filter:1.0 ip_dest_filter_inst
#connect_bd_net [get_bd_ports CLK] [get_bd_pins ip_dest_filter_inst/ap_clk]
#connect_bd_net [get_bd_ports ARESETN] [get_bd_pins ip_dest_filter_inst/ap_rst_n]
create_bd_cell -type ip -vlnv user.org:user:TCP_bridge_wrapper:1.0 TCP_bridge_inst
connect_bd_net [get_bd_ports CLK] [get_bd_pins TCP_bridge_inst/aclk_0]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins TCP_bridge_inst/aresetn_0]
#coe location
create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_ip_dest_rom
set_property -dict [list CONFIG.Memory_Type {Single_Port_ROM} CONFIG.Use_Byte_Write_Enable {false} CONFIG.Load_Init_File {true} CONFIG.Coe_File {../../../../../../../ip.coe} CONFIG.Port_A_Write_Rate {0}] [get_bd_cells blk_mem_ip_dest_rom]
create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_bridge_rom
set_property -dict [list CONFIG.Memory_Type {Dual_Port_ROM} CONFIG.Use_Byte_Write_Enable {false} CONFIG.Load_Init_File {true} CONFIG.Coe_File {../../../../../../../ip.coe} CONFIG.Port_A_Write_Rate {0} CONFIG.Port_B_Write_Rate {0}] [get_bd_cells blk_mem_bridge_rom]
connect_bd_intf_net [get_bd_intf_pins TCP_bridge_inst/ip_table_V_PORTA_0] [get_bd_intf_pins blk_mem_bridge_rom/BRAM_PORTA]
connect_bd_intf_net [get_bd_intf_pins TCP_bridge_inst/ip_table_V_PORTB_0] [get_bd_intf_pins blk_mem_bridge_rom/BRAM_PORTB]
connect_bd_intf_net [get_bd_intf_ports M_AXIS] [get_bd_intf_pins TCP_bridge_inst/Eth_M]
connect_bd_intf_net [get_bd_intf_ports S_AXIS] [get_bd_intf_pins TCP_bridge_inst/Eth_S]
connect_bd_net [get_bd_ports CLK] [get_bd_pins blk_mem_ip_dest_rom/clka]
connect_bd_net [get_bd_pins blk_mem_ip_dest_rom/addra] [get_bd_pins ip_dest_filter_inst/ip_table_V_address0]
connect_bd_net [get_bd_pins ip_dest_filter_inst/ip_table_V_ce0] [get_bd_pins blk_mem_ip_dest_rom/ena]
connect_bd_net [get_bd_pins blk_mem_ip_dest_rom/douta] [get_bd_pins ip_dest_filter_inst/ip_table_V_q0]
connect_bd_net [get_bd_pins ip_constant_block_inst/ip] [get_bd_pins ip_dest_filter_inst/ip_addr]
connect_bd_net [get_bd_pins TCP_bridge_inst/myIpAddress_0] [get_bd_pins ip_constant_block_inst/ip]
connect_bd_net [get_bd_pins TCP_bridge_inst/myGateway_0] [get_bd_pins ip_constant_block_inst/gateway]
connect_bd_net [get_bd_pins TCP_bridge_inst/mySubnet_0] [get_bd_pins ip_constant_block_inst/subnet]


create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_tcp_mem
set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells axi_interconnect_tcp_mem]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_tcp_mem/ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_tcp_mem/S00_ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_tcp_mem/M00_ACLK]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_tcp_mem/ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_tcp_mem/S00_ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_tcp_mem/M00_ARESETN]
connect_bd_intf_net [get_bd_intf_pins TCP_bridge_inst/DDR] -boundary_type upper [get_bd_intf_pins axi_interconnect_tcp_mem/S00_AXI]
connect_bd_intf_net [get_bd_intf_ports S_AXI_MEM_1] -boundary_type upper [get_bd_intf_pins axi_interconnect_tcp_mem/M00_AXI]
connect_bd_intf_net [get_bd_intf_pins ip_dest_filter_inst/stream_out_network] [get_bd_intf_pins TCP_bridge_inst/S_AXIS_0]


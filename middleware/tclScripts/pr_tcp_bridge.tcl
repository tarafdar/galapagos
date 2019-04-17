set TCP_bridge_name TCP_output_bridge
set TCP_ip_name tcp_ip_wrapper
set netBridge_from_app stream_in_V
set netBridge_to_app stream_out_V

create_bd_cell -type ip -vlnv xilinx.com:hls:${TCP_bridge_name}:1.0 network/network_bridge_inst
connect_bd_net [get_bd_ports CLK] [get_bd_pins network/network_bridge_inst/aclk]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins network/network_bridge_inst/aresetn]

create_bd_cell -type ip -vlnv dlyma.org:dlyma:${TCP_ip_name}:1.4 network/tcp_ip_inst
connect_bd_net [get_bd_ports CLK] [get_bd_pins network/tcp_ip_inst/aclk]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins network/tcp_ip_inst/aresetn]

connect_bd_net [get_bd_pins network/tcp_ip_inst/myIpAddress] [get_bd_pins network/ip_constant_block_inst/ip]
connect_bd_net [get_bd_pins network/tcp_ip_inst/myGateway] [get_bd_pins network/ip_constant_block_inst/gateway]
connect_bd_net [get_bd_pins network/tcp_ip_inst/mySubnet] [get_bd_pins network/ip_constant_block_inst/subnet]
connect_bd_net [get_bd_pins network/tcp_ip_inst/myMacAddress] [get_bd_pins network/ip_constant_block_inst/mac]
#create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 network/xlconstant_enable
#create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant network/xlconstant_enable
#connect_bd_net [get_bd_pins network/tcp_ip_inst/configInEn] [get_bd_pins network/xlconstant_enable/dout]

set_property -dict [list CONFIG.UDP_ENABLE {false}] [get_bd_cells network/tcp_ip_inst]
#coe location
#create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 network/blk_mem_bridge_rom
create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen network/blk_mem_bridge_rom
set_property -dict [list CONFIG.Memory_Type {Dual_Port_ROM} CONFIG.Enable_32bit_Address {true} CONFIG.Use_Byte_Write_Enable {false} CONFIG.Byte_Size {8} CONFIG.Write_Depth_A {256} CONFIG.Enable_B {Use_ENB_Pin} CONFIG.Register_PortA_Output_of_Memory_Primitives {false} CONFIG.Register_PortB_Output_of_Memory_Primitives {false} CONFIG.Use_RSTA_Pin {true} CONFIG.Use_RSTB_Pin {true} CONFIG.Port_A_Write_Rate {0} CONFIG.Port_B_Clock {100} CONFIG.Port_B_Enable_Rate {100} CONFIG.use_bram_block {BRAM_Controller} CONFIG.EN_SAFETY_CKT {true} CONFIG.Load_Init_File {true} CONFIG.Coe_File {../../../../../../../ip.coe}] [get_bd_cells network/blk_mem_bridge_rom]
#set_property -dict [list CONFIG.Memory_Type {Dual_Port_ROM} CONFIG.Use_Byte_Write_Enable {false} CONFIG.Port_A_Write_Rate {0} CONFIG.Port_B_Write_Rate {0}] [get_bd_cells network/blk_mem_bridge_rom]

#BRAM Ports
connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/ip_table_V_PORTA] [get_bd_intf_pins network/blk_mem_bridge_rom/BRAM_PORTA]
connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/ip_table_V_PORTB] [get_bd_intf_pins network/blk_mem_bridge_rom/BRAM_PORTB]

connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/m_axis_listen_port] [get_bd_intf_pins network/tcp_ip_inst/s_axis_listen_port]
connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/m_axis_open_connection] [get_bd_intf_pins network/tcp_ip_inst/s_axis_open_connection]
connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/m_axis_read_package] [get_bd_intf_pins network/tcp_ip_inst/s_axis_read_package]
connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/m_axis_tx_data] [get_bd_intf_pins network/tcp_ip_inst/s_axis_tx_data]
connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/m_axis_tx_metadata] [get_bd_intf_pins network/tcp_ip_inst/s_axis_tx_metadata]

connect_bd_intf_net [get_bd_intf_pins network/tcp_ip_inst/m_axis_listen_port_status] [get_bd_intf_pins network/network_bridge_inst/s_axis_listen_port_status]
connect_bd_intf_net [get_bd_intf_pins network/tcp_ip_inst/m_axis_notifications] [get_bd_intf_pins network/network_bridge_inst/s_axis_notifications]
connect_bd_intf_net [get_bd_intf_pins network/tcp_ip_inst/m_axis_open_status] [get_bd_intf_pins network/network_bridge_inst/s_axis_open_status]
connect_bd_intf_net [get_bd_intf_pins network/tcp_ip_inst/m_axis_rx_data] [get_bd_intf_pins network/network_bridge_inst/s_axis_rx_data]
connect_bd_intf_net [get_bd_intf_pins network/tcp_ip_inst/m_axis_rx_metadata] [get_bd_intf_pins network/network_bridge_inst/s_axis_rx_metadata]
connect_bd_intf_net [get_bd_intf_pins network/tcp_ip_inst/m_axis_tx_status] [get_bd_intf_pins network/network_bridge_inst/s_axis_tx_status]


connect_bd_intf_net [get_bd_intf_ports M_AXIS] [get_bd_intf_pins network/tcp_ip_inst/AXI_M_Stream]
connect_bd_intf_net [get_bd_intf_ports S_AXIS] [get_bd_intf_pins network/tcp_ip_inst/AXI_S_Stream]


#create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 network/axi_interconnect_tcp_mem
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect network/axi_interconnect_tcp_mem
set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells network/axi_interconnect_tcp_mem]
connect_bd_net [get_bd_ports CLK] [get_bd_pins network/axi_interconnect_tcp_mem/ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins network/axi_interconnect_tcp_mem/S00_ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins network/axi_interconnect_tcp_mem/M00_ACLK]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins network/axi_interconnect_tcp_mem/ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins network/axi_interconnect_tcp_mem/S00_ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins network/axi_interconnect_tcp_mem/M00_ARESETN]
connect_bd_intf_net [get_bd_intf_pins network/tcp_ip_inst/M00_AXI] -boundary_type upper [get_bd_intf_pins network/axi_interconnect_tcp_mem/S00_AXI]
connect_bd_intf_net [get_bd_intf_ports S_AXI_MEM_1] -boundary_type upper [get_bd_intf_pins network/axi_interconnect_tcp_mem/M00_AXI]
assign_bd_address [get_bd_addr_segs {S_AXI_MEM_1/Reg }]
set_property offset 0x00000000 [get_bd_addr_segs {network/tcp_ip_inst/M00_AXI/SEG_S_AXI_MEM_1_Reg}]
set_property range 4G [get_bd_addr_segs {network/tcp_ip_inst/M00_AXI/SEG_S_AXI_MEM_1_Reg}]



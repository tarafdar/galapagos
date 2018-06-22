#create kernels
create_bd_cell -type ip -vlnv xilinx.com:hls:dariusController:1.0 dariusController_inst
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_control
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_mem
create_bd_cell -type ip -vlnv xilinx.com:user:cnn_dataflow_v2_0:2.0 cnn_dataflow_v2_0_inst
create_bd_cell -type ip -vlnv xilinx.com:hls:conv_layer:1.0 dummy_0

#configure interconnects (control interconnect with one master) 
#mem interconnect with four slaves for 4 memory ports
set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells axi_interconnect_control]
set_property -dict [list CONFIG.NUM_MI {1} CONFIG.NUM_SI {6} ] [get_bd_cells axi_interconnect_mem]


#create and configure clock and reset
create_bd_port -dir I -type clk CLK
create_bd_port -dir I -type rst ARESETN
set_property CONFIG.FREQ_HZ 156250000 [get_bd_ports CLK]
set_property CONFIG.POLARITY ACTIVE_LOW [get_bd_ports ARESETN]
set_property CONFIG.ASSOCIATED_RESET {ARESETN} [get_bd_ports /CLK]

#connect dariusController 
connect_bd_net [get_bd_ports CLK] [get_bd_pins dariusController_inst/aclk]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins dariusController_inst/aresetn]
make_bd_pins_external  [get_bd_pins dariusController_inst/id_in_V]
make_bd_intf_pins_external  [get_bd_intf_pins dariusController_inst/stream_in_V]
set_property name stream_in [get_bd_intf_ports stream_in_V_0]
make_bd_intf_pins_external  [get_bd_intf_pins dariusController_inst/stream_out_V]
set_property name stream_out [get_bd_intf_ports stream_out_V_0]
make_bd_intf_pins_external  [get_bd_intf_pins dummy_0/s_axi_CTRL_BUS]
set_property name S_AXI_CONTROL [get_bd_intf_ports s_axi_CTRL_BUS_0]
connect_bd_intf_net [get_bd_intf_pins dariusController_inst/m_axi_darius_driver] -boundary_type upper [get_bd_intf_pins axi_interconnect_control/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins dariusController_inst/m_axi_mem] -boundary_type upper [get_bd_intf_pins axi_interconnect_mem/S00_AXI]
assign_bd_address [get_bd_addr_segs {dariusController_inst/s_axi_CTRL_BUS/Reg }]


#connect and configure control interconnect
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_control/ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_control/S00_ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_control/M00_ACLK]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_control/ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_control/S00_ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_control/M00_ARESETN]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins axi_interconnect_control/M00_AXI] [get_bd_intf_pins cnn_dataflow_v2_0_inst/s_axi_control]
assign_bd_address [get_bd_addr_segs {cnn_dataflow_v2_0_inst/s_axi_control/reg0 }]
include_bd_addr_seg [get_bd_addr_segs -excluded dariusController_inst/Data_m_axi_darius_driver/SEG_cnn_dataflow_v2_0_inst_reg0]
set_property offset 0x0000000000000000 [get_bd_addr_segs {dariusController_inst/Data_m_axi_darius_driver/SEG_cnn_dataflow_v2_0_inst_reg0}]


#connect cnn_dataflow
connect_bd_net [get_bd_ports CLK] [get_bd_pins cnn_dataflow_v2_0_inst/i_clk]
connect_bd_net [get_bd_ports CLK] [get_bd_pins cnn_dataflow_v2_0_inst/s_axi_control_aclk]
connect_bd_net [get_bd_ports CLK] [get_bd_pins cnn_dataflow_v2_0_inst/m_axi_cmd_aclk]
connect_bd_net [get_bd_ports CLK] [get_bd_pins cnn_dataflow_v2_0_inst/m_axi_ifm_aclk]
connect_bd_net [get_bd_ports CLK] [get_bd_pins cnn_dataflow_v2_0_inst/m_axi_weight_aclk]
connect_bd_net [get_bd_ports CLK] [get_bd_pins cnn_dataflow_v2_0_inst/m_axi_ofm_aclk]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins cnn_dataflow_v2_0_inst/i_rst_n]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins cnn_dataflow_v2_0_inst/s_axi_control_aresetn]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins cnn_dataflow_v2_0_inst/m_axi_cmd_aresetn]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins cnn_dataflow_v2_0_inst/m_axi_ifm_aresetn]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins cnn_dataflow_v2_0_inst/m_axi_weight_aresetn]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins cnn_dataflow_v2_0_inst/m_axi_ofm_aresetn]
connect_bd_intf_net [get_bd_intf_pins cnn_dataflow_v2_0_inst/m_axi_cmd] -boundary_type upper [get_bd_intf_pins axi_interconnect_mem/S01_AXI]
connect_bd_intf_net [get_bd_intf_pins cnn_dataflow_v2_0_inst/m_axi_ifm] -boundary_type upper [get_bd_intf_pins axi_interconnect_mem/S02_AXI]
connect_bd_intf_net [get_bd_intf_pins cnn_dataflow_v2_0_inst/m_axi_ofm] -boundary_type upper [get_bd_intf_pins axi_interconnect_mem/S03_AXI]
connect_bd_intf_net [get_bd_intf_pins cnn_dataflow_v2_0_inst/m_axi_weight] -boundary_type upper [get_bd_intf_pins axi_interconnect_mem/S04_AXI]


connect_bd_net [get_bd_ports CLK] [get_bd_pins dummy_0/ap_clk]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins dummy_0/ap_rst_n]
#create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0
#set_property -dict [list CONFIG.CONST_VAL {0}] [get_bd_cells xlconstant_0]
#connect_bd_net [get_bd_pins xlconstant_0/dout] [get_bd_pins dummy_0/ap_start]
connect_bd_intf_net [get_bd_intf_pins dummy_0/m_axi_mem] -boundary_type upper [get_bd_intf_pins axi_interconnect_mem/S05_AXI]


#connect memory interconnect and configure
make_bd_intf_pins_external  [get_bd_intf_pins axi_interconnect_mem/M00_AXI]
set_property name M_AXI_MEM [get_bd_intf_ports M00_AXI_0]


#create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_MEM
#set_property -dict [list CONFIG.NUM_WRITE_OUTSTANDING {2} CONFIG.NUM_READ_OUTSTANDING {2} CONFIG.FREQ_HZ {156250000} CONFIG.DATA_WIDTH {512} CONFIG.ADDR_WIDTH {64}] [get_bd_intf_ports M_AXI_MEM]
#connect_bd_intf_net [get_bd_intf_ports M_AXI_MEM] -boundary_type upper [get_bd_intf_pins axi_interconnect_mem/M00_AXI]



connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_mem/ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_mem/M00_ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_mem/S00_ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_mem/S01_ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_mem/S02_ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_mem/S03_ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_mem/S04_ACLK]
connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_mem/S05_ACLK]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_mem/ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_mem/S00_ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_mem/S01_ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_mem/S02_ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_mem/S03_ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_mem/S04_ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_mem/S05_ARESETN]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_mem/M00_ARESETN]

assign_bd_address [get_bd_addr_segs {M_AXI_MEM/Reg }]
set_property offset 0x0000000000000000 [get_bd_addr_segs {dariusController_inst/Data_m_axi_mem/SEG_M_AXI_MEM_Reg}]
set_property range 4G [get_bd_addr_segs {dariusController_inst/Data_m_axi_mem/SEG_M_AXI_MEM_Reg}]
set_property offset 0x00000000 [get_bd_addr_segs {cnn_dataflow_v2_0_inst/m_axi_cmd/SEG_M_AXI_MEM_Reg}]
set_property offset 0x00000000 [get_bd_addr_segs {cnn_dataflow_v2_0_inst/m_axi_ifm/SEG_M_AXI_MEM_Reg}]
set_property offset 0x00000000 [get_bd_addr_segs {cnn_dataflow_v2_0_inst/m_axi_ofm/SEG_M_AXI_MEM_Reg}]
set_property offset 0x00000000 [get_bd_addr_segs {cnn_dataflow_v2_0_inst/m_axi_weight/SEG_M_AXI_MEM_Reg}]
set_property range 4G [get_bd_addr_segs {cnn_dataflow_v2_0_inst/m_axi_cmd/SEG_M_AXI_MEM_Reg}]
set_property range 4G [get_bd_addr_segs {cnn_dataflow_v2_0_inst/m_axi_ifm/SEG_M_AXI_MEM_Reg}]
set_property range 4G [get_bd_addr_segs {cnn_dataflow_v2_0_inst/m_axi_ofm/SEG_M_AXI_MEM_Reg}]
set_property range 4G [get_bd_addr_segs {cnn_dataflow_v2_0_inst/m_axi_weight/SEG_M_AXI_MEM_Reg}]
set_property offset 0x0000000000000000 [get_bd_addr_segs {dummy_0/Data_m_axi_mem/SEG_M_AXI_MEM_Reg}]
set_property range 8G [get_bd_addr_segs {dummy_0/Data_m_axi_mem/SEG_M_AXI_MEM_Reg}]
    


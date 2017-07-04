create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 logic_1
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 src_inst
set_property -dict [list CONFIG.CONST_WIDTH {48}] [get_bd_cells src_inst]
set_property -dict [list CONFIG.CONST_VAL {274973442034179}] [get_bd_cells src_inst]
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 inputSwitch_inst
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 outputSwitch_inst
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 receiveFifo_inst
create_bd_cell -type ip -vlnv xilinx.com:hls:fireWall64:1.0 fireWall_inst
create_bd_cell -type ip -vlnv xilinx.com:hls:heartBeat:1.0 heartBeat_inst
create_bd_cell -type ip -vlnv xilinx.com:hls:fireWall64_2:1.0 fireWall2_inst
connect_bd_intf_net [get_bd_intf_pins fireWall_inst/stream_out] [get_bd_intf_pins fireWall2_inst/stream_in]
connect_bd_net [get_bd_pins fireWall_inst/match_out_V] [get_bd_pins fireWall2_inst/match_in_V]
connect_bd_net [get_bd_pins fireWall_inst/match_out_V_ap_vld] [get_bd_pins fireWall2_inst/match_in_V_ap_vld]
connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins fireWall_inst/eth_address_V]
connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins heartBeat_inst/eth_address_V]
connect_bd_net [get_bd_pins logic_1/dout] [get_bd_pins fireWall2_inst/stream_garbage_TREADY]
create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS
set_property -dict [list CONFIG.TDATA_NUM_BYTES [get_property CONFIG.TDATA_NUM_BYTES [get_bd_intf_pins receiveFifo_inst/S_AXIS]] CONFIG.HAS_TLAST [get_property CONFIG.HAS_TLAST [get_bd_intf_pins receiveFifo_inst/S_AXIS]]] [get_bd_intf_ports S_AXIS]
connect_bd_intf_net [get_bd_intf_pins receiveFifo_inst/S_AXIS] [get_bd_intf_ports S_AXIS]
connect_bd_intf_net [get_bd_intf_pins receiveFifo_inst/M_AXIS] [get_bd_intf_pins fireWall_inst/stream_in]
connect_bd_intf_net [get_bd_intf_pins fireWall2_inst/stream_out] [get_bd_intf_pins inputSwitch_inst/S00_AXIS]
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 sendFifo_inst
connect_bd_intf_net [get_bd_intf_pins outputSwitch_inst/M00_AXIS] [get_bd_intf_pins sendFifo_inst/S_AXIS]
create_bd_port -dir I -type clk CLK_DATA
create_bd_port -dir I -type clk CLK_CONTROL
create_bd_port -dir I -type rst ARESETN
connect_bd_net [get_bd_pins fireWall_inst/ap_clk] [get_bd_ports CLK_DATA]
connect_bd_net [get_bd_pins fireWall_inst/ap_rst_n] [get_bd_ports ARESETN]
connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins fireWall2_inst/ap_clk]
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins fireWall2_inst/ap_rst_n]
connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins heartBeat_inst/ap_clk]
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins heartBeat_inst/ap_rst_n]
connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins inputSwitch_inst/aclk]
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins inputSwitch_inst/aresetn]
connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins outputSwitch_inst/aclk]
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins outputSwitch_inst/aresetn]
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins receiveFifo_inst/s_axis_aresetn]
connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins receiveFifo_inst/s_axis_aclk]
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins sendFifo_inst/s_axis_aresetn]
connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins sendFifo_inst/s_axis_aclk]
create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS
connect_bd_intf_net [get_bd_intf_pins sendFifo_inst/M_AXIS] [get_bd_intf_ports M_AXIS]
startgroup
create_bd_cell -type ip -vlnv xilinx.com:hls:packetMask:1.0 packetMask_inst_0
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetMask_inst_0/ap_clk] 
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetMask_inst_0/ap_rst_n]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_1
set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells id_1]
set_property -dict [list CONFIG.CONST_VAL {1}] [get_bd_cells id_1]
connect_bd_net [get_bd_pins id_1/dout] [get_bd_pins packetMask_inst_0/id_V]
create_bd_cell -type ip -vlnv xilinx.com:hls:packetMask:1.0 packetMask_inst_1
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetMask_inst_1/ap_clk] 
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetMask_inst_1/ap_rst_n]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_2
set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells id_2]
set_property -dict [list CONFIG.CONST_VAL {2}] [get_bd_cells id_2]
connect_bd_net [get_bd_pins id_2/dout] [get_bd_pins packetMask_inst_1/id_V]
create_bd_cell -type ip -vlnv xilinx.com:hls:packetMask:1.0 packetMask_inst_2
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetMask_inst_2/ap_clk] 
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetMask_inst_2/ap_rst_n]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_3
set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells id_3]
set_property -dict [list CONFIG.CONST_VAL {3}] [get_bd_cells id_3]
connect_bd_net [get_bd_pins id_3/dout] [get_bd_pins packetMask_inst_2/id_V]
create_bd_cell -type ip -vlnv xilinx.com:hls:packetMask:1.0 packetMask_inst_3
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetMask_inst_3/ap_clk] 
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetMask_inst_3/ap_rst_n]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_9
set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells id_9]
set_property -dict [list CONFIG.CONST_VAL {9}] [get_bd_cells id_9]
connect_bd_net [get_bd_pins id_9/dout] [get_bd_pins packetMask_inst_3/id_V]
create_bd_cell -type ip -vlnv xilinx.com:hls:packetMask:1.0 packetMask_inst_4
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetMask_inst_4/ap_clk] 
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetMask_inst_4/ap_rst_n]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_10
set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells id_10]
set_property -dict [list CONFIG.CONST_VAL {10}] [get_bd_cells id_10]
connect_bd_net [get_bd_pins id_10/dout] [get_bd_pins packetMask_inst_4/id_V]
create_bd_cell -type ip -vlnv xilinx.com:hls:packetMaker:1.0 packetMaker_inst_0
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetMaker_inst_0/ap_clk] 
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetMaker_inst_0/ap_rst_n]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_11
set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells id_11]
set_property -dict [list CONFIG.CONST_VAL {11}] [get_bd_cells id_11]
connect_bd_net [get_bd_pins id_11/dout] [get_bd_pins packetMaker_inst_0/id_V]
create_bd_cell -type ip -vlnv xilinx.com:hls:packetMaker:1.0 packetMaker_inst_1
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetMaker_inst_1/ap_clk] 
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetMaker_inst_1/ap_rst_n]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_13
set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells id_13]
set_property -dict [list CONFIG.CONST_VAL {13}] [get_bd_cells id_13]
connect_bd_net [get_bd_pins id_13/dout] [get_bd_pins packetMaker_inst_1/id_V]
create_bd_cell -type ip -vlnv xilinx.com:hls:packetMaker:1.0 packetMaker_inst_2
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetMaker_inst_2/ap_clk] 
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetMaker_inst_2/ap_rst_n]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_14
set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells id_14]
set_property -dict [list CONFIG.CONST_VAL {14}] [get_bd_cells id_14]
connect_bd_net [get_bd_pins id_14/dout] [get_bd_pins packetMaker_inst_2/id_V]
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_0
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_0
set_property -dict [list CONFIG.CONST_WIDTH {48}] [get_bd_cells pf_dst_inst_0]
set_property -dict [list CONFIG.CONST_VAL {274973442034180}] [get_bd_cells pf_dst_inst_0]
connect_bd_net [get_bd_pins pf_dst_inst_0/dout] [get_bd_pins packetFormatter_inst_0/eth_dst_V]
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetFormatter_inst_0/ap_clk]
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetFormatter_inst_0/ap_rst_n] 
connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins packetFormatter_inst_0/eth_src_V] [get_bd_pins src_inst/dout]
create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_1
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_1
set_property -dict [list CONFIG.CONST_WIDTH {48}] [get_bd_cells pf_dst_inst_1]
set_property -dict [list CONFIG.CONST_VAL {274973442034180}] [get_bd_cells pf_dst_inst_1]
connect_bd_net [get_bd_pins pf_dst_inst_1/dout] [get_bd_pins packetFormatter_inst_1/eth_dst_V]
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetFormatter_inst_1/ap_clk]
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetFormatter_inst_1/ap_rst_n] 
connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins packetFormatter_inst_1/eth_src_V] [get_bd_pins src_inst/dout]
create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_2
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_2
set_property -dict [list CONFIG.CONST_WIDTH {48}] [get_bd_cells pf_dst_inst_2]
set_property -dict [list CONFIG.CONST_VAL {274973442034180}] [get_bd_cells pf_dst_inst_2]
connect_bd_net [get_bd_pins pf_dst_inst_2/dout] [get_bd_pins packetFormatter_inst_2/eth_dst_V]
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetFormatter_inst_2/ap_clk]
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetFormatter_inst_2/ap_rst_n] 
connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins packetFormatter_inst_2/eth_src_V] [get_bd_pins src_inst/dout]
endgroup
startgroup
set_property -dict [list CONFIG.NUM_SI {4}] [get_bd_cells outputSwitch_inst]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1}] [get_bd_cells outputSwitch_inst]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1}] [get_bd_cells outputSwitch_inst]
set_property -dict [list CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1}] [get_bd_cells outputSwitch_inst]
endgroup
set_property -dict [list CONFIG.NUM_SI {8} CONFIG.NUM_MI {6} CONFIG.DECODER_REG {1}] [get_bd_cells inputSwitch_inst]
set_property -dict [list CONFIG.HAS_TLAST.VALUE_SRC USER CONFIG.TDATA_NUM_BYTES.VALUE_SRC USER] [get_bd_cells inputSwitch_inst]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1}] [get_bd_cells inputSwitch_inst]
set_property -dict [list CONFIG.M00_AXIS_BASETDEST {0x00000001} CONFIG.M00_AXIS_HIGHTDEST {0x00000001} CONFIG.M01_AXIS_BASETDEST {0x00000002} CONFIG.M01_AXIS_HIGHTDEST {0x00000002} CONFIG.M02_AXIS_BASETDEST {0x00000004} CONFIG.M02_AXIS_HIGHTDEST {0x00000004} CONFIG.M03_AXIS_BASETDEST {0x00000005} CONFIG.M03_AXIS_HIGHTDEST {0x00000005} CONFIG.M04_AXIS_BASETDEST {0x00000006} CONFIG.M04_AXIS_HIGHTDEST {0x00000006} CONFIG.M05_AXIS_BASETDEST {0x0000000f} CONFIG.M05_AXIS_HIGHTDEST {0x0000000f} ] [get_bd_cells inputSwitch_inst]
set_property -dict [list CONFIG.TDATA_NUM_BYTES.VALUE_SRC USER CONFIG.HAS_TLAST.VALUE_SRC USER] [get_bd_cells receiveFifo_inst]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1}] [get_bd_cells receiveFifo_inst]
set_property -dict [list CONFIG.FIFO_DEPTH {32768}] [get_bd_cells receiveFifo_inst]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8}   CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1} ] [get_bd_cells receiveFifo_inst]
set_property -dict [list CONFIG.FIFO_DEPTH {32768} CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1}] [get_bd_cells sendFifo_inst]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0
create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0
set_property -dict [list CONFIG.DATA_WIDTH {64} CONFIG.SINGLE_PORT_BRAM {1} CONFIG.ECC_TYPE {0}] [get_bd_cells axi_bram_ctrl_0]
startgroup
create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
set_property -dict [list CONFIG.DATA_WIDTH [get_property CONFIG.DATA_WIDTH [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.ADDR_WIDTH [get_property CONFIG.ADDR_WIDTH [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.HAS_QOS [get_property CONFIG.HAS_QOS [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.HAS_REGION [get_property CONFIG.HAS_REGION [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.NUM_READ_OUTSTANDING [get_property CONFIG.NUM_READ_OUTSTANDING [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.NUM_WRITE_OUTSTANDING [get_property CONFIG.NUM_WRITE_OUTSTANDING [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]]] [get_bd_intf_ports S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_ports S_AXI]
endgroup
connect_bd_net -net [get_bd_nets CLK_CONTROL_1] [get_bd_ports CLK_CONTROL] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk]
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn]
connect_bd_intf_net [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA]
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 sched_inst_0
create_bd_cell -type ip -vlnv xilinx.com:hls:roundRobin:1.0 roundRobin_inst_0
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 roundRobinBase_inst_0
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 roundRobinMax_inst_0
set_property -dict [list CONFIG.CONST_WIDTH {8} CONFIG.CONST_VAL {9}] [get_bd_cells roundRobinBase_inst_0]
connect_bd_net [get_bd_pins roundRobinBase_inst_0/dout] [get_bd_pins roundRobin_inst_0/base_V]
connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins roundRobin_inst_0/ap_clk] 
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins roundRobin_inst_0/ap_rst_n] 
connect_bd_net [get_bd_nets CLK_DATA_1]  [get_bd_ports CLK_DATA] [get_bd_pins sched_inst_0/aclk] 
connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins sched_inst_0/aresetn]
set_property -dict [list CONFIG.CONST_WIDTH {8} CONFIG.CONST_VAL {10}] [get_bd_cells roundRobinMax_inst_0]
connect_bd_net [get_bd_pins roundRobinMax_inst_0/dout] [get_bd_pins roundRobin_inst_0/max_V]
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {2} CONFIG.DECODER_REG {1}] [get_bd_cells sched_inst_0]
connect_bd_intf_net [get_bd_intf_pins packetMaker_inst_0/packetOut] [get_bd_intf_pins packetMask_inst_2/packetIn]
connect_bd_intf_net [get_bd_intf_pins sched_inst_0/M00_AXIS] [get_bd_intf_pins packetMask_inst_3/packetIn]
connect_bd_intf_net [get_bd_intf_pins sched_inst_0/M01_AXIS] [get_bd_intf_pins packetMask_inst_4/packetIn]
connect_bd_intf_net [get_bd_intf_pins packetMask_inst_0/packetOut] [get_bd_intf_pins inputSwitch_inst/S01_AXIS]
connect_bd_intf_net [get_bd_intf_pins packetMask_inst_1/packetOut] [get_bd_intf_pins inputSwitch_inst/S02_AXIS]
connect_bd_intf_net [get_bd_intf_pins packetMask_inst_2/packetOut] [get_bd_intf_pins inputSwitch_inst/S03_AXIS]
connect_bd_intf_net [get_bd_intf_pins packetMask_inst_3/packetOut] [get_bd_intf_pins inputSwitch_inst/S04_AXIS]
connect_bd_intf_net [get_bd_intf_pins packetMask_inst_4/packetOut] [get_bd_intf_pins inputSwitch_inst/S05_AXIS]
connect_bd_intf_net [get_bd_intf_pins packetMaker_inst_1/packetOut] [get_bd_intf_pins inputSwitch_inst/S06_AXIS]
connect_bd_intf_net [get_bd_intf_pins packetMaker_inst_2/packetOut] [get_bd_intf_pins inputSwitch_inst/S07_AXIS]
connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M00_AXIS] [get_bd_intf_pins packetMask_inst_0/packetIn]
connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M01_AXIS] [get_bd_intf_pins packetMask_inst_1/packetIn]
connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M02_AXIS] [get_bd_intf_pins packetFormatter_inst_0/packetIn]
connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M03_AXIS] [get_bd_intf_pins packetFormatter_inst_1/packetIn]
connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M04_AXIS] [get_bd_intf_pins packetFormatter_inst_2/packetIn]
connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M05_AXIS] [get_bd_intf_pins roundRobin_inst_0/packetIn]
connect_bd_intf_net [get_bd_intf_pins roundRobin_inst_0/packetOut] [get_bd_intf_pins sched_inst_0/S00_AXIS]
connect_bd_intf_net [get_bd_intf_pins packetFormatter_inst_0/packetOut] [get_bd_intf_pins outputSwitch_inst/S00_AXIS]
connect_bd_intf_net [get_bd_intf_pins packetFormatter_inst_1/packetOut] [get_bd_intf_pins outputSwitch_inst/S01_AXIS]
connect_bd_intf_net [get_bd_intf_pins packetFormatter_inst_2/packetOut] [get_bd_intf_pins outputSwitch_inst/S02_AXIS]
connect_bd_intf_net [get_bd_intf_pins heartBeat_inst/stream_out] [get_bd_intf_pins outputSwitch_inst/S03_AXIS]

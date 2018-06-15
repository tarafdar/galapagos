#!/usr/bin/python

import sys
import subprocess
import os


#interfaces constant
#creates the standard interfaces, same for all fpgas

def createStandardInterfaces(tclMain):
    tclMain.write('create_bd_port -dir I -type clk CLK\n')
    tclMain.write('set_property CONFIG.FREQ_HZ 156250000 [get_bd_ports CLK]\n')
    tclMain.write('create_bd_port -dir I -type rst ARESETN\n')
    tclMain.write('create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CONTROL\n')
    tclMain.write('create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MEM_0\n')
    tclMain.write('create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MEM_1\n')
    tclMain.write('set_property -dict [list CONFIG.MAX_BURST_LENGTH {1} CONFIG.NUM_WRITE_OUTSTANDING {2} CONFIG.NUM_READ_OUTSTANDING {2} CONFIG.SUPPORTS_NARROW_BURST {0} CONFIG.ADDR_WIDTH {16} CONFIG.FREQ_HZ {156250000} CONFIG.PROTOCOL {AXI4LITE} CONFIG.HAS_QOS {0} CONFIG.HAS_REGION {0}] [get_bd_intf_ports S_AXI_CONTROL]\n')
    tclMain.write('set_property -dict [list CONFIG.NUM_WRITE_OUTSTANDING {2} CONFIG.NUM_READ_OUTSTANDING {2} CONFIG.FREQ_HZ {156250000} CONFIG.DATA_WIDTH {512}] [get_bd_intf_ports S_AXI_MEM_0]\n')
    tclMain.write('set_property -dict [list CONFIG.NUM_WRITE_OUTSTANDING {2} CONFIG.NUM_READ_OUTSTANDING {2} CONFIG.FREQ_HZ {156250000} CONFIG.DATA_WIDTH {512}] [get_bd_intf_ports S_AXI_MEM_1]\n')
    tclMain.write('create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS\n')
    tclMain.write('create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS\n')


def userApplicationRegion(tclMain, fpga):
    tclMain.write('create_bd_cell -type hier applicationRegion')
    tclMain.write('set num_local_ranks ' + str(len(fpga.kernels)) + '\n')
    
    
    #iterate through all kernels on FPGA counting mem and control interfaces and instantitating them
    for kernel in fpga.kernels:
        instName = kernel.name + "_inst_" + str(kernel.id_num)
        if kernel.ctrl_interface != None:
            num_ctrl_interfaces = num_ctrl_interfaces + 1
        num_mem_interfaces = num_mem_interfaces + len(kernel.mem_interfaces)
        tclMain.write('create_bd_cell -type ip -vlnv ' + kernel.ip_vendor + ':'+ kernel.ip_type + ':' + kernel.name +':' +  kernel.ip_version + ' applicationRegion/' + instName + '\n')
        tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/' + instName + '/' + kernel.clk + '] \n')

        tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/' + instName  + '/' + kernel.aresetn + ']\n')
        if (kernel.id_port != ''):
            tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 applicationRegion/id_' + str(kernel.id_num) + '\n')
            tclMain.write('set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells applicationRegion/id_' + str(kernel.id_num) + ']\n')
            tclMain.write('set_property -dict [list CONFIG.CONST_VAL {' + str(kernel.id_num) + '}] [get_bd_cells applicationRegion/id_' + str(kernel.id_num) + ']\n')
            tclMain.write('connect_bd_net [get_bd_pins applicationRegion/id_' + str(kernel.id_num) + '/dout] [get_bd_pins applicationRegion/' + instName + '/' + kernel.id_port + ']\n')
    
    #initialize axi_control_interface interconnect slave side (1 slave)
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 applicationRegion/axi_interconnect_control\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_ports S_AXI_CONTROL] -boundary_type upper [get_bd_intf_pins applicationRegion/axi_interconnect_control/S00_AXI]\n')
    tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_control/ACLK]\n')
    tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_control/ARESETN]\n')
    tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_control/S00_ACLK]\n')
    tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_control/S00_ARESETN]\n')
    
    #make dummy bram for control interface if no control interfaces
    if(num_ctrl_interfaces == 0):
        tclMain.write('set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells applicationRegion/axi_interconnect_control]\n')
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 applicationRegion/axi_bram_ctrl_dummy\n')
        tclMain.write('set_property -dict [list CONFIG.SINGLE_PORT_BRAM {1}] [get_bd_cells applicationRegion/axi_bram_ctrl_dummy]\n')
        tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_control/M00_ACLK]\n')
        tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_control/ARESETN]\n')
        tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_control/M00_ARESETN]\n')
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 applicationRegion/blk_mem_gen_dummy\n')
        tclMain.write('connect_bd_intf_net -boundary_type upper [get_bd_intf_pins applicationRegion/axi_interconnect_control/M00_AXI] [get_bd_intf_pins applicationRegion/axi_bram_ctrl_dummy/S_AXI]\n')
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins applicationRegionaxi_bram_ctrl_dummy/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_dummy/BRAM_PORTA]\n')
        tclMain.write('assign_bd_address [get_bd_addr_segs {axi_bram_ctrl_dummy/S_AXI/Mem0 }]\n')
    else:
        tclMain.write('set_property -dict [list CONFIG.NUM_MI {' + str(num_ctrl_interfaces) + '}] [get_bd_cells axi_interconnect_control]\n')
    
    
    #only make switches if more than one kernel
    if len(fpga.kernels) > 1:
        #create input switch
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 applicationRegion/input_switch\n')
        tclMain.write('set_property -dict [list CONFIG.NUM_SI {2} CONFIG.NUM_MI ${num_local_ranks} CONFIG.DECODER_REG {1}] [get_bd_cells applicationRegion/input_switch]\n')
        tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/input_switch/aclk]\n')
        tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/input_switch/aresetn]\n')
        #create output switch
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 applicationRegion/output_switch\n')
        tclMain.write('set_property -dict [list CONFIG.NUM_SI ${num_local_ranks} CONFIG.NUM_MI {1} CONFIG.DECODER_REG {1}] [get_bd_cells applicationRegion/output_switch]\n')
        tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/output_switch/aclk]\n')
        tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/output_switch/aresetn]\n')

        num_ctrl_interfaces = 0
        num_mem_interfaces = 0

    


    #initialize axi_mem_interface interconnect master side (1 master)

    if(num_mem_interfaces > 0):
        tclMain.write('set mem_ports_plus_one ' + str(num_mem_interfaces) + '\n')
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_mem\n')
        tclMain.write('set_property -dict [list CONFIG.NUM_SI ${mem_ports_plus_one} CONFIG.NUM_MI {1}] [get_bd_cells axi_interconnect_mem]\n')
        tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_mem/ACLK]\n')
        tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_mem/M00_ACLK]\n')
        tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_mem/ARESETN]\n')
        tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_mem/M00_ARESETN]\n')
    


    #iterate through all kernels on FPGA connecting them to the input and output switches and their control and memory interfaces
    ctrl_interface_index = 0
    mem_interface_index = 0
    kernel_index = 0
    for kernel in fpga.kernels:
        instName = kernel.name + "_inst_" + str(kernel.id_num)
        kernel_index_str = "%02d"%kernel_index
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + instName + '/' + kernel.stream_in  + '] [get_bd_intf_pins input_switch/M' + kernel_index_str + '_AXIS]\n')
        if kernel.ctrl_interface != None:
            ctrl_interface_index_str = "%02d"%ctrl_interface_index
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + instName + '/' + kernel.ctrl_interface.name  + '] [get_bd_intf_pins axi_interconnect_control/M' + ctrl_interface_index_str + '_AXI]\n')
            tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_control/M' + ctrl_interface_index_str + '_ACLK]\n')
            tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_control/M' + ctrl_interface_index_str + '_ARESETN]\n')
            ctrl_interface_index = ctrl_interface_index + 1
        
        for mem_interface in kernel.mem_interfaces:
            mem_interface_index_str = "%02d"%mem_interface_index
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + instName + '/' + mem_interface  + '] [get_bd_intf_pins axi_interconnect_mem/S' + mem_interface_index_str + '_AXI]\n')
            tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_mem/S' + mem_interface_index_str + '_ACLK]\n')
            tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_mem/S' + mem_interface_index_str + '_ARESETN]\n')
            mem_interface_index = mem_interface_index + 1
        kernel_index = kernel_index + 1



    #connect mem interconnect and assign addresses, all kernels need to be 32 bit addressable
    #connect ctrl interconnect and assign addresses
    tclMain.write('connect_bd_intf_net [get_bd_intf_ports S_AXI_MEM_0] -boundary_type upper [get_bd_intf_pins axi_interconnect_mem/M00_AXI]\n')
    tclMain.write('assign_bd_address [get_bd_addr_segs {S_AXI_MEM_0/Reg }]\n')

    for kernel in fpga.kernels:
        instName = kernel.name + "_inst_" + str(kernel.id_num)
        for mem_interface in kernel.mem_interfaces:
            tclMain.write('set_property offset 0x00000000 [get_bd_addr_segs {' + instName + '/' + mem_interface  +'/SEG_S_AXI_MEM_0_Reg}]\n')
            tclMain.write('set_property range 4G [get_bd_addr_segs {' + instName + '/' + mem_interface +  '/SEG_S_AXI_MEM_0_Reg}]\n')
        if kernel.ctrl_interface != None:
            tclMain.write('assign_bd_address [get_bd_addr_segs {' + instName + '/' + kernel.ctrl_interface.name + '/Reg0 }]\n')
   


    #connect TCP bridge to other memory port and make it 4G addressable
    tclMain.write('assign_bd_address [get_bd_addr_segs {S_AXI_MEM_1/Reg }]\n')
    #tclMain.write('set_property offset 0x00000000 [get_bd_addr_segs {darius_wrapper_bd_inst_1/M_AXI_MEM/SEG_S_AXI_MEM_0_Reg}]\n')
    #tclMain.write('set_property range 4G [get_bd_addr_segs {darius_wrapper_bd_inst_1/M_AXI_MEM/SEG_S_AXI_MEM_0_Reg}]\n')


def makeTCLFiles(fpga, projectName, networkBridges):
    outDir = 'projects/' + projectName + '/' + str(fpga.num)
    tclMain = open( outDir + '/' + str(fpga.num) + '.tcl', 'w')
#    tclMain.write('add_files -norecurse projects/' + projectName + '/ip.coe\n')
    
    
    #input switch
    

    if len(fpga.kernels) > 1:

    ip_addr = fpga.ip_addr.split(".")

    tclMain.write('set ip_b3 ' + ip_addr[0] + '\n')
    tclMain.write('set ip_b2 ' + ip_addr[1] + '\n') 
    tclMain.write('set ip_b1 ' + ip_addr[2] + '\n')
    tclMain.write('set ip_b0 ' + ip_addr[3] + '\n') 
    tclMain.write('set ip_gateway_b3 ' + ip_addr[0] + '\n')  
    tclMain.write('set ip_gateway_b2 ' + ip_addr[1] + '\n') 
    tclMain.write('set ip_gateway_b1 ' + ip_addr[2] + '\n') 
    tclMain.write('set ip_gateway_b0 ' + '100\n')  
    tclMain.write('set subnet_b3 ' + '255\n')   
    tclMain.write('set subnet_b2 ' + '255\n') 
    tclMain.write('set subnet_b1 ' + '255\n') 
    tclMain.write('set subnet_b0 ' + '0\n') 
    tclMain.write('set mac ' + '0x' + fpga.mac_addr.replace(":","") + '\n')
    tclMain.write('create_bd_cell -type ip -vlnv user.org:user:ip_constant_block:1.0 ip_constant_block_inst\n')
    tclMain.write('set_property -dict [list CONFIG.C_IP_B0 ${ip_b0} CONFIG.C_IP_B1 ${ip_b1} CONFIG.C_IP_B2 ${ip_b2} CONFIG.C_IP_B3 ${ip_b3} CONFIG.C_GATEWAY_B0 ${ip_gateway_b0} CONFIG.C_GATEWAY_B1 ${ip_gateway_b1} CONFIG.C_GATEWAY_B2 ${ip_gateway_b2} CONFIG.C_GATEWAY_B3 ${ip_gateway_b3} CONFIG.C_SUBNET_B0 ${subnet_b0} CONFIG.C_SUBNET_B1 ${subnet_b1} CONFIG.C_SUBNET_B2 ${subnet_b2} CONFIG.C_SUBNET_B3 ${subnet_b3} CONFIG.C_MAC ${mac}] [get_bd_cells ip_constant_block_inst]\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:ip_dest_filter:1.0 ip_dest_filter_inst\n')
    tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins ip_dest_filter_inst/ap_clk]\n')
    tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins ip_dest_filter_inst/ap_rst_n]\n')
    tclMain.write('create_bd_cell -type ip -vlnv user.org:user:TCP_bridge_wrapper:1.0 TCP_bridge_inst\n')
    tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins TCP_bridge_inst/aclk_0]\n')
    tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins TCP_bridge_inst/aresetn_0]\n')
    #be wary of ip.coe location
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_ip_dest_rom\n')
    tclMain.write('set_property -dict [list CONFIG.Memory_Type {Single_Port_ROM} CONFIG.Use_Byte_Write_Enable {false} CONFIG.Load_Init_File {true} CONFIG.Coe_File {../../../../../../../ip.coe} CONFIG.Port_A_Write_Rate {0}] [get_bd_cells blk_mem_ip_dest_rom]\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_bridge_rom\n')
    tclMain.write('set_property -dict [list CONFIG.Memory_Type {Dual_Port_ROM} CONFIG.Use_Byte_Write_Enable {false} CONFIG.Load_Init_File {true} CONFIG.Coe_File {../../../../../../../ip.coe} CONFIG.Port_A_Write_Rate {0} CONFIG.Port_B_Write_Rate {0}] [get_bd_cells blk_mem_bridge_rom]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins TCP_bridge_inst/ip_table_V_PORTA_0] [get_bd_intf_pins blk_mem_bridge_rom/BRAM_PORTA]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins TCP_bridge_inst/ip_table_V_PORTB_0] [get_bd_intf_pins blk_mem_bridge_rom/BRAM_PORTB]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_ports M_AXIS] [get_bd_intf_pins TCP_bridge_inst/Eth_M]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_ports S_AXIS] [get_bd_intf_pins TCP_bridge_inst/Eth_S]\n')
    tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins blk_mem_ip_dest_rom/clka]\n')
    tclMain.write('connect_bd_net [get_bd_pins blk_mem_ip_dest_rom/addra] [get_bd_pins ip_dest_filter_inst/ip_table_V_address0]\n')
    tclMain.write('connect_bd_net [get_bd_pins ip_dest_filter_inst/ip_table_V_ce0] [get_bd_pins blk_mem_ip_dest_rom/ena]\n')
    tclMain.write('connect_bd_net [get_bd_pins blk_mem_ip_dest_rom/douta] [get_bd_pins ip_dest_filter_inst/ip_table_V_q0]\n')
    tclMain.write('connect_bd_net [get_bd_pins ip_constant_block_inst/ip] [get_bd_pins ip_dest_filter_inst/ip_addr]\n')
    tclMain.write('connect_bd_net [get_bd_pins TCP_bridge_inst/myIpAddress_0] [get_bd_pins ip_constant_block_inst/ip]\n')
    tclMain.write('connect_bd_net [get_bd_pins TCP_bridge_inst/myGateway_0] [get_bd_pins ip_constant_block_inst/gateway]\n')
    tclMain.write('connect_bd_net [get_bd_pins TCP_bridge_inst/mySubnet_0] [get_bd_pins ip_constant_block_inst/subnet]\n')
    
    if len(fpga.kernels) > 1:
        if networkBridges != None:
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins output_switch/M00_AXIS] [get_bd_intf_pins bridgeToNetwork/' + networkBridges.stream_in_to + ']\n')
        else:    
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins output_switch/M00_AXIS] [get_bd_intf_pins ip_dest_filter_inst/stream_in]\n')

    tclMain.write('connect_bd_intf_net [get_bd_intf_pins ip_dest_filter_inst/stream_out_switch] [get_bd_intf_pins input_switch/S01_AXIS]\n')
    
    
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_tcp_mem\n')
    tclMain.write('set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells axi_interconnect_tcp_mem]\n')
    tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_tcp_mem/ACLK]\n')
    tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_tcp_mem/S00_ACLK]\n')
    tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins axi_interconnect_tcp_mem/M00_ACLK]\n')
    tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_tcp_mem/ARESETN]\n')
    tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_tcp_mem/S00_ARESETN]\n')
    tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins axi_interconnect_tcp_mem/M00_ARESETN]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins TCP_bridge_inst/DDR] -boundary_type upper [get_bd_intf_pins axi_interconnect_tcp_mem/S00_AXI]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_ports S_AXI_MEM_1] -boundary_type upper [get_bd_intf_pins axi_interconnect_tcp_mem/M00_AXI]\n')


    tclMain.write('connect_bd_intf_net [get_bd_intf_pins ip_dest_filter_inst/stream_out_network] [get_bd_intf_pins TCP_bridge_inst/S_AXIS_0]\n')
    if networkBridges != None:   
        #if bridges exist instantiate them
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:' + networkBridges.bridgeToLocation + ':1.0 bridgeToNetwork_inst\n')
        tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins bridgeToNetwork_inst/aclk]\n')
        tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins bridgeToNetwork_inst/aresetn]\n')
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:' + networkBridges.bridgeFromLocation + ':1.0 bridgeFromNetwork_inst\n')
        tclMain.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins bridgeFromNetwork_inst/aclk]\n')
        tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins bridgeFromNetwork_inst/aresetn]\n')
#        tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeToNetwork_inst/stream_in_V] [get_bd_intf_pins ip_dest_filter_inst/stream_out_network]\n')
#        tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeToNetwork_inst/stream_out_V] [get_bd_intf_pins TCP_bridge_inst/S_AXIS_0]\n')
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins TCP_bridge_inst/M_AXIS_0] [get_bd_intf_pins bridgeFromNetwork_inst/stream_in_V]\n')

        tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeFromNetwork_inst/'+ networkBridges.stream_out_from + '] [get_bd_intf_pins input_switch/S00_AXIS]\n')
#        tclMain.write('connect_bd_intf_net [get_bd_intf_pins TCP_bridge_inst/M_AXIS_0] [get_bd_intf_pins input_switch/S00_AXIS]\n')

    else:
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins TCP_bridge_inst/M_AXIS_0] [get_bd_intf_pins input_switch/S00_AXIS]\n')
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeToNetwork_inst/stream_out_V] [get_bd_intf_pins ip_dest_filter_inst/stream_in]\n')




    #move all network cores in a tcp_bridge_hierarchy
    tclMain.write('create_bd_cell -type hier tcp_bridge_logic\n')
    tclMain.write('move_bd_cells [get_bd_cells tcp_bridge_logic] [get_bd_cells TCP_bridge_inst]\n')
    tclMain.write('move_bd_cells [get_bd_cells tcp_bridge_logic] [get_bd_cells ip_dest_filter_inst]\n')
    tclMain.write('move_bd_cells [get_bd_cells tcp_bridge_logic] [get_bd_cells ip_constant_block_inst]\n')
    tclMain.write('move_bd_cells [get_bd_cells tcp_bridge_logic] [get_bd_cells blk_mem_bridge_rom]\n')
    tclMain.write('move_bd_cells [get_bd_cells tcp_bridge_logic] [get_bd_cells blk_mem_ip_dest_rom]\n')





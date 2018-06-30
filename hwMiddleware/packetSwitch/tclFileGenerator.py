#!/usr/bin/python

import sys
import subprocess
import os


#interfaces constant
#creates the standard interfaces, same for all fpgas


def userApplicationRegion_control_inst(tcl_user_app, num_ctrl_interfaces):
    #initialize axi_control_interface interconnect slave side (1 slave)
    tcl_user_app.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 applicationRegion/axi_interconnect_control\n')
    tcl_user_app.write('connect_bd_intf_net [get_bd_intf_ports S_AXI_CONTROL] -boundary_type upper [get_bd_intf_pins applicationRegion/axi_interconnect_control/S00_AXI]\n')
    tcl_user_app.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_control/ACLK]\n')
    tcl_user_app.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_control/ARESETN]\n')
    tcl_user_app.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_control/S00_ACLK]\n')
    tcl_user_app.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_control/S00_ARESETN]\n')
    
    #make dummy bram for control interface if no control interfaces
    if(num_ctrl_interfaces == 0):
        tcl_user_app.write('source ./tclScripts/pr_dummy_bram_ctrl.tcl\n')
    else:
        tcl_user_app.write('set_property -dict [list CONFIG.NUM_MI {' + str(num_ctrl_interfaces) + '}] [get_bd_cells applicationRegion/axi_interconnect_control]\n')
    

def userApplicationRegion_mem_inst(tcl_user_app, num_mem_interfaces, num_ctrl_interfaces, shared):
    
    #initialize axi_mem_interface interconnect master side (1 master)
    if(num_mem_interfaces > 0):
        tcl_user_app.write('set mem_ports ' + str(num_mem_interfaces) + '\n')
        if shared:
            tcl_user_app.write('set mem_master_ports 2\n')
        else:
            tcl_user_app.write('set mem_master_ports 1\n')
        tcl_user_app.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 applicationRegion/axi_interconnect_mem\n')
        tcl_user_app.write('set_property -dict [list CONFIG.NUM_SI ${mem_ports} CONFIG.NUM_MI ${mem_master_ports}] [get_bd_cells applicationRegion/axi_interconnect_mem]\n')
        tcl_user_app.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_mem/ACLK]\n')
        tcl_user_app.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_mem/M00_ACLK]\n')
        tcl_user_app.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_mem/ARESETN]\n')
        tcl_user_app.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_mem/M00_ARESETN]\n')
        tcl_user_app.write('connect_bd_intf_net [get_bd_intf_ports S_AXI_MEM_0] -boundary_type upper [get_bd_intf_pins applicationRegion/axi_interconnect_mem/M00_AXI]\n')
        if shared:
            tcl_user_app.write('connect_bd_intf_net [get_bd_intf_ports S_AXI_MEM_1] -boundary_type upper [get_bd_intf_pins applicationRegion/axi_interconnect_mem/M01_AXI]\n')
            tcl_user_app.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_mem/M01_ACLK]\n')
            tcl_user_app.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_mem/M01_ARESETN]\n')
    else:
        if(num_ctrl_interfaces == 0):
            num_ctrl_interfaces_temp = 1 
        else:
            num_ctrl_interfaces_temp = num_ctrl_interfaces

        if shared:
            additional_mem_interfaces = 2
        else:
            additional_mem_interfaces = 1

        #add first memory interface in shell to axi_interconnect control
        tcl_user_app.write('set_property -dict [list CONFIG.NUM_MI {' +  str(num_ctrl_interfaces_temp + additional_mem_interfaces) + '}] [get_bd_cells applicationRegion/axi_interconnect_control]\n')
        control_inc_str = "%02d"%num_ctrl_interfaces_temp
        tcl_user_app.write('connect_bd_intf_net [get_bd_intf_ports S_AXI_MEM_0] -boundary_type upper [get_bd_intf_pins applicationRegion/axi_interconnect_control/M'+ control_inc_str + '_AXI]\n')
        tcl_user_app.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_control/M' + control_inc_str + '_ACLK]\n')
        tcl_user_app.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_control/M' + control_inc_str + '_ARESETN]\n')
        tcl_user_app.write('assign_bd_address [get_bd_addr_segs {S_AXI_MEM_0/Reg }]\n')
       
        #add second memory interface in shell to axi_interconnect control
        if shared:
            num_ctrl_interfaces_temp = num_ctrl_interfaces_temp + 1
            control_inc_str = "%02d"%num_ctrl_interfaces_temp
            tcl_user_app.write('connect_bd_intf_net [get_bd_intf_ports S_AXI_MEM_1] -boundary_type upper [get_bd_intf_pins applicationRegion/axi_interconnect_control/M'+ control_inc_str + '_AXI]\n')
            tcl_user_app.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_control/M' + control_inc_str + '_ACLK]\n')
            tcl_user_app.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_control/M' + control_inc_str + '_ARESETN]\n')



def userApplicationRegion_inst_kernels_count_interfaces(tcl_user_app, fpga):
   
    num_mem_interfaces = 0
    num_ctrl_interfaces = 0
    num_debug_interfaces = 0
    #iterate through all kernels on FPGA counting mem and control interfaces and instantitating them
    for kernel in fpga.kernels:
        num_debug_interfaces += len(kernel.debug_interfaces)
        instName = kernel.name + "_inst_" + str(kernel.id_num)
        if kernel.ctrl_interface != None:
            num_ctrl_interfaces = num_ctrl_interfaces + 1
        num_mem_interfaces = num_mem_interfaces + len(kernel.mem_interfaces)
        #instantiate kernel
        tcl_user_app.write('create_bd_cell -type ip -vlnv ' + kernel.ip_vendor + ':'+ kernel.ip_type + ':' + kernel.name +':' +  kernel.ip_version + ' applicationRegion/' + instName + '\n')
        #connect kernel to clock and reset
        tcl_user_app.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/' + instName + '/' + kernel.clk + '] \n')
        tcl_user_app.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/' + instName  + '/' + kernel.aresetn + ']\n')
        #instantiate and connect constant for id
        if (kernel.id_port != ''):
            tcl_user_app.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 applicationRegion/id_' + str(kernel.id_num) + '\n')
            tcl_user_app.write('set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells applicationRegion/id_' + str(kernel.id_num) + ']\n')
            tcl_user_app.write('set_property -dict [list CONFIG.CONST_VAL {' + str(kernel.id_num) + '}] [get_bd_cells applicationRegion/id_' + str(kernel.id_num) + ']\n')
            tcl_user_app.write('connect_bd_net [get_bd_pins applicationRegion/id_' + str(kernel.id_num) + '/dout] [get_bd_pins applicationRegion/' + instName + '/' + kernel.id_port + ']\n')
   
        for constant in kernel.constants:
            tcl_user_app.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 applicationRegion/' + instName + '_' + constant.name + '\n')
            tcl_user_app.write('set_property -dict [list CONFIG.CONST_WIDTH {' + constant.width + '}] [get_bd_cells applicationRegion/' + instName + '_' + constant.name + ']\n')
            tcl_user_app.write('set_property -dict [list CONFIG.CONST_VAL {' + constant.val + '}] [get_bd_cells applicationRegion/' + instName + '_' + constant.name + ']\n')
            tcl_user_app.write('connect_bd_net [get_bd_pins applicationRegion/' + instName + '_' + constant.name + '/dout] [get_bd_pins applicationRegion/' + instName + '/' + constant.name + ']\n')


    return num_ctrl_interfaces, num_mem_interfaces, num_debug_interfaces



def userApplicationRegion_create_switches(tcl_user_app, fpga):
    tcl_user_app.write('create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 applicationRegion/blk_mem_switch_rom\n')
    
    if fpga.comm == 'tcp':
        tcl_user_app.write('create_bd_cell -type ip -vlnv xilinx.com:hls:ip_dest_filter:1.0 applicationRegion/custom_switch_inst\n')

        tcl_user_app.write('set_property -dict [list CONFIG.Memory_Type {Single_Port_ROM} CONFIG.Enable_32bit_Address {true} CONFIG.Use_Byte_Write_Enable {false} CONFIG.Byte_Size {8} CONFIG.Write_Width_A {64} CONFIG.Write_Depth_A {256} CONFIG.Read_Width_A {64} CONFIG.Write_Width_B {64} CONFIG.Read_Width_B {64} CONFIG.Register_PortA_Output_of_Memory_Primitives {false} CONFIG.Use_RSTA_Pin {true} CONFIG.Port_A_Write_Rate {0} CONFIG.use_bram_block {BRAM_Controller} CONFIG.EN_SAFETY_CKT {true} CONFIG.Load_Init_File {true} CONFIG.Coe_File {../../../../../../../ip.coe}] [get_bd_cells applicationRegion/blk_mem_switch_rom]\n')
        tcl_user_app.write('connect_bd_net [get_bd_pins network/ip_constant_block_inst/ip] [get_bd_pins applicationRegion/custom_switch_inst/ip_addr]\n')
        tcl_user_app.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/custom_switch_inst/ip_table_V_PORTA] [get_bd_intf_pins applicationRegion/blk_mem_switch_rom/BRAM_PORTA]\n')
    elif fpga.comm == 'eth':
        tcl_user_app.write('create_bd_cell -type ip -vlnv xilinx.com:hls:eth_dest_filter:1.0 applicationRegion/custom_switch_inst\n')
        tcl_user_app.write('set_property -dict [list CONFIG.Memory_Type {Single_Port_ROM} CONFIG.Enable_32bit_Address {true} CONFIG.Use_Byte_Write_Enable {false} CONFIG.Byte_Size {8} CONFIG.Write_Width_A {64} CONFIG.Write_Depth_A {256} CONFIG.Read_Width_A {64} CONFIG.Write_Width_B {64} CONFIG.Read_Width_B {64} CONFIG.Register_PortA_Output_of_Memory_Primitives {false} CONFIG.Use_RSTA_Pin {true} CONFIG.Port_A_Write_Rate {0} CONFIG.use_bram_block {BRAM_Controller} CONFIG.EN_SAFETY_CKT {true} CONFIG.Load_init_file {true} CONFIG.Coe_File {../../../../../../../mac.coe}] [get_bd_cells applicationRegion/blk_mem_switch_rom]\n')
        tcl_user_app.write('connect_bd_net [get_bd_pins network/ip_constant_block_inst/mac] [get_bd_pins applicationRegion/custom_switch_inst/mac_addr]\n')
        tcl_user_app.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/custom_switch_inst/mac_table_V_PORTA] [get_bd_intf_pins applicationRegion/blk_mem_switch_rom/BRAM_PORTA]\n')
    
    tcl_user_app.write('connect_bd_net [get_bd_pins CLK] [get_bd_pins applicationRegion/custom_switch_inst/aclk]\n')
    tcl_user_app.write('connect_bd_net [get_bd_pins ARESETN] [get_bd_pins applicationRegion/custom_switch_inst/aresetn]\n')
    tcl_user_app.write('source ./tclScripts/pr_inst_input_switch.tcl\n')
    if len(fpga.kernels) > 1:
        tcl_user_app.write('source ./tclScripts/pr_inst_output_switch.tcl\n')







def userApplicationRegion_kernel_connect_switches(tcl_user_app, fpga):
    
    #iterate through all kernels on FPGA connecting them to the input and output switches and their control and memory interfaces
    ctrl_interface_index = 0
    mem_interface_index = 0
    kernel_index = 0
    for kernel in fpga.kernels:
        instName = kernel.name + "_inst_" + str(kernel.id_num)
        kernel_index_str = "%02d"%kernel_index
        if (len(fpga.kernels) > 1):
            tcl_user_app.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/' + instName + '/' + kernel.stream_in  + '] [get_bd_intf_pins applicationRegion/input_switch/M' + kernel_index_str + '_AXIS]\n')
            tcl_user_app.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/' + instName + '/' + kernel.stream_out  + '] [get_bd_intf_pins applicationRegion/output_switch/S' + kernel_index_str + '_AXIS]\n')
        else:
            tcl_user_app.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/' + instName + '/' + kernel.stream_out  + '] [get_bd_intf_pins applicationRegion/custom_switch_inst/stream_in_V]\n')
            tcl_user_app.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/' + instName + '/' + kernel.stream_in  + '] [get_bd_intf_pins applicationRegion/input_switch/M00_AXIS]\n')
            
        if kernel.ctrl_interface != None:
            ctrl_interface_index_str = "%02d"%ctrl_interface_index
            tcl_user_app.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/' + instName + '/' + kernel.ctrl_interface.name  + '] [get_bd_intf_pins applicationRegion/axi_interconnect_control/M' + ctrl_interface_index_str + '_AXI]\n')
            tcl_user_app.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_control/M' + ctrl_interface_index_str + '_ACLK]\n')
            tcl_user_app.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_control/M' + ctrl_interface_index_str + '_ARESETN]\n')
            ctrl_interface_index = ctrl_interface_index + 1
        
        for mem_interface in kernel.mem_interfaces:
            mem_interface_index_str = "%02d"%mem_interface_index
            tcl_user_app.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/' + instName + '/' + mem_interface  + '] [get_bd_intf_pins applicationRegion/axi_interconnect_mem/S' + mem_interface_index_str + '_AXI]\n')
            tcl_user_app.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins applicationRegion/axi_interconnect_mem/S' + mem_interface_index_str + '_ACLK]\n')
            tcl_user_app.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins applicationRegion/axi_interconnect_mem/S' + mem_interface_index_str + '_ARESETN]\n')
            mem_interface_index = mem_interface_index + 1
        kernel_index = kernel_index + 1

    
    tcl_user_app.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/custom_switch_inst/stream_out_switch_V] [get_bd_intf_pins applicationRegion/input_switch/S01_AXIS]\n')
    if(len(fpga.kernels) > 1):
        tcl_user_app.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/output_switch/M00_AXIS] [get_bd_intf_pins applicationRegion/custom_switch_inst/stream_in_V]\n')

def add_debug_interfaces(outDir, num_debug_interfaces, fpga):
    tcl_debug_app = open( outDir + '/' + str(fpga.num) + '_debug.tcl', 'w')

    #adding ILA ports
    if num_debug_interfaces > 0:
        tcl_debug_app.write('create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_streams\n')

        tcl_debug_app.write('set_property -dict [list CONFIG.C_BRAM_CNT {6} CONFIG.C_NUM_MONITOR_SLOTS {'+ str(num_debug_interfaces + 8) + '} CONFIG.ALL_PROBE_SAME_MU {true} ')
        for debug_interface_index in range(0, num_debug_interfaces + 7):
            tcl_debug_app.write('CONFIG.C_SLOT_' + str(debug_interface_index) + '_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} ')

        
        tcl_debug_app.write('CONFIG.C_SLOT_' + str(num_debug_interfaces + 7) + '_INTF_TYPE {xilinx.com:interface:bram_rtl:1.0} ')

        tcl_debug_app.write('] [get_bd_cells system_ila_streams]\n')
        tcl_debug_app.write('connect_bd_net [get_bd_pins CLK] [get_bd_pins system_ila_streams/clk]\n')
        tcl_debug_app.write('connect_bd_net [get_bd_pins ARESETN] [get_bd_pins system_ila_streams/resetn]\n')
        debug_interface_index = 0
        for kernel in fpga.kernels:
            instName = kernel.name + "_inst_" + str(kernel.id_num)
            for debug_interface in kernel.debug_interfaces:
                tcl_debug_app.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/' +instName + '/' + debug_interface + '] [get_bd_intf_pins system_ila_streams/SLOT_' + str(debug_interface_index) + '_AXIS]\n')
                debug_interface_index = debug_interface_index + 1
        debug_interface_index = num_debug_interfaces
        tcl_debug_app.write('connect_bd_intf_net [get_bd_intf_pins system_ila_streams/SLOT_'+ str(debug_interface_index) + '_AXIS] [get_bd_intf_pins application_bridge_inst/from_net_V]\n')
        debug_interface_index = debug_interface_index + 1 
        tcl_debug_app.write('connect_bd_intf_net [get_bd_intf_pins system_ila_streams/SLOT_'+ str(debug_interface_index) + '_AXIS] [get_bd_intf_pins application_bridge_inst/to_app_V]\n')
        debug_interface_index = debug_interface_index + 1 
        tcl_debug_app.write('connect_bd_intf_net [get_bd_intf_pins system_ila_streams/SLOT_'+ str(debug_interface_index) + '_AXIS] [get_bd_intf_pins application_bridge_inst/from_app_V]\n')
        debug_interface_index = debug_interface_index + 1 
        tcl_debug_app.write('connect_bd_intf_net [get_bd_intf_pins system_ila_streams/SLOT_'+ str(debug_interface_index) + '_AXIS] [get_bd_intf_pins application_bridge_inst/to_net_V]\n')
        debug_interface_index = debug_interface_index + 1 
        tcl_debug_app.write('connect_bd_intf_net [get_bd_intf_pins system_ila_streams/SLOT_'+ str(debug_interface_index) + '_AXIS] [get_bd_intf_pins applicationRegion/output_switch/M00_AXIS]\n')
        debug_interface_index = debug_interface_index + 1 
        tcl_debug_app.write('connect_bd_intf_net [get_bd_intf_pins system_ila_streams/SLOT_'+ str(debug_interface_index) + '_AXIS] [get_bd_intf_pins applicationRegion/custom_switch_inst/stream_out_switch_V]\n')
        debug_interface_index = debug_interface_index + 1 
        tcl_debug_app.write('connect_bd_intf_net [get_bd_intf_pins system_ila_streams/SLOT_'+ str(debug_interface_index) + '_AXIS] [get_bd_intf_ports S_AXIS]\n')
        
        
        debug_interface_index = debug_interface_index + 1 
        if fpga.comm == 'eth':
            tcl_debug_app.write('connect_bd_intf_net [get_bd_intf_pins system_ila_streams/SLOT_'+ str(debug_interface_index) + '_BRAM] [get_bd_intf_pins applicationRegion/custom_switch_inst/mac_table_V_PORTA]\n')
        else:
            tcl_debug_app.write('connect_bd_intf_net [get_bd_intf_pins system_ila_streams/SLOT_'+ str(debug_interface_index) + '_BRAM] [get_bd_intf_pins applicationRegion/custom_switch_inst/ip_table_V_PORTA]\n')


    



def userApplicationRegion_assign_addresses(tcl_user_app, fpga, shared):

    #connect mem interconnect and assign addresses, all kernels need to be 32 bit addressable
    #connect ctrl interconnect and assign addresses
   
    
    

    for kernel in fpga.kernels:
        instName = kernel.name + "_inst_" + str(kernel.id_num)
        for mem_interface in kernel.mem_interfaces:
            tcl_user_app.write('assign_bd_address [get_bd_addr_segs {S_AXI_MEM_0/Reg }]\n')
            tcl_user_app.write('set_property offset 0x00000000 [get_bd_addr_segs {applicationRegion/' + instName + '/' + mem_interface  +'/SEG_S_AXI_MEM_0_Reg}]\n')
            tcl_user_app.write('set_property range 4G [get_bd_addr_segs {applicationRegion/' + instName + '/' + mem_interface +  '/SEG_S_AXI_MEM_0_Reg}]\n')
            if shared:
                tcl_user_app.write('assign_bd_address [get_bd_addr_segs {S_AXI_MEM_1/Reg }]\n')
                tcl_user_app.write('set_property offset 0x100000000 [get_bd_addr_segs {applicationRegion/' + instName + '/' + mem_interface + '/SEG_S_AXI_MEM_1_Reg}]\n')
                tcl_user_app.write('set_property range 4G [get_bd_addr_segs {applicationRegion/' + instName + '/' +  mem_interface + '/SEG_S_AXI_MEM_1_Reg}]\n')
            #else:
            #    tcl_user_app.write('exclude_bd_addr_seg [get_bd_addr_segs applicationRegion/dariusMPI_debug_8x8_inst_1/M_AXI_MEM/SEG_S_AXI_MEM_1_Reg]\n')

        if kernel.ctrl_interface != None:
            tcl_user_app.write('assign_bd_address [get_bd_addr_segs {applicationRegion/' + instName + '/' + kernel.ctrl_interface.name + '/Reg0 }]\n')
  




def userApplicationRegion(outDir, fpga, address_space):

    tcl_user_app = open( outDir + '/' + str(fpga.num) + '_app.tcl', 'w')
    tcl_user_app.write('create_bd_cell -type hier applicationRegion\n')
    tcl_user_app.write('set num_local_ranks ' + str(len(fpga.kernels)) + '\n')
    

    num_ctrl_interfaces, num_mem_interfaces, num_debug_interfaces = userApplicationRegion_inst_kernels_count_interfaces(tcl_user_app, fpga)
    userApplicationRegion_control_inst(tcl_user_app, num_ctrl_interfaces)
    #if communication medium is ethernet then combine offchip memory into one shared address space
    userApplicationRegion_mem_inst(tcl_user_app, num_mem_interfaces, num_ctrl_interfaces, fpga.comm == 'eth')
    #userApplicationRegion_mem_inst(tcl_user_app, num_mem_interfaces, 0)
    userApplicationRegion_create_switches(tcl_user_app, fpga)
    userApplicationRegion_kernel_connect_switches(tcl_user_app, fpga)
    if num_mem_interfaces > 0:
        userApplicationRegion_assign_addresses(tcl_user_app, fpga, fpga.comm == 'eth' and address_space == 64)
    
    return num_debug_interfaces

def net_bridge_constants(tcl_net, fpga):

    ip_addr = fpga.ip_addr.split(".")
    tcl_net.write('set ip_b3 ' + ip_addr[0] + '\n')
    tcl_net.write('set ip_b2 ' + ip_addr[1] + '\n') 
    tcl_net.write('set ip_b1 ' + ip_addr[2] + '\n')
    tcl_net.write('set ip_b0 ' + ip_addr[3] + '\n') 
    tcl_net.write('set ip_gateway_b3 ' + ip_addr[0] + '\n')  
    tcl_net.write('set ip_gateway_b2 ' + ip_addr[1] + '\n') 
    tcl_net.write('set ip_gateway_b1 ' + ip_addr[2] + '\n') 
    tcl_net.write('set ip_gateway_b0 ' + '100\n')  
    tcl_net.write('set subnet_b3 ' + '255\n')   
    tcl_net.write('set subnet_b2 ' + '255\n') 
    tcl_net.write('set subnet_b1 ' + '255\n') 
    tcl_net.write('set subnet_b0 ' + '0\n') 
    tcl_net.write('set mac ' + '0x' + fpga.mac_addr.replace(":","") + '\n')
    tcl_net.write('create_bd_cell -type ip -vlnv user.org:user:ip_constant_block:1.0 network/ip_constant_block_inst\n')
    tcl_net.write('set_property -dict [list CONFIG.C_IP_B0 ${ip_b0} CONFIG.C_IP_B1 ${ip_b1} CONFIG.C_IP_B2 ${ip_b2} CONFIG.C_IP_B3 ${ip_b3} CONFIG.C_GATEWAY_B0 ${ip_gateway_b0} CONFIG.C_GATEWAY_B1 ${ip_gateway_b1} CONFIG.C_GATEWAY_B2 ${ip_gateway_b2} CONFIG.C_GATEWAY_B3 ${ip_gateway_b3} CONFIG.C_SUBNET_B0 ${subnet_b0} CONFIG.C_SUBNET_B1 ${subnet_b1} CONFIG.C_SUBNET_B2 ${subnet_b2} CONFIG.C_SUBNET_B3 ${subnet_b3} CONFIG.C_MAC ${mac}] [get_bd_cells network/ip_constant_block_inst]\n')

    if fpga.comm == 'tcp':
        tcl_net.write('source ./tclScripts/pr_tcp_bridge.tcl\n')
    elif fpga.comm == 'eth': 
        tcl_net.write('source ./tclScripts/pr_eth_bridge.tcl\n')
    


def net_bridge(outDir, fpga):
    tcl_net = open( outDir + '/' + str(fpga.num) + '_net.tcl', 'w')
    tcl_net.write('create_bd_cell -type hier network\n')
    net_bridge_constants(tcl_net, fpga)


def bridge_connections(outDir, fpga):
    tcl_bridge_connections = open( outDir + '/' + str(fpga.num) + '_bridge_connections.tcl', 'w')

    #no bridge directly connect
    if fpga.app_bridge == None:
        tcl_bridge_connections.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/custom_switch_inst/stream_out_network_V] [get_bd_intf_pins network/network_bridge_inst/${netBridge_from_app}]\n')
        tcl_bridge_connections.write('connect_bd_intf_net [get_bd_intf_pins network/network_bridge_inst/${netBridge_to_app}] [get_bd_intf_pins applicationRegion/input_switch/S00_AXIS]\n')
    else:
        tcl_bridge_connections.write('create_bd_cell -type ip -vlnv ' + fpga.app_bridge.kernel.ip_vendor + ':' + fpga.app_bridge.kernel.ip_type + ':' + fpga.app_bridge.kernel.name + ':' + fpga.app_bridge.kernel.ip_version + ' application_bridge_inst\n')
        tcl_bridge_connections.write('connect_bd_net [get_bd_ports CLK] [get_bd_pins application_bridge_inst/' + fpga.app_bridge.kernel.clk + ']\n')
        tcl_bridge_connections.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins application_bridge_inst/' + fpga.app_bridge.kernel.aresetn  + ']\n')
        tcl_bridge_connections.write('connect_bd_intf_net [get_bd_intf_pins application_bridge_inst/' + fpga.app_bridge.to_app + '] [get_bd_intf_pins applicationRegion/input_switch/S00_AXIS]\n')
        tcl_bridge_connections.write('connect_bd_intf_net [get_bd_intf_pins applicationRegion/custom_switch_inst/stream_out_network_V] [get_bd_intf_pins application_bridge_inst/' + fpga.app_bridge.from_app + ']\n')
        tcl_bridge_connections.write('connect_bd_intf_net [get_bd_intf_pins application_bridge_inst/' + fpga.app_bridge.to_net + '] [get_bd_intf_pins network/network_bridge_inst/${netBridge_from_app}]\n')
        tcl_bridge_connections.write('connect_bd_intf_net [get_bd_intf_pins application_bridge_inst/' + fpga.app_bridge.from_net + '] [get_bd_intf_pins network/network_bridge_inst/${netBridge_to_app}]\n')


def makeTCLFiles(fpga, projectName, networkBridges):
    

    address_space = 32 

    outDir = 'projects/' + projectName + '/' + str(fpga.num)
    net_bridge(outDir, fpga)
    num_debug_interfaces = userApplicationRegion(outDir, fpga, address_space)
    bridge_connections(outDir, fpga)
    if(num_debug_interfaces > 0):
        add_debug_interfaces(outDir, num_debug_interfaces, fpga)

    tclMain = open( outDir + '/' + str(fpga.num) + '.tcl', 'w')
    tclMain.write('source ./tclScripts/pr_standard_interfaces.tcl\n')
    tclMain.write('source ' + outDir + '/' + str(fpga.num) + '_net.tcl\n')
    tclMain.write('source ' + outDir + '/' + str(fpga.num) + '_app.tcl\n')
    tclMain.write('source ' + outDir + '/' + str(fpga.num) + '_bridge_connections.tcl\n')

    if(num_debug_interfaces > 0):
        tclMain.write('source ' + outDir + '/' + str(fpga.num) + '_debug.tcl\n')
   
    tclMain.write('validate_bd_design\n')




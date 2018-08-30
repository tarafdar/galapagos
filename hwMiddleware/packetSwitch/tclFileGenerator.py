#!/usr/bin/python

import sys
import subprocess
import os
from tclMe import tclMeFile

#interfaces constant
#creates the standard interfaces, same for all fpgas



def userApplicationRegion_control_inst(tcl_user_app, num_ctrl_interfaces):
    #initialize axi_control_interface interconnect slave side (1 slave)

    #make dummy bram for control interface if no control interfaces
    if(num_ctrl_interfaces == 0):
        tcl_user_app.instBlock(
                {'name':'axi_vip',
                'inst':'applicationRegion/axi_vip_ctrl',
                'clks':['aclk'],
                'resetns':['aresetn'],
                'properties':['CONFIG.PROTOCOL {AXI4LITE}', 'CONFIG.INTERFACE_MODE {SLAVE}']
                }
                )
        tcl_user_app.makeConnection( 
                    'intf', 
                    {
                    'name':None,
                    'type':'intf_port',
                    'port_name':'S_AXI_CONTROL'
                    },
                    {'name':'applicationRegion/axi_vip_ctrl',
                    'type':'intf',
                    'port_name':'S_AXI'
                    }
                    )
    else:
        tcl_user_app.instBlock( 
                {'name':'smartconnect', 
                'inst':'applicationRegion/axi_interconnect_ctrl', 
                'clks':['aclk'],
                'resetns':['aresetn'],
                'properties':['CONFIG.NUM_SI {1}',
                    'CONFIG.NUM_MI {' + str(num_ctrl_interfaces) + '}']
                }
                )
        tcl_user_app.makeConnection( 
                    'intf', 
                    {
                    'name':None,
                    'type':'intf_port',
                    'port_name':'S_AXI_CONTROL'
                    },
                    {'name':'applicationRegion/axi_interconnect_ctrl',
                    'type':'intf',
                    'port_name':'S00_AXI'
                    }
                    )
    

def userApplicationRegion_mem_inst(tcl_user_app, num_mem_interfaces, shared):

    if (num_mem_interfaces > 0):
        if shared:
            properties = ['CONFIG.NUM_MI {2}']
        else:
            properties = ['CONFIG.NUM_MI {1}']
        tcl_user_app.instBlock( 
                {
                'name':'smartconnect', 
                'inst':'applicationRegion/axi_interconnect_mem',
                'clks':['aclk'],
                'resetns':['aresetn'],
                'properties':properties
                }
                )
        tcl_user_app.makeConnection( 
                    'intf', 
                    {
                    'name':'applicationRegion/axi_interconnect_mem',
                    'type':'intf',
                    'port_name':'M00_AXI'
                    },
                    {'name':None, 
                    'type':'intf_port', 
                    'port_name':'S_AXI_MEM_0'
                    }
                    )
        if shared:
            tcl_user_app.makeConnection(
                        'intf', 
                        {
                        'name':'applicationRegion/axi_interconnect_mem',
                        'type':'intf',
                        'port_name':'M01_AXI'
                        },
                        {'name':None, 
                        'type':'intf_port', 
                        'port_name':'S_AXI_MEM_1'
                        }
                        )


    else:
        #no mem interface use VIP instead 
        tcl_user_app.instBlock( 
                {
                'name':'axi_vip', 
                'inst':'applicationRegion/axi_vip_mem_0', 
                'clks':['aclk'], 
                'resetns':['aresetn'],
                'properties':['CONFIG.INTERFACE_MODE {MASTER}', 'CONFIG.DATA_WIDTH {512}']
                }
                )
        tcl_user_app.makeConnection( 
                    'intf', 
                    {
                    'name':'applicationRegion/axi_vip_mem_0',
                    'type':'intf',
                    'port_name':'M_AXI'
                    },
                    {'name':None, 
                    'type':'intf_port', 
                    'port_name':'S_AXI_MEM_0'
                    }
                    )
        if shared:
            tcl_user_app.instBlock( 
                     {
                      'name':'axi_vip', 
                      'inst':'applicationRegion/axi_vip_mem_1', 
                      'clks':['aclk'], 
                      'resetns':['aresetn'],
                      'properties':['CONFIG.INTERFACE_MODE {MASTER}', 'CONFIG.DATA_WIDTH {512}']
                      }
                      )
            tcl_user_app.makeConnection(
                          'intf', 
                          {
                          'name':'applicationRegion/axi_vip_mem_1',
                          'type':'intf',
                          'port_name':'M_AXI'
                          },
                          {
                          'name':None,
                          'type':'intf_port',
                          'port_name':'S_AXI_MEM_1'
                          }
                          )



def userApplicationRegion_inst_kernels_count_interfaces(tcl_user_app, fpga):
   
    num_mem_interfaces = 0
    num_ctrl_interfaces = 0
    num_debug_interfaces = 0
   
    #count interfaces
    for kernel in fpga.kernels:
        num_debug_interfaces += len(kernel.debug_interfaces)
        if kernel.ctrl_interface != None:
            num_ctrl_interfaces = num_ctrl_interfaces + 1
        num_mem_interfaces = num_mem_interfaces + len(kernel.mem_interfaces)


    #instantiate kernels
    for kernel in fpga.kernels:
        instName = kernel.name + "_inst_" + str(kernel.id_num)
        #instantiate kernel
        tcl_user_app.instBlock(
                {
                'vendor':kernel.ip_vendor,
                'type':kernel.ip_type,
                'name':kernel.name,
                'inst':'applicationRegion/' + instName,
                'clks':[kernel.clk],
                'resetns':[kernel.aresetn]
                }
                )
        #instantiate and connect constant for id
        if (kernel.id_port != ''):
            tcl_user_app.instBlock(
                    {
                    'name':'xlconstant',
                    'inst': 'applicationRegion/id_' + str(kernel.id_num),
                    'properties':['CONFIG.CONST_WIDTH {32}',
                        'CONFIG.CONST_VAL {'+ str(kernel.id_num)+'}']
                    }
                    )
            tcl_user_app.makeConnection(
                    'net', 
                        {
                        'name':'applicationRegion/id_' + str(kernel.id_num),
                        'type':'pin',
                        'port_name':'dout'
                        },
                        {
                        'name':'applicationRegion/' + instName,
                        'type':'pin',
                        'port_name':kernel.id_port
                        }
                        )
   
        for constant in kernel.constants:
            tcl_user_app.instBlock( 
                    {
                    'name':'xlconstant',
                    'inst': 'applicationRegion/' + instName + '_' + constant.name,
                    'properties':['CONFIG.CONST_WIDTH {' + constant.width + '}',
                        ' CONFIG.CONST_VAL {'+ constant.val + '}']
                    }
                    )
            tcl_user_app.makeConnection(
                    'net',
                    {
                    'name':'applicationRegion/' + instName + '_' + constant.name ,
                    'type':'pin',
                    'port_name':'dout'
                    },
                    {
                    'name':'applicationRegion/' + instName,
                    'type':'pin',
                    'port_name':constant.name
                    }
                    )


    return num_ctrl_interfaces, num_mem_interfaces, num_debug_interfaces



def userApplicationRegion_create_switches(tcl_user_app, fpga):
    
    tcl_user_app.instBlock(
            {
            'name':'blk_mem_gen',
            'inst':'applicationRegion/blk_mem_switch_rom',
            }
            )
    
    if fpga.comm == 'tcp':
        tcl_user_app.instBlock(
            {'vendor':'xilinx.com',
            'type':'hls',
            'name':'ip_dest_filter',
            'inst':'applicationRegion/custom_switch_inst',
            'clks':['aclk'],
            'resetns':['aresetn']
            }
            )
        
        properties = ['CONFIG.Memory_Type {Single_Port_ROM}',
                    'CONFIG.Enable_32bit_Address {true}',
                    'CONFIG.Use_Byte_Write_Enable {false}',
                    'CONFIG.Byte_Size {8}',
                    'CONFIG.Write_Depth_A {256}',
                    'CONFIG.Register_PortA_Output_of_Memory_Primitives {false}',
                    'CONFIG.Use_RSTA_Pin {true}',
                    'CONFIG.Port_A_Write_Rate {0}',
                    'CONFIG.use_bram_block {BRAM_Controller}',
                    'CONFIG.EN_SAFETY_CKT {true}',
                    'CONFIG.Load_Init_File {true}',
                    'CONFIG.Coe_File {../../../../../../../ip.coe}']
        
        tcl_user_app.setProperties('applicationRegion/blk_mem_switch_rom', properties)
        
        tcl_user_app.makeConnection(
            'net',
            {
            'name':'network/ip_constant_block_inst',
            'type':'pin',
            'port_name':'ip'
            },
            {
            'name':'applicationRegion/custom_switch_inst',
            'type':'pin',
            'port_name':'ip_addr_V'
            }
            )
        
        tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name':'applicationRegion/custom_switch_inst',
                    'type':'intf',
                    'port_name':'ip_table_V_PORTA'
                    },
                    {
                    'name':'applicationRegion/blk_mem_switch_rom',
                    'type':'intf',
                    'port_name':'BRAM_PORTA'
                    }
                    )

    elif fpga.comm == 'eth':
        tcl_user_app.instBlock( 
                {'vendor':'xilinx.com',
                'type':'hls',
                'name':'eth_dest_filter',
                'inst':'applicationRegion/custom_switch_inst',
                'clks':['aclk'],
                'resetns':['aresetn']
                }
                )

        properties =['CONFIG.Memory_Type {Single_Port_ROM}', 
                    'CONFIG.Enable_32bit_Address {true}',
                    'CONFIG.Use_Byte_Write_Enable {false}',
                    'CONFIG.Byte_Size {8}',
                    'CONFIG.Write_Width_A {64}',
                    'CONFIG.Write_Depth_A {256}',
                    'CONFIG.Read_Width_A {64}',
                    'CONFIG.Write_Width_B {64}',
                    'CONFIG.Read_Width_B {64}',
                    'CONFIG.Register_PortA_Output_of_Memory_Primitives {false}',
                    'CONFIG.Use_RSTA_Pin {true}',
                    'CONFIG.Port_A_Write_Rate {0}',
                    'CONFIG.use_bram_block {BRAM_Controller}',
                    'CONFIG.EN_SAFETY_CKT {true}',
                    'CONFIG.Load_init_file {true}',
                    'CONFIG.Coe_File {../../../../../../../mac.coe}']

        tcl_user_app.setProperties('applicationRegion/blk_mem_switch_rom', properties)
        
        tcl_user_app.makeConnection(
                    'net', 
                    {
                     'name':'network/ip_constant_block_inst',
                     'type':'pin',
                     'port_name':'mac_big'
                     },
                    {
                    'name':'applicationRegion/custom_switch_inst',
                    'type':'pin',
                    'port_name':'mac_addr_V'
                    }
                    )
        
        tcl_user_app.makeConnection(
                'intf',
                {
                'name':'applicationRegion/custom_switch_inst',
                'type':'intf',
                'port_name':'mac_table_V_PORTA'
                },
                {
                'name':'applicationRegion/blk_mem_switch_rom', 
                'type':'intf',
                'port_name':'BRAM_PORTA'
                }
                )
   

    tcl_user_app.instBlock(
            {
            'name':'axis_switch',
            'inst':'applicationRegion/input_switch',
            'clks':['aclk'],
            'resetns':['aresetn'],
            'properties':['CONFIG.NUM_SI {2}',
                'CONFIG.NUM_MI {' + str(len(fpga.kernels)) + '}', 
                'CONFIG.ARG_ON_TLAST {1}']
            }
            )



    switch_port_index = 0
    properties = []
    for kernel in fpga.kernels:
        kernel_index_str = "0x{:08x}".format(int(kernel.id_num))
        switch_port_index_str = "%02d"%switch_port_index
        properties.append('CONFIG.M' + switch_port_index_str + '_AXIS_BASETDEST {' + kernel_index_str + '}')
        properties.append('CONFIG.M' + switch_port_index_str + '_AXIS_HIGHTDEST {' + kernel_index_str + '}')
        switch_port_index = switch_port_index + 1            
                
    tcl_user_app.setProperties('applicationRegion/input_switch', properties)



    if len(fpga.kernels) > 1:
        tcl_user_app.instBlock( 
                {
                'name':'axis_switch',
                'inst':'applicationRegion/output_switch',
                'clks':['aclk'],
                'resetns':['aresetn'],
                'properties':['CONFIG.NUM_SI {' + str(len(fpga.kernels)) + '}',
                    'CONFIG.NUM_MI {1}',
                    'CONFIG.ARG_ON_TLAST {1}',
                    'CONFIG.M00_AXIS_HIGHTDEST {0xffffffff}']
                }
                )







def userApplicationRegion_kernel_connect_switches(tcl_user_app, fpga):
    
    #iterate through all kernels on FPGA connecting them to the input and output switches and their control and memory interfaces
    ctrl_interface_index = 0
    mem_interface_index = 0
    kernel_index = 0

    for kernel in fpga.kernels:
        instName = kernel.name + "_inst_" + str(kernel.id_num)
        kernel_index_str = "%02d"%kernel_index
        
        if (len(fpga.kernels) > 1):
            
            tcl_user_app.makeConnection(
                    'intf', 
                    {
                    'name':'applicationRegion/input_switch',
                    'type':'intf',
                    'port_name':'M' + kernel_index_str + '_AXIS'
                    },
                    {
                    'name':'applicationRegion/' + instName,
                    'type':'intf',
                    'port_name':kernel.stream_in
                    }
                    )
            
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name':'applicationRegion/' + instName ,
                    'type':'intf',
                    'port_name':kernel.stream_out
                    },
                    {
                    'name':'applicationRegion/output_switch',
                    'type':'intf',
                    'port_name':'S'+ kernel_index_str + '_AXIS'
                    }
                    )
        else:
            
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name':'applicationRegion/input_switch',
                    'type':'intf',
                    'port_name':'M00_AXIS'
                    },
                    {
                    'name':'applicationRegion/' + instName,
                    'type':'intf',
                    'port_name':kernel.stream_in
                    }
                    )
            
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name':'applicationRegion/'+ instName,
                    'type':'intf',
                    'port_name':kernel.stream_out
                    },
                    {
                    'name':'applicationRegion/custom_switch_inst',
                    'type':'intf',
                    'port_name':'stream_in_V'
                    }
                    )
            
        if kernel.ctrl_interface != None:
            ctrl_interface_index_str = "%02d"%ctrl_interface_index
            tcl_user_app.makeConnection(
                    'intf',
                    {'name':'applicationRegion/axi_interconnect_ctrl',
                    'type':'intf',
                    'port_name':'M' + ctrl_interface_index_str + '_AXI'
                    },
                    {'name':'applicationRegion/' + instName,
                    'type':'intf',
                    'port_name':kernel.ctrl_interface.name
                    }
                    )
            ctrl_interface_index = ctrl_interface_index + 1
        

        for mem_interface in kernel.mem_interfaces:
            mem_interface_index_str = "%02d"%mem_interface_index
            
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name':'applicationRegion/' + instName,
                    'type':'intf',
                    'port_name':mem_interface
                    },
                    {
                    'name':'applicationRegion/axi_interconnect_mem',
                    'type':'intf',
                    'port_name':'S' + mem_interface_index_str + '_AXI'
                    }
                    )
            mem_interface_index = mem_interface_index + 1
        
        kernel_index = kernel_index + 1

    
    tcl_user_app.makeConnection(
            'intf',
            {
            'name':'applicationRegion/custom_switch_inst',
            'type':'intf',
            'port_name':'stream_out_switch_V'
            },
            {'name':'applicationRegion/input_switch',
            'type':'intf',
            'port_name':'S01_AXIS'
            }
            )
    
    if(len(fpga.kernels) > 1):
        tcl_user_app.makeConnection(
                'intf',
                {
                'name':'applicationRegion/output_switch',
                'type':'intf',
                'port_name':'M00_AXIS'
                },
                {
                'name':'applicationRegion/custom_switch_inst',
                'type':'intf',
                'port_name':'stream_in_V'
                }
                )

def add_debug_interfaces(outDir, num_debug_interfaces, fpga):
    tcl_debug_app = tclMeFile( outDir + '/' + str(fpga.num) + '_debug')

    #adding ILA ports
    if num_debug_interfaces > 0:
        
        tcl_debug_app.instBlock(
                {
                'name':'system_ila',
                'inst':'system_ila_streams',
                'clks':['clk'],
                'resetns':['resetn']
                }
                )
        
        if (len(fpga.kernels)) > 1:
            additional_debug_interfaces = 8
        else:
            additional_debug_interfaces = 7

        properties = ['CONFIG.C_BRAM_CNT {6}', 'CONFIG.C_NUM_MONITOR_SLOTS {'+ str(num_debug_interfaces + additional_debug_interfaces) + '}',  'CONFIG.ALL_PROBE_SAME_MU {true}']


        for debug_interface_index in range(0, num_debug_interfaces + additional_debug_interfaces - 1):
            properties.append('CONFIG.C_SLOT_' + str(debug_interface_index) + '_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0}')

        properties.append('CONFIG.C_SLOT_' + str(num_debug_interfaces + additional_debug_interfaces - 1) + '_INTF_TYPE {xilinx.com:interface:bram_rtl:1.0} ')
        tcl_debug_app.setProperties('system_ila_streams', properties) 

        debug_interface_index = 0
        
        for kernel in fpga.kernels:
            
            instName = kernel.name + "_inst_" + str(kernel.id_num)
            
            for debug_interface in kernel.debug_interfaces:
                
                tcl_debug_app.makeConnection(
                        'intf',
                    {
                    'name':'applicationRegion/' + instName,
                    'type':'intf',
                    'port_name':debug_interface
                    },
                    {
                    'name':'system_ila_streams',
                    'type':'intf',
                    'port_name':'SLOT_' + str(debug_interface_index) + '_AXIS'
                    }
                    )
                debug_interface_index = debug_interface_index + 1
        debug_interface_index = num_debug_interfaces
      
        if (len(fpga.kernels) > 1):
            additional_debug_ips = ['application_bridge_inst', 'application_bridge_inst', 'application_bridge_inst', 'application_bridge_inst', 'applicationRegion/output_switch', 'applicationRegion/custom_switch_inst', None]
            additional_debug_ports = ['from_net_V', 'to_app_V', 'from_app_V', 'to_net_V', 'M00_AXIS', 'stream_out_switch_V', 'S_AXIS']
            additional_debug_type = ['intf', 'intf', 'intf', 'intf', 'intf', 'intf', 'intf_port']
        else: #no output switch
            additional_debug_ips = ['application_bridge_inst', 'application_bridge_inst', 'application_bridge_inst', 'application_bridge_inst',  'applicationRegion/custom_switch_inst', None]
            additional_debug_ports = ['from_net_V', 'to_app_V', 'from_app_V', 'to_net_V', 'stream_out_switch_V', 'S_AXIS']
            additional_debug_type = ['intf', 'intf', 'intf', 'intf', 'intf', 'intf_port']

        additional_debug_index = 0
        for debug_interface_index in range(num_debug_interfaces, num_debug_interfaces+len(additional_debug_ips)):
            tcl_debug_app.makeConnection(
                    'intf', 
                        {
                        'name':additional_debug_ips[additional_debug_index],
                        'type':additional_debug_type[additional_debug_index],
                        'port_name':additional_debug_ports[additional_debug_index]
                        },
                        {
                        'name':'system_ila_streams',
                        'type':'intf',
                        'port_name':'SLOT_' + str(debug_interface_index) + '_AXIS'
                        }
                        )
            additional_debug_index = additional_debug_index + 1
        
        debug_interface_index = len(additional_debug_ips) + 1 
        if fpga.comm == 'eth':
            tcl_debug_app.makeConnection(
                    'intf',
                    {
                    'name':'system_ila_streams',
                    'type':'intf',
                    'port_name':'SLOT_' + str(debug_interface_index) + '_BRAM'
                    },
                    {
                    'name':'applicationRegion/custom_switch_inst',
                    'type':'intf',
                    'port_name':'mac_table_V_PORTA'
                    }
                    )
        else:
            tcl_debug_app.makeConnection(
                    'intf',
                    {
                    'name':'system_ila_streams',
                    'type':'intf',
                    'port_name':'SLOT_' + str(debug_interface_index) + '_BRAM'
                    },
                    {
                    'name':'applicationRegion/custom_switch_inst',
                    'type':'intf',
                    'port_name':'ip_table_V_PORTA'
                    }
                    )


    



def userApplicationRegion_assign_addresses(tcl_user_app, fpga, shared):

    #connect mem interconnect and assign addresses, all kernels need to be 32 bit addressable
    #connect ctrl interconnect and assign addresses
   

    for kernel in fpga.kernels:
        instName = kernel.name + "_inst_" + str(kernel.id_num)
        for mem_interface in kernel.mem_interfaces:
            
            if(kernel.ip_type == 'hls'):
                addresses = [
                            {'port':'applicationRegion/' + instName + '/Data_' + mem_interface  +'/SEG_S_AXI_MEM_0_Reg',
                            'offset':'0x00000000',
                            'range':'4G'
                            }
                            ]
            else:
                addresses = [
                        {
                        'port':'applicationRegion/' + instName + '/' + mem_interface  +'/SEG_S_AXI_MEM_0_Reg',
                        'offset':'0x00000000',
                        'range':'4G'
                        }
                        ] 
            tcl_user_app.assign_address('S_AXI_MEM_0/Reg', addresses)
            if shared:
                tcl_user_app.assign_address('S_AXI_MEM_1/Reg', addresses)

        if kernel.ctrl_interface != None:
            tcl_user_app.assign_address('applicationRegion/' + instName + '/' + kernel.ctrl_interface.name + '/Reg0', [])
  




def userApplicationRegion(outDir, fpga, address_space):

    tcl_user_app = tclMeFile( outDir + '/' + str(fpga.num) + '_app')
    #tcl_user_app = open( outDir + '/' + str(fpga.num) + '_app.tcl', 'w')
    tcl_user_app.createHierarchy('applicationRegion')
    
    num_ctrl_interfaces, num_mem_interfaces, num_debug_interfaces = userApplicationRegion_inst_kernels_count_interfaces(tcl_user_app, fpga)
    userApplicationRegion_control_inst(tcl_user_app, num_ctrl_interfaces)
    #if communication medium is ethernet then combine offchip memory into one shared address space
    userApplicationRegion_mem_inst(tcl_user_app, num_mem_interfaces, fpga.comm == 'eth')
    userApplicationRegion_create_switches(tcl_user_app, fpga)
    userApplicationRegion_kernel_connect_switches(tcl_user_app, fpga)
    if num_mem_interfaces > 0:
        userApplicationRegion_assign_addresses(tcl_user_app, fpga, fpga.comm == 'eth' and address_space == 64)
    
    return num_debug_interfaces

def net_bridge_constants(tcl_net, fpga):

    ip_addr = fpga.ip_addr.split(".")
    #tcl_net.write('create_bd_cell -type ip -vlnv user.org:user:ip_constant_block:1.0 network/ip_constant_block_inst\n')
    tcl_net.instBlock(
            {
            'vendor':'user.org',
            'type':'user',
            'name':'ip_constant_block',
            'inst':'network/ip_constant_block_inst'
            }
            )
    
    properties = ['CONFIG.C_IP_B0 {'+ ip_addr[3] + '}',
                'CONFIG.C_IP_B1 {'+ ip_addr[2] + '}',
                'CONFIG.C_IP_B2 {'+ ip_addr[1] + '}',
                'CONFIG.C_IP_B3 {'+ ip_addr[0] + '}']

    properties = properties + ['CONFIG.C_GATEWAY_B0 {100}',
                'CONFIG.C_GATEWAY_B1 {' + ip_addr[2] +'}',
                'CONFIG.C_GATEWAY_B2 {' + ip_addr[1] +'}',
                'CONFIG.C_GATEWAY_B3 {' + ip_addr[0] +'}']
    
    properties = properties + ['CONFIG.C_SUBNET_B0 {0}',
            'CONFIG.C_SUBNET_B1 {255}',
            'CONFIG.C_SUBNET_B2 {255}',
            'CONFIG.C_SUBNET_B3 {255}']
    
    properties = properties + ['CONFIG.C_MAC {0x' + fpga.mac_addr.replace(":","") + '}']
    
    tcl_net.setProperties('network/ip_constant_block_inst', properties)

    if fpga.comm == 'tcp':
        tcl_net.addSource('./tclScripts/pr_tcp_bridge.tcl')
    elif fpga.comm == 'eth': 
        tcl_net.addSource('./tclScripts/pr_eth_bridge.tcl')
    


def net_bridge(outDir, fpga):
    tcl_net = tclMeFile( outDir + '/' + str(fpga.num) + '_net')
    
    tcl_net.createHierarchy('network')
    net_bridge_constants(tcl_net, fpga)


def bridge_connections(outDir, fpga):
    tcl_bridge_connections = tclMeFile( outDir + '/' + str(fpga.num) + '_bridge_connections')

    #no bridge directly connect
    if fpga.app_bridge == None:
        
        tcl_bridge_connections.makeConnection(
                'intf', 
                {
                'name':'applicationRegion/custom_switch_inst',
                'type':'intf',
                'port_name':'stream_out_network_V'
                },
                {
                'name':'network/network_bridge_inst',
                'type':'intf',
                'port_name':'${netBridge_from_app}'
                }
                )
        
        tcl_bridge_connections.makeConnection(
                'intf',
                {
                'name':'network/network_bridge_inst',
                'type':'intf',
                'port_name':'${netBridge_to_app}'
                },
                {
                'name':'applicationRegion/input_switch',
                'type':'intf',
                'port_name':'S00_AXIS'
                }
                )
    else:
        
        tcl_bridge_connections.instBlock(
                {
                'vendor':fpga.app_bridge.kernel.ip_vendor,
                'type':fpga.app_bridge.kernel.ip_type,
                'name': fpga.app_bridge.kernel.name,
                'inst':'application_bridge_inst',
                'clks':[fpga.app_bridge.kernel.clk],
                'resetns':[fpga.app_bridge.kernel.aresetn]
                }
                )
        
        tcl_bridge_connections.makeConnection(
                'intf',
                {
                'name':'application_bridge_inst',
                'type':'intf',
                'port_name':fpga.app_bridge.to_app
                },
                {
                'name':'applicationRegion/input_switch',
                'type':'intf',
                'port_name':'S00_AXIS'
                }
                )
        
        tcl_bridge_connections.makeConnection(
                'intf',
                {
                'name':'applicationRegion/custom_switch_inst',
                'type':'intf',
                'port_name':'stream_out_network_V'
                }, 
                {
                'name':'application_bridge_inst',
                'type':'intf',
                'port_name':fpga.app_bridge.from_app
                }
                )
        
        tcl_bridge_connections.makeConnection(
                'intf',
                {
                'name':'application_bridge_inst',
                'type':'intf',
                'port_name':fpga.app_bridge.to_net
                },
                {
                'name':'network/network_bridge_inst',
                'type':'intf',
                'port_name':'${netBridge_from_app}'
                }
                )

        tcl_bridge_connections.makeConnection(
                'intf',
                {
                'name':'network/network_bridge_inst',
                'type':'intf',
                'port_name':'${netBridge_to_app}'
                },
                {
                'name':'application_bridge_inst',
                'type':'intf',
                'port_name':fpga.app_bridge.from_net
                }
                )
        


def makeTCLFiles(fpga, projectName, networkBridges):
    

    address_space = 32 

    outDir = 'projects/' + projectName + '/' + str(fpga.num)
    net_bridge(outDir, fpga)
    num_debug_interfaces = userApplicationRegion(outDir, fpga, address_space)
    bridge_connections(outDir, fpga)
    if(num_debug_interfaces > 0):
        add_debug_interfaces(outDir, num_debug_interfaces, fpga)

    tclMain = tclMeFile( outDir + '/' + str(fpga.num))
    tclMain.addSource('./tclScripts/pr_standard_interfaces.tcl')
    tclMain.addSource(outDir + '/' + str(fpga.num) + '_net.tcl')
    tclMain.addSource(outDir + '/' + str(fpga.num) + '_app.tcl')
    tclMain.addSource(outDir + '/' + str(fpga.num) + '_bridge_connections.tcl')

    if(num_debug_interfaces > 0):
        tclMain.addSource(outDir + '/' + str(fpga.num) + '_debug.tcl')
   
    tclMain.tprint('validate_bd_design')


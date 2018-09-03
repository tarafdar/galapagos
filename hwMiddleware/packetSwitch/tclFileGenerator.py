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


def getInterfaces(fpga, intf, scope, name=None):

    interfaces = []
    for kern in fpga['kernel']:

        #if global we can look for master or slave
        if scope == 'global':
            for kern_intf in kern[intf]:
                if kern_intf['scope'] == 'global':
                    kern_intf['kernel_inst'] = kern
                    interfaes.append(kern_intf)

        #if local we are only looking for the slaves of a given master
        else:
            for kern_intf in kern[intf]:
                if 'master' in kern_intf:
                    if name == kern_intf:
                        kern_intf['kernel_inst'] = kern
                        interfaes.append(kern_intf)

    return interfaces

def userApplicationRegionMemInstLocal(tcl_user_app):

    for m_axi in tcl_user_app.fpga['m_axi']:
        if m_axi['scope'] == 'local':
            num_slave_interfaces = len(getInterfaces(tcl_user_app.fpga, 's_axi', 'local', m_axi['name']))
            tcl_user_app.instBlock(
                    {
                    'name':'smartconnect',
                    'inst':'applicationRegion/' + m_axi['name'] + '_inc_inst',
                    'clks':['aclk'],
                    'resetns':['aresetn'],
                    'properties':['CONFIG.NUM_MI {1}', 'CONFIG.NUM_SI {' + str(num_slave_interfaces) + '}']
                    }





def userApplicationRegionMemInstGlobal(tcl_user_app, num_mem_interfaces, shared):


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






def userApplicationRegionKernelsInst(tcl_user_app):




    #instantiate kernels
    for kern in fpga['kernel']:
        instName = kernel.name + "_inst_" + str(kernel.id_num)
        #instantiate kernel
        fpga['kernel']['inst'] = 'applicationRegion/' + instName
        tcl_user_app.instBlock(
                {
                'vendor':kern['vendor'],
                'type':kern['lib'],
                'name':kern['name',
                'inst':'applicationRegion/' + instName,
                'clks': kern['clk'],
                'resetns': kern['aresetn']
                }
                )
        #instantiate and connect constant for id
        if (kernel.id_port != ''):
            tcl_user_app.instBlock(
                    {
                    'name':'xlconstant',
                    'inst': 'applicationRegion/id_' + str(kern['num']),
                    'properties':['CONFIG.CONST_WIDTH {32}',
                        'CONFIG.CONST_VAL {'+ str(kern['num'])+'}']
                    }
                    )
            tcl_user_app.makeConnection(
                    'net',
                        {
                        'name':'applicationRegion/id_' + str(kern['num']),
                        'type':'pin',
                        'port_name':'dout'
                        },
                        {
                        'name':'applicationRegion/' + instName,
                        'type':'pin',
                        'port_name':kern['id_port']
                        }
                        )

        for const in kern['const']:
            tcl_user_app.instBlock(
                    {
                    'name':'xlconstant',
                    'inst': 'applicationRegion/' + instName + '_' + const['name'],
                    'properties':['CONFIG.CONST_WIDTH {' + const['width'] + '}',
                        ' CONFIG.CONST_VAL {'+ const['val'] + '}']
                    }
                    )
            tcl_user_app.makeConnection(
                    'net',
                    {
                    'name':'applicationRegion/' + instName + '_' + const['name'] ,
                    'type':'pin',
                    'port_name':'dout'
                    },
                    {
                    'name':'applicationRegion/' + instName,
                    'type':'pin',
                    'port_name':const['name']
                    }
                    )





def userApplicationRegionSwitchesInst(tcl_user_app):

    tcl_user_app.instBlock(
            {
            'name':'blk_mem_gen',
            'inst':'applicationRegion/blk_mem_switch_rom',
            }
            )

    if tcl_user_app.fpga['comm'] == 'tcp':
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

    elif tcl_user_app.fpga['comm'] == 'eth':
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
    # if 0 axis switch
    num_slave_s_axis_global = len(getInterfaces(tcl_user_app.fpga, 's_axis', 'global'))


    if num_slave_s_axis_global == 0:
        ##TO DO: CHANGE TO VIP FOR 0 SLAVES
        tcl_user_app.instBlock(
                {
                'name':'axis_switch',
                'inst':'applicationRegion/input_switch',
                'clks':['aclk'],
                'resetns':['aresetn'],
                'properties':['CONFIG.NUM_SI {2}',
                    'CONFIG.NUM_MI {' + str(len(tcl_user_app.fpga['kern'])) + '}',
                    'CONFIG.ARG_ON_TLAST {1}']
                }

                )
    else:
        tcl_user_app.instBlock(
                {
                'name':'axis_switch',
                'inst':'applicationRegion/input_switch',
                'clks':['aclk'],
                'resetns':['aresetn'],
                'properties':['CONFIG.NUM_SI {2}',
                    'CONFIG.NUM_MI {' + str(num_slave_s_axis_global) + '}',
                    'CONFIG.ARG_ON_TLAST {1}']
                }
                )

        switch_port_index = 0
        properties = []
        for kern in tcl_user_app.fpga['kernel']:
            if 's_axis' in kern and kern['s_axis']['scope'] == 'global':
                kernel_index_str = "0x{:08x}".format(int(kern['num']))
                switch_port_index_str = "%02d"%switch_port_index
                properties.append('CONFIG.M' + switch_port_index_str + '_AXIS_BASETDEST {' + kernel_index_str + '}')
                properties.append('CONFIG.M' + switch_port_index_str + '_AXIS_HIGHTDEST {' + kernel_index_str + '}')
                switch_port_index = switch_port_index + 1

        tcl_user_app.setProperties('applicationRegion/input_switch', properties)



    num_slave_m_axis_global = len(getInterfaces(tcl_user_app.fpga, 'm_axis', 'global'))
    if num_slave_m_axis_global == 0:
        ##TO DO: CHANGE TO VIP FOR 0 SLAVES
        tcl_user_app.instBlock(
                {
                'name':'axis_switch',
                'inst':'applicationRegion/input_switch',
                'clks':['aclk'],
                'resetns':['aresetn'],
                'properties':['CONFIG.NUM_SI {2}',
                    'CONFIG.NUM_MI {' + str(len(tcl_user_app.fpga['kern'])) + '}',
                    'CONFIG.ARG_ON_TLAST {1}']
                }

                )
    else:
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








def userApplicationRegionKernelConnectSwitches(tcl_user_app):

    #iterate through all kernels on FPGA connecting them to the input and output switches and their control and memory interfaces
    ctrl_interface_index = 0
    mem_interface_index = 0

    s_axis_array = getInterfaces(tcl_user_app.fpga, 's_axis', 'global')


    for idx, s_axis in enumerate(s_axis_array):
        instName = s_axis['kernel']['name'] + "_inst_" + str(s_axis['kernel'['num'])
        idx_str = "%02d"%idx
        tcl_user_app.makeConnection(
                'intf',
                {
                'name':'applicationRegion/input_switch',
                'type':'intf',
                'port_name':'M' + idx_str + '_AXIS'
                },
                {
                'name':'applicationRegion/' + instName,
                'type':'intf',
                'port_name':s_axis['name']
                }
                )

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


    m_axis_array = getInterfaces(tcl_user_app.fpga, 'm_axis', 'global')

    #no output switch, direct connect if only one
    if len(m_axis_array) == 1:
        instName = m_axis_array[0]['kernel']['name'] + "_inst_" + str(m_axis_array[0]['kernel'['num'])
        tcl_user_app.makeConnection(
                'intf',
                {
                'name':'applicationRegion/'+ instName,
                'type':'intf',
                'port_name': m_axis_array[0]['name']
                },
                {
                'name':'applicationRegion/custom_switch_inst',
                'type':'intf',
                'port_name':'stream_in_V'
                }
                )
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
    elif len(m_axis_array) > 1:
        for idx, m_axis in enumerate(m_axis_array):
            instName = m_axis['kernel']['name'] + "_inst_" + str(m_axis['kernel'['num'])
            idx_str = "%02d"%idx
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name':'applicationRegion/' + instName ,
                    'type':'intf',
                    'port_name': m_axis['name']
                    },
                    {
                    'name':'applicationRegion/output_switch',
                    'type':'intf',
                    'port_name':'S'+ idx_str + '_AXIS'
                    }
                    )

    s_axi_array = getInterfaces(tcl_user_app.fpga, 's_axi', 'global')
    for idx, s_axi in enumerate(s_axi_array):
        instName = s_axi['kernel']['name'] + "_inst_" + str(s_axi['kernel'['num'])
        idx_str = "%02d"%idx
        tcl_user_app.makeConnection(
                'intf',
                {'name':'applicationRegion/axi_interconnect_ctrl',
                'type':'intf',
                'port_name':'M' + idx_str + '_AXI'
                },
                {'name':'applicationRegion/' + instName,
                'type':'intf',
                'port_name':s_axi['name']
                }
                )

    m_axi_array = getInterfaces(tcl_user_app.fpga, 'm_axi', 'global')
    for idx, m_axi in enumerate(m_axi_array):
        instName = m_axi['kernel']['name'] + "_inst_" + str(m_axi['kernel'['num'])
        idx_str = "%02d"%idx
        tcl_user_app.makeConnection(
                'intf',
                {
                'name':'applicationRegion/' + instName,
                'type':'intf',
                'port_name':m_axi['name']
                },
                {
                'name':'applicationRegion/axi_interconnect_mem',
                'type':'intf',
                'port_name':'S' +idx_str + '_AXI'
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






def userApplicationRegionAssignAddresses(tcl_user_app, shared):

    #connect mem interconnect and assign addresses, all kernels need to be 32 bit addressable
    #connect ctrl interconnect and assign addresses


    #global m_axi
    m_axi_array = getInterfaces(tcl_user_app.fpga, 'm_axi', 'global')

    for global_m_axi in m_axi_array:
        instName = global_m_axi['kernel']['name'] + "_inst_" + str(global_m_axi['kernel']['num'])
        if(global_m_axi['kernel']['lib'] == 'hls'):
            addresses = [
                        {'port':'applicationRegion/' + instName + '/Data_' + global_m_axi['name']  +'/SEG_S_AXI_MEM_0_Reg',
                        'offset':'0x00000000',
                        'range':'4G'
                        }
                        ]
        else:
            addresses = [
                     {
                     'port':'applicationRegion/' + instName + '/' + global_m_axi['name']  +'/SEG_S_AXI_MEM_0_Reg',
                     'offset':'0x00000000',
                     'range':'4G'
                     }

            tcl_user_app.assign_address('S_AXI_MEM_0/Reg', addresses)
            if shared:
                tcl_user_app.assign_address('S_AXI_MEM_1/Reg', addresses)


    #global s_axi
    m_axi_array = getInterfaces(tcl_user_app.fpga, 's_axi', 'global')

    for global_s_axi in s_axi_array:
        instName = global_s_axi['kernel']['name'] + "_inst_" + str(global_s_axi['kernel']['num'])
        tcl_user_app.assign_address('applicationRegion/' + instName + '/' + global_s_axi['name'] + '/Reg0', [])






def userApplicationRegion(outDir, fpga):

    tcl_user_app = tclMeFile( outDir + '/' + str(fpga.num) + '_app', fpga)
    #tcl_user_app = open( outDir + '/' + str(fpga.num) + '_app.tcl', 'w')
    tcl_user_app.createHierarchy('applicationRegion')

    num_mem_interfaces = len(getNumInterfaces(tcl_user_app.fpga, 'm_axi', 'global'))

    userApplicationRegionKernelsInst(tcl_user_app)
    userApplicationRegionControlinst(tcl_user_app)
    #if communication medium is ethernet then combine offchip memory into one shared address space
    userApplicationRegionMemInstGlobal(tcl_user_app, num_mem_interfaces, fpga.comm == 'eth')
    userApplicationRegionMemInstLocal(tcl_user_app)
    userApplicationRegionSwitchesInst(tcl_user_app)
    userApplicationRegionKernelConnectSwitches(tcl_user_app)
    userApplicationRegionAssignAddresses(tcl_user_app)

    if num_mem_interfaces > 0:
        userApplicationRegion_assign_addresses(tcl_user_app, fpga.comm == 'eth' and fpga.address_space == 64)

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



def makeTCLFiles(fpga, projectName):



    outDir = 'projects/' + projectName + '/' + str(fpga.num)

    #make bridge to network
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


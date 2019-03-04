#!/usr/bin/python
import copy
import sys
import subprocess
import os
from tclMe import tclMeFile
import string

#interfaces constant
#creates the standard interfaces, same for all fpgas



def userApplicationRegionControlInst(tcl_user_app):
    #initialize axi_control_interface interconnect slave side (1 slave)

    num_ctrl_interfaces = len(getInterfaces(tcl_user_app.fpga, 's_axi', 'scope', 'global'))

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
        #tcl_user_app.instBlock(
        #        {'name':'smartconnect',
        #        'inst':'applicationRegion/axi_interconnect_ctrl',
        #        'clks':['aclk'],
        #        'resetns':['aresetn'],
        #        'properties':['CONFIG.NUM_SI {1}',
        #            'CONFIG.NUM_MI {' + str(num_ctrl_interfaces) + '}']
        #        }
        #        )
        #
        
        inc_clks = ['ACLK', 'S00_ACLK']
        inc_resetns = ['ARESETN', 'S00_ARESETN']
        for inc_index in range(0, num_ctrl_interfaces):
            inc_index_str = "%02d"%inc_index
            inc_clks.append('M' + inc_index_str + '_ACLK')
            inc_resetns.append('M' + inc_index_str + '_ARESETN')

        tcl_user_app.instBlock(
                {'name':'axi_interconnect',
                'inst':'applicationRegion/axi_interconnect_ctrl',
                'clks':inc_clks,
                'resetns':inc_resetns,
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

        


def getInterfaces(fpga, intf, flag = None, scope = None):
    interfaces = []
    
    for kern in fpga['kernel']:
        #if global we can look for master or slave
        if intf=='s_axis' and flag=='scope' and scope =='global':
            print('kernel is ' + str(kern.data)) 

        if kern[intf] != None:
            for kern_intf in kern[intf]:

                if (scope == None):
                    kern_intf['kernel_inst'] = kern
                    interfaces.append(copy.deepcopy(kern_intf))

                elif(flag == 'scope' and kern_intf['scope'] == scope):
                    kern_intf['kernel_inst'] = kern
                    interfaces.append(copy.deepcopy(kern_intf))
                
                elif(flag == 'debug' and 'debug' in kern_intf):
                    kern_intf['kernel_inst'] = kern
                    interfaces.append(copy.deepcopy(kern_intf))

    
    if intf=='s_axis' and flag=='scope' and scope =='global':
        print("interfaces returned are " + str(interfaces))

    return interfaces

def strCompare(s1, s2):
    s1 = s1.replace(" ", "")
    s1 = s1.replace("\t", "")
    s1 = s1.replace("\n", "")
    s2 = s2.replace(" ", "")
    s2 = s2.replace("\t", "")
    s2 = s2.replace("\n", "")
    return s1 == s2

def getSlaveInterfaces(fpga, intf, master):


    interfaces = []

    
    slave_array = getInterfaces(fpga, intf, 'scope', 'local')
    for slave in slave_array:
        print ("slave num " + slave['master']['num']) 
        if ( (int(slave['master']['num'])  == int(master['kernel_inst']['num'])) and strCompare(slave['master']['port'], master['name'])):
            interfaces.append(copy.deepcopy(slave))
    return interfaces





def userApplicationRegionMemInstLocal(tcl_user_app):

    m_axi_array = getInterfaces(tcl_user_app.fpga, 'm_axi', 'scope', 'local')
    for m_axi in m_axi_array:
        s_axi_array = getSlaveInterfaces(tcl_user_app.fpga, 's_axi', m_axi)

        inc_clks = ['ACLK', 'S00_ACLK']
        inc_resetns = ['ARESETN', 'S00_ARESETN']
        for inc_index in range(0, len(s_axi_array)):
            inc_index_str = "%02d"%inc_index
            inc_clks.append('M' + inc_index_str + '_ACLK')
            inc_resetns.append('M' + inc_index_str + '_ARESETN')


        print ('kernel_inst is ' + m_axi['kernel_inst']['inst'])
        #if m_axi['kernel_inst']['inst'] == 'applicationRegion/dariusController_inst_4':
        print ('s_axi_array ' + str(s_axi_array))
        #tcl_user_app.instBlock(
        #        {
        #        'name':'smartconnect',
        #        'inst': m_axi['kernel_inst']['inst'] + '_' + m_axi['name'] + '_inc_inst',
        #        'clks':['aclk'],
        #        'resetns':['aresetn'],
        #        'properties':['CONFIG.NUM_SI {1}', 'CONFIG.NUM_MI {' + str(len(s_axi_array)) + '}']
        #        }
        #        )
        tcl_user_app.instBlock(
                {
                'name':'axi_interconnect',
                'inst': m_axi['kernel_inst']['inst'] + '_' + m_axi['name'] + '_inc_inst',
                'clks': inc_clks,
                'resetns': inc_resetns,
                'properties':['CONFIG.NUM_SI {1}', 'CONFIG.NUM_MI {' + str(len(s_axi_array)) + '}']
                }
                )
        tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name': m_axi['kernel_inst']['inst'],
                    'type':'intf',
                    'port_name': m_axi['name']
                    },
                    {'name': m_axi['kernel_inst']['inst'] + '_' + m_axi['name'] + '_inc_inst' ,
                    'type':'intf',
                    'port_name': 'S00_AXI'
                    }
                    )

        for s_axi_idx, s_axi in enumerate(s_axi_array):
            s_axi_idx_str = "%02d"%s_axi_idx
            tcl_user_app.makeConnection(
                        'intf',
                        {
                        'name': m_axi['kernel_inst']['inst'] + '_' + m_axi['name'] + '_inc_inst',
                        'type':'intf',
                        'port_name':'M' + s_axi_idx_str + '_AXI'
                        },
                        {'name':s_axi['kernel_inst']['inst'],
                        'type':'intf',
                        'port_name': s_axi['name']
                        }
                        )





def userApplicationRegionMemInstGlobal(tcl_user_app, shared):

    num_mem_interfaces = len(getInterfaces(tcl_user_app.fpga, 'm_axi', 'scope',  'global'))

    inc_clks = ['ACLK', 'M00_ACLK']
    inc_resetns = ['ARESETN', 'M00_ARESETN']
    if (num_mem_interfaces > 0):
        if shared:
            properties = ['CONFIG.NUM_MI {2}']
            inc_clks.append('M01_ACLK')
            inc_resetns.append('M01_ARESETN')
        else:
            properties = ['CONFIG.NUM_MI {1}']


#MAKES SMARTCONNECT
#DOESN'T PLAY WELL WITH ENCRYPTED CORES, REPLACING WITH INTERCONNECT

        properties.append('CONFIG.NUM_SI {' + str(num_mem_interfaces) + '}')
#        tcl_user_app.instBlock(
#                {
#                'name':'smartconnect',
#                'inst':'applicationRegion/axi_interconnect_mem',
#                'clks':['aclk'],
#                'resetns':['aresetn'],
#                'properties':properties
#                }
#                )

#AXI INTERCONNECT
        for inc_index in range(0, num_mem_interfaces):
            inc_index_str = "%02d"%inc_index
            inc_clks.append('S' + inc_index_str + '_ACLK')
            inc_resetns.append('S' + inc_index_str + '_ARESETN')

        print('axi interconnect mem properties ' + str(properties))

        tcl_user_app.instBlock(
                {
                'name':'axi_interconnect',
                'inst':'applicationRegion/axi_interconnect_mem',
                'clks':inc_clks,
                'resetns':inc_resetns,
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
    for kern_idx, kern in enumerate(tcl_user_app.fpga['kernel']):
        instName = kern['name'] + "_inst_" + str(kern['num'])
        #instantiate kernel
        tcl_user_app.fpga['kernel'][kern_idx]['inst'] = 'applicationRegion/' + instName
        tcl_user_app.instBlock(
                {
                'vendor':kern['vendor'],
                'lib': kern['lib'],
                'name': kern['name'],
                'inst':'applicationRegion/' + instName,
                'clks': kern['clk'],
                'resetns': kern['aresetn']
                }
                )
        #instantiate and connect constant for id
        if (kern['id_port'] != None):
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

        if kern['const'] != None:
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





def userApplicationRegionSwitchesInst(tcl_user_app, sim):

    tcl_user_app.instBlock(
            {
            'name':'blk_mem_gen',
            'inst':'applicationRegion/blk_mem_switch_rom',
            }
            )

    if tcl_user_app.fpga['comm'] == 'tcp':
        tcl_user_app.instBlock(
            {'vendor':'xilinx.com',
            'lib':'hls',
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
                    'CONFIG.Coe_File {../../../../../../../ip.coe}'
                    ]

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
                'lib':'hls',
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
                    'CONFIG.Coe_File {../../../../../../../mac.coe}'
                    ]

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
    num_slave_s_axis_global = len(getInterfaces(tcl_user_app.fpga, 's_axis', 'scope' , 'global'))


    if num_slave_s_axis_global == 0:
        ##TO DO: CHANGE TO VIP FOR 0 SLAVES
        print("WTF")
        quit(0)
    
    else:
#for simulation purposes use custom arbiter instead of axis_switch
        if(sim == 0):
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
        else:
            tcl_user_app.instBlock(
                    {
                    'name':'arbiter',
                    'lib':'hls',
                    'vendor':'xilinx.com',
                    'inst':'applicationRegion/arbiter',
                    'clks':['ap_clk'],
                    'resetns':['ap_rst_n'],
                    }
                    )
       
            if num_slave_s_axis_global > 1:
                tcl_user_app.instBlock(
                        {
                        'name':'axis_switch',
                        'inst':'applicationRegion/input_switch',
                        'clks':['aclk'],
                        'resetns':['aresetn'],
                        'properties':['CONFIG.NUM_SI {1}',
                            'CONFIG.NUM_MI {' + str(num_slave_s_axis_global) + '}',
                            'CONFIG.ARG_ON_TLAST {1}']
                        }
                        )
               
            
       

        switch_port_index = 0
        properties = []
        for kern in tcl_user_app.fpga['kernel']:
            if kern['s_axis'] != None:
                for s_axis in kern['s_axis']:
                    if s_axis['scope'] == 'global':
                        print("adding kernel to switch " + kern['inst'])
                        kernel_index_str = "0x{:08x}".format(int(kern['num']))
                        switch_port_index_str = "%02d"%switch_port_index
                        properties.append('CONFIG.M' + switch_port_index_str + '_AXIS_BASETDEST {' + kernel_index_str + '}')
                        properties.append('CONFIG.M' + switch_port_index_str + '_AXIS_HIGHTDEST {' + kernel_index_str + '}')
                        switch_port_index = switch_port_index + 1

        if((sim == 1) and  num_slave_s_axis_global > 1) or (sim == 0):
            tcl_user_app.setProperties('applicationRegion/input_switch', properties)
    


    num_slave_m_axis_global = len(getInterfaces(tcl_user_app.fpga, 'm_axis', 'scope', 'global'))
    if num_slave_m_axis_global == 0:
        ##TO DO: CHANGE TO VIP FOR 0 SLAVES
        tcl_user_app.instBlock(
                {
                'name':'axis_switch',
                'inst':'applicationRegion/input_switch',
                'clks':['aclk'],
                'resetns':['aresetn'],
                'properties':['CONFIG.NUM_SI {2}',
                    'CONFIG.NUM_MI {' + num_slave_s_axis_global + '}',
                    'CONFIG.ARG_ON_TLAST {1}']
                }

                )
    #instantiate switch only if more than one output 
    elif num_slave_m_axis_global > 1:
        tcl_user_app.instBlock(
                {
                'name':'axis_switch',
                'inst':'applicationRegion/output_switch',
                'clks':['aclk'],
                'resetns':['aresetn'],
                'properties':['CONFIG.NUM_SI {' + str(num_slave_s_axis_global) + '}',
                    'CONFIG.NUM_MI {1}',
                    'CONFIG.ARG_ON_TLAST {1}',
                    'CONFIG.M00_AXIS_HIGHTDEST {0xffffffff}']
                }
                )








def userApplicationRegionKernelConnectSwitches(tcl_user_app, sim):

    #iterate through all kernels on FPGA connecting them to the input and output switches and their control and memory interfaces
    ctrl_interface_index = 0
    mem_interface_index = 0

    s_axis_array = getInterfaces(tcl_user_app.fpga, 's_axis', 'scope', 'global')


    if len(s_axis_array) > 1:
        if(sim == 1):
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name':'applicationRegion/arbiter',
                    'type':'intf',
                    'port_name':'M00_AXIS'
                    },
                    {'name':'applicationRegion/input_switch',
                    'type':'intf',
                    'port_name':'S00_AXIS'
                    }
                    )
        for idx, s_axis in enumerate(s_axis_array):
            instName = s_axis['kernel_inst']['inst']
            idx_str = "%02d"%idx
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name':'applicationRegion/input_switch',
                    'type':'intf',
                    'port_name':'M' + idx_str + '_AXIS'
                    },
                    {
                    'name': instName,
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
   
    elif len(s_axis_array) == 1:
        if (sim == 1):
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name':'applicationRegion/arbiter',
                    'type':'intf',
                    'port_name':'M00_AXIS'
                    },
                    {'name': s_axis_array[0]['kernel_inst']['inst'],
                    'type':'intf',
                    'port_name': s_axis_array[0]['name']
                    }
                    )
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name':'applicationRegion/custom_switch_inst',
                    'type':'intf',
                    'port_name':'stream_out_switch_V'
                    },
                    {'name':'applicationRegion/arbiter',
                    'type':'intf',
                    'port_name':'S01_AXIS'
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
                    {'name': s_axis_array[0]['kernel_inst']['inst'],
                    'type':'intf',
                    'port_name': s_axis_array[0]['name']
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
    


    m_axis_array = getInterfaces(tcl_user_app.fpga, 'm_axis', 'scope', 'global')

    #no output switch, direct connect if only one
    if len(m_axis_array) == 1:
        instName = m_axis_array[0]['kernel_inst']['inst'] 
        tcl_user_app.makeConnection(
                'intf',
                {
                'name': instName,
                'type':'intf',
                'port_name': m_axis_array[0]['name']
                },
                {
                'name':'applicationRegion/custom_switch_inst',
                'type':'intf',
                'port_name':'stream_in_V'
                }
                )
    elif len(m_axis_array) > 1:
        for idx, m_axis in enumerate(m_axis_array):
            instName = m_axis['kernel_inst']['inst']
            idx_str = "%02d"%idx
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name': instName ,
                    'type':'intf',
                    'port_name': m_axis['name']
                    },
                    {
                    'name':'applicationRegion/output_switch',
                    'type':'intf',
                    'port_name':'S'+ idx_str + '_AXIS'
                    }
                    )

    s_axi_array = getInterfaces(tcl_user_app.fpga, 's_axi', 'scope', 'global')
    for idx, s_axi in enumerate(s_axi_array):
        instName = s_axi['kernel_inst']['inst']
        idx_str = "%02d"%idx
        tcl_user_app.makeConnection(
                'intf',
                {'name':'applicationRegion/axi_interconnect_ctrl',
                'type':'intf',
                'port_name':'M' + idx_str + '_AXI'
                },
                {'name': instName,
                'type':'intf',
                'port_name':s_axi['name']
                }
                )

    m_axi_array = getInterfaces(tcl_user_app.fpga, 'm_axi', 'scope', 'global')
    for idx, m_axi in enumerate(m_axi_array):
        instName = m_axi['kernel_inst']['inst']
        idx_str = "%02d"%idx
        tcl_user_app.makeConnection(
                'intf',
                {
                'name': instName,
                'type':'intf',
                'port_name':m_axi['name']
                },
                {
                'name':'applicationRegion/axi_interconnect_mem',
                'type':'intf',
                'port_name':'S' +idx_str + '_AXI'
                }
                )


def add_debug_interfaces(outDir, fpga):



    m_axi_interfaces = getInterfaces(tcl_debug_app.fpga, 'm_axi', 'debug')
    s_axi_interfaces = getInterfaces(tcl_debug_app.fpga, 's_axi', 'debug')
    s_axis_interfaces = getInterfaces(tcl_debug_app.fpga, 's_axis', 'debug')
    m_axis_interfaces = getInterfaces(tcl_debug_app.fpga, 'm_axis',  'debug')
    wire_master_interfaces = getInterfaces(tcl_debug_app.fpga, 'wire_master', 'debug')
    wire_slave_interfaces = getInterfaces(tcl_debug_app.fpga, 'wire_slave', 'debug')

    #instantiate ila
    if (len(m_axi_interfaces) + len(s_axi_interfaces) + len(s_axis_interfaces) + len(m_axis_interfaces) + len(wire_master_interfaces) + len(wire_slave_interfaces)) > 1:
        tcl_debug_app = tclMeFile( outDir + '/' + str(fpga['num']) + '_debug')
        tcl_debug_app.instBlock(
                {
                'name':'system_ila',
                'inst':'system_ila_inst',
                'clks':['clk'],
                'resetns':['resetn']
                }
                )

    
    #set properties
    properties = []
    #by default interface is AXI, only need to set interface for axis and wires
    len_native = len(wire_slave_interfaces) + len(wire_master_interfaces)
    len_interface = len(s_axis_interfaces) + len(m_axis_interfaces) + len(s_axi_interfaces) + len(m_axi_interfaces)

    if len_native > 0 and len_interface > 0:
        properties.append('CONFIG.C_MON_TYPE {MIXED}')
    elif len_native > 0 and len_interface == 0:
        properties.append('CONFIG.C_MON_TYPE {NATIVE}')



    starting_idx = len(s_axi_interfaces) + len(m_axi_interfaces)
    for axis_idx in range(starting_idx, starting_idx + len(s_axis_interfaces) + len(m_axis_interfaces)):
        properties.append('CONFIG.C_SLOT_' + str(axis_idx) + '_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0}')

        
    for axi_idx, axi_interface in enumerate(s_axi_interfaces):
        tcl_debug_app.makeConnection(
                'intf',
                {
                'name':'system_ila_inst',
                'type':'intf',
                'port_name':'SLOT_' + str(axi_idx) + '_AXI'
                },
                {
                'name': axi_interface['kernel_inst']['inst'],
                'type':'intf',
                'port_name': axi_interface['name']
                }
                )
        

    slot_offset = len(s_axi_interfaces)
    for axi_idx, axi_interface in enumerate(m_axi_interfaces):
        tcl_debug_app.makeConnection(
                'intf',
                {
                'name':'system_ila_inst',
                'type':'intf',
                'port_name':'SLOT_' + str(axi_idx + slot_offset) + '_AXI'
                },
                {
                'name': axi_interface['kernel_inst']['inst'],
                'type':'intf',
                'port_name': axi_interface['name']
                }
                )
        

    slot_offset = slot_offset + len(m_axi_interfaces)
    for axis_idx, axis_interface in enumerate(m_axis_interfaces):
        tcl_debug_app.makeConnection(
                'intf',
                {
                'name':'system_ila_inst',
                'type':'intf',
                'port_name':'SLOT_' + str(axis_idx + slot_offset) + '_AXIS'
                },
                {
                'name': axis_interface['kernel_inst']['inst'],
                'type':'intf',
                'port_name': axis_interface['name']
                }
                )

    slot_offset = slot_offset + len(m_axis_interfaces)
    for axis_idx, axis_interface in enumerate(s_axis_interfaces):
        tcl_debug_app.makeConnection(
                'intf',
                {
                'name':'system_ila_inst',
                'type':'intf',
                'port_name':'SLOT_' + str(axis_idx + slot_offset) + '_AXIS'
                },
                {
                'name': axis_interface['kernel_inst']['inst'],
                'type':'intf',
                'port_name': axis_interface['name']
                }
                )



    for wire_idx, wire_interface in enumerate(wire_master_interfaces):
        tcl_user_app.makeConnection(
                    'net',
                    {
                     'name':'system_ila_inst',
                     'type':'pin',
                     'port_name':'probe' + str(wire_idx)
                     },
                    {
                    'name': wire_interface['kernel_inst']['inst'],
                    'type':'pin',
                    'port_name': wire_interface['name']
                    }
                    )
    
    wire_offset = len(wire_master_interfaces)
    for wire_idx, wire_interface in enumerate(wire_slave_interfaces):
        tcl_user_app.makeConnection(
                    'net',
                    {
                     'name':'system_ila_inst',
                     'type':'pin',
                     'port_name':'probe' + str(wire_idx + wire_offset)
                     },
                    {
                    'name': wire_interface['kernel_inst']['inst'],
                    'type':'pin',
                    'port_name': wire_interface['name']
                    }
                    )



def getKernel(fpga, num):
    
    for kern in fpga['kernel']:
        if int(kernel['num']) == num:
            return kern

    return None


def getSlaveAddressInfo(s_axi):
    slave_inst = s_axi['kernel_inst']['inst']
    slave_inst = slave_inst.split('/')[1]    
    if (s_axi['kernel_inst']['lib'] == 'hls'):
        slave_port = 'Data_' + s_axi['name']
    else:
        slave_port = s_axi['name']
    
    if 'base' in s_axi:
        slave_base = s_axi['base']
    else:
        slave_base = 'Reg' 
    
    
    properties = {}
    if 'offset' in s_axi:
        properties.update({'offset': s_axi['offset']})
    if 'range' in s_axi:
        properties.update({'range': s_axi['range']})
   
    return slave_inst, slave_port, slave_base, properties

def userApplicationRegionAssignAddresses(tcl_user_app, shared):

    #connect mem interconnect and assign addresses, all kernels need to be 32 bit addressable
    #connect ctrl interconnect and assign addresses


    #global m_axi
    m_axi_array = getInterfaces(tcl_user_app.fpga, 'm_axi', 'scope', 'global')

    tcl_user_app.assign_address(None, 'S_AXI_MEM_0', 'Reg')
    if shared:
        tcl_user_app.assign_address(None, 'S_AXI_MEM_1', 'Reg')

    for global_m_axi in m_axi_array:
        instName = global_m_axi['kernel_inst']['inst']
        
        if(global_m_axi['kernel_inst']['lib'] == 'hls'):
            master = instName + '/Data_' + global_m_axi['name']
        else:
            master = instName + '/' + global_m_axi['name']
        
        properties = {'offset': '0x00000000', 'range': '4G'}
        
        tcl_user_app.set_address_properties(None, 'S_AXI_MEM_0', 'Reg', master, offset='0x00000000')
        if shared:
            tcl_user_app.set_address_properties(None, 'S_AXI_MEM_1', 'Reg', master, offset='0x00000000')
            
    for global_m_axi in m_axi_array:
        instName = global_m_axi['kernel_inst']['inst']
        
        if(global_m_axi['kernel_inst']['lib'] == 'hls'):
            master = instName + '/Data_' + global_m_axi['name']
        else:
            master = instName + '/' + global_m_axi['name']
        
        properties = {'range': '4G'}
        
        tcl_user_app.set_address_properties(None, 'S_AXI_MEM_0', 'Reg', master, **properties)
        if shared:
            tcl_user_app.set_address_properties(None, 'S_AXI_MEM_1', 'Reg', master, **properties)
            





    #global s_axi
    s_axi_array = getInterfaces(tcl_user_app.fpga, 's_axi', 'scope', 'global')
    master = 'S_AXI_CONTROL'

    for global_s_axi in s_axi_array:
        slave_inst = global_s_axi['kernel_inst']['inst']
        slave_inst, slave_port, slave_base, properties = getSlaveAddressInfo(global_s_axi) 
        tcl_user_app.assign_address(slave_inst, slave_port, slave_base)
        if 'offset' in properties:
            prop = {'offset': properties['offset']}
            tcl_user_app.set_address_properties(slave_inst, slave_port, slave_base, master, **prop)
        if 'range' in properties:
            prop = {'range': properties['range']}
            tcl_user_app.set_address_properties(slave_inst, slave_port, slave_base, master, **prop)





    #local m_axi and s_axi
    m_axi_array = getInterfaces(tcl_user_app.fpga, 'm_axi', 'scope', 'local')


    for local_m_axi in m_axi_array:
        if (local_m_axi['kernel_inst']['lib'] == 'hls'):
            master_port = 'Data_' + local_m_axi['name'] 
        else:
            master_port =  local_m_axi['name']
        
        s_axi_array = getSlaveInterfaces(tcl_user_app.fpga, 's_axi', local_m_axi)
        
        for local_s_axi in s_axi_array:
            slave_inst, slave_port, slave_base, properties = getSlaveAddressInfo(local_s_axi) 
            tcl_user_app.assign_address(slave_inst, slave_port, slave_base)
            if 'offset' in properties:
                prop = {'offset': properties['offset']}
                tcl_user_app.set_address_properties(slave_inst, slave_port, slave_base, local_m_axi['kernel_inst']['inst'] + '/' + master_port, **prop)
            if 'range' in properties:
                prop = {'range': properties['range']}
                tcl_user_app.set_address_properties(slave_inst, slave_port, slave_base, local_m_axi['kernel_inst']['inst'] + '/' + master_port, **prop)


def userApplicationLocalConnections(tcl_user_app):

    #connect local axis and wires

    m_axis_array = getInterfaces(tcl_user_app.fpga, 'm_axis', 'scope', 'local')

    for local_m_axis in m_axis_array:
        s_axis_array = getSlaveInterfaces(tcl_user_app.fpga, 's_axis', local_m_axis)
        
        #insert broadcaster
        if (len(s_axis_array) > 1):
            tcl_user_app.instBlock(
                    {
                    'name':'axis_broadcaster',
                    'inst': local_m_axis['kernel_inst']['inst'] + '_' +local_m_axis['name'] + '_broadcaster',
                    'clks':['aclk'],
                    'resetns':['aresetn'],
                    'properties':['CONFIG.NUM_MI {'+ str(len(s_axis))  +'}']
                    }
                    )
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name': local_m_axis['kernel_inst']['inst'] + '_' +local_m_axis['name'] + '_broadcaster',
                    'type':'intf',
                    'port_name':'S_AXIS'
                    },
                    {
                    'name': local_m_axis['kernel_inst']['inst'],
                    'type':'intf',
                    'port_name': local_m_axis['name']
                    }
                    )
            for s_axis_idx, s_axis in enumerate(s_axis_array):
                s_axis_idx_str = "%02d"%s_axis_idx
                tcl_user_app.makeConnection(
                        'intf',
                        {
                        'name': local_m_axis['kernel_inst']['inst'] + '_' +local_m_axis['name'] + '_broadcaster',
                        'type':'intf',
                        'port_name':'M' + s_axis_idx_str + '_AXIS'
                        },
                        {
                        'name':  s_axis['kernel_inst']['inst'],
                        'type':'intf',
                        'port_name': s_axis['name']
                        }
                        )
        elif (len(s_axis_array) == 1):
            tcl_user_app.makeConnection(
                    'intf',
                    {
                    'name': local_m_axis['kernel_inst']['inst'],
                    'type':'intf',
                    'port_name': local_m_axis['name']
                    },
                    {
                    'name':  s_axis['kernel_inst']['inst'],
                    'type':'intf',
                    'port_name': s_axis['name']
                    }
                    )

        else:
            raise ValueError("Local Master needs at least one local slave")

   
    wire_master_array = getInterfaces(tcl_user_app.fpga, 'wire_master', 'scope' ,'local')

    for wire_master in wire_master_array:
        wire_slave_array = getSlaveInterfaces(tcl_user_app.fpga, 'wire_slave', wire_master)


        for wire_slave in wire_slave_array:
            tcl_user_app.makeConnection(
                    'net',
                        {
                        'name': wire_master['kernel_inst']['inst'],
                        'type':'pin',
                        'port_name': wire_master['name']
                        },
                        {
                        'name': wire_slave['kernel_inst']['inst'],
                        'type':'pin',
                        'port_name': wire_slave['name']
                        }
                        )
        





def userApplicationRegion(outDir, fpga, sim):

    tcl_user_app = tclMeFile( outDir + '/' + str(fpga['num']) + '_app', fpga)
    #tcl_user_app = open( outDir + '/' + str(fpga['num']) + '_app.tcl', 'w')
    tcl_user_app.createHierarchy('applicationRegion')


    userApplicationRegionKernelsInst(tcl_user_app)
    userApplicationRegionControlInst(tcl_user_app)
    #if communication medium is ethernet then combine offchip memory into one shared address space
    userApplicationRegionMemInstGlobal(tcl_user_app, tcl_user_app.fpga['comm'] == 'eth')
    userApplicationRegionMemInstLocal(tcl_user_app)
    userApplicationRegionSwitchesInst(tcl_user_app, sim)
    userApplicationRegionKernelConnectSwitches(tcl_user_app, sim)
    userApplicationRegionAssignAddresses(tcl_user_app, tcl_user_app.fpga['comm'] =='eth' and tcl_user_app.fpga.address_space == 64)
    userApplicationLocalConnections(tcl_user_app)


    #return num_debug_interfaces

def netBridgeConstants(tcl_net):

    ip_addr = tcl_net.fpga['ip'].split(".")
    #tcl_net.write('create_bd_cell -type ip -vlnv user.org:user:ip_constant_block:1.0 network/ip_constant_block_inst\n')
    tcl_net.instBlock(
            {
            'vendor':'user.org',
            'lib':'user',
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

    properties = properties + ['CONFIG.C_MAC {0x' + tcl_net.fpga['mac'].replace(":","") + '}']

    tcl_net.setProperties('network/ip_constant_block_inst', properties)

    galapagos_path = str(os.environ.get('GALAPAGOS_PATH'))
    if tcl_net.fpga['comm'] == 'tcp':
        tcl_net.addSource(galapagos_path + '/middleware/tclScripts/pr_tcp_bridge.tcl')
    elif tcl_net.fpga['comm'] == 'eth':
        tcl_net.addSource(galapagos_path + '/middleware/tclScripts/pr_eth_bridge.tcl')



def netBridge(outDir, fpga):
    tcl_net = tclMeFile( outDir + '/' + str(fpga['num']) + '_net', fpga)

    tcl_net.createHierarchy('network')
    netBridgeConstants(tcl_net)

def bridgeConnections(outDir, fpga, sim):
    tcl_bridge_connections = tclMeFile( outDir + '/' + str(fpga['num']) + '_bridge_connections', fpga)

    #no bridge directly connect
    if tcl_bridge_connections.fpga['app_bridge'] == None:

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


        if (sim == 1):
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
        else: #sim == 0
            tcl_bridge_connections.makeConnection(
                    'intf',
                    {
                    'name':'network/network_bridge_inst',
                    'type':'intf',
                    'port_name':'${netBridge_to_app}'
                    },
                    {
                    'name':'applicationRegion/arbiter',
                    'type':'intf',
                    'port_name':'S00_AXIS'
                    }
                    )
    else:
        tcl_bridge_connections.instBlock(
                {
                'name': tcl_bridge_connections.fpga['app_bridge']['name'],
                'inst':'application_bridge_inst',
                'lib': tcl_bridge_connections.fpga['app_bridge']['lib'],
                'vendor': tcl_bridge_connections.fpga['app_bridge']['vendor'],
                'clks':tcl_bridge_connections.fpga['app_bridge']['clk'],
                'resetns':tcl_bridge_connections.fpga['app_bridge']['aresetn']
                }
                )
        if (sim == 1):
            tcl_bridge_connections.makeConnection(
                    'intf',
                    {
                    'name':'application_bridge_inst',
                    'type':'intf',
                    'port_name':tcl_bridge_connections.fpga['app_bridge']['to_app']
                    },
                    {
                    'name':'applicationRegion/arbiter',
                    'type':'intf',
                    'port_name':'S00_AXIS'
                    }
                    )
        else: #sim == 0
            tcl_bridge_connections.makeConnection(
                    'intf',
                    {
                    'name':'application_bridge_inst',
                    'type':'intf',
                    'port_name':tcl_bridge_connections.fpga['app_bridge']['to_app']
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
                'port_name':tcl_bridge_connections.fpga['app_bridge']['from_app']
                }
                )

        tcl_bridge_connections.makeConnection(
                'intf',
                {
                'name':'application_bridge_inst',
                'type':'intf',
                'port_name':tcl_bridge_connections.fpga['app_bridge']['to_net']
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
                'port_name':tcl_bridge_connections.fpga['app_bridge']['from_net']
                }
                )



def makeTCLFiles(fpga, projectName, sim):



    galapagos_path = str(os.environ.get('GALAPAGOS_PATH'))
    outDir = galapagos_path + '/projects/' + projectName + '/' + str(fpga['num'])

    #make bridge to network
    netBridge(outDir, fpga)

    userApplicationRegion(outDir, fpga, sim)
    bridgeConnections(outDir, fpga, sim)
    #if(num_debug_interfaces > 0):
    #    add_debug_interfaces(outDir, num_debug_interfaces, fpga)

    galapagos_path = str(os.environ.get('GALAPAGOS_PATH'))
    tclMain = tclMeFile( outDir + '/' + str(fpga['num']), fpga)
    tclMain.addSource(galapagos_path + '/shells/tclScripts/pr_standard_interfaces.tcl')
    tclMain.addSource(outDir + '/' + str(fpga['num']) + '_net.tcl')
    tclMain.addSource(outDir + '/' + str(fpga['num']) + '_app.tcl')
    tclMain.addSource(outDir + '/' + str(fpga['num']) + '_bridge_connections.tcl')

    #if(num_debug_interfaces > 0):
    #    tclMain.addSource(outDir + '/' + str(fpga['num']) + '_debug.tcl')

    tclMain.tprint('validate_bd_design')


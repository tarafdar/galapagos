#!/usr/bin/python

import sys
import subprocess
import os



def createPacketFormatter(index, packetFormatter, tclMain, networkBridges):
    destMAC_int = int(packetFormatter.dest.replace(":", ""), 16)
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_' + str(index) +'\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_' + str(index) + '\n')
    if networkBridges != None:
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:' + networkBridges.bridgeToLocation + ':1.0 bridgeTo_inst_' + str(index) +'\n')
        tclMain.write('connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins bridgeTo_inst_' + str(index) + '/aclk]\n')
        tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins bridgeTo_inst_' + str(index) + '/aresetn] \n')
        #tclMain.write('connect_bd_intf_net [get_bd_intf_pins packetFormatter_inst_' + str(index) + '/packetOut] [get_bd_intf_pins bridgeTo_inst_' + str(index) + '/' + networkBridges.stream_in_to + ']\n')
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeTo_inst_' + str(index) + '/' + networkBridges.stream_out_to + '] [get_bd_intf_pins packetFormatter_inst_' + str(index) + '/packetIn]\n')

    tclMain.write('set_property -dict [list CONFIG.CONST_WIDTH {48}] [get_bd_cells pf_dst_inst_' + str(index) + ']\n')
    tclMain.write('set_property -dict [list CONFIG.CONST_VAL {' + str(destMAC_int) + '}] [get_bd_cells pf_dst_inst_' + str(index) +']\n')
    tclMain.write('connect_bd_net [get_bd_pins pf_dst_inst_' + str(index) + '/dout] [get_bd_pins packetFormatter_inst_' + str(index) + '/eth_dst_V]\n')
    tclMain.write('connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetFormatter_inst_' + str(index) + '/ap_clk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetFormatter_inst_' + str(index) + '/ap_rst_n] \n')
    tclMain.write('connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins packetFormatter_inst_' + str(index) + '/eth_src_V] [get_bd_pins src_inst/dout]\n')
    



def makeTCLFiles(outDir, sourceMAC, numExtra, schedulerList, listIP, localConnections, inputSwitchMasters, inputSwitchSlaves, packetFormatterList, index, projectName, networkBridges, numFPGAs, plus16, fpgaIndex, lowRange, highRange):
#def makeTCLFiles(outDir, sourceMAC, numExtra, schedulerList, listIP, localConnections, inputSwitchMasters, inputSwitchSlaves, packetFormatterList, index, projectName, networkBridges, numFPGAs, plus16, fpgaIndex):
    sourceMAC_int = int(sourceMAC.replace(":", ""), 16)


    if plus16:
        currentPacketFormatter = packetFormatterList[fpgaIndex]
        packetFormatterList[fpgaIndex] = []
    tclMain = open( outDir + '/' + index + '.tcl', 'w')
    tclConfig = open( outDir + '/' + 'configurationParameters.tcl', 'w')
    curPath = os.getcwd()

    tclConfig.write('set fpgaNum ' + index + '\n')
    tclConfig.write('set projName ' + projectName + '\n')
    tclConfig.write('set board_name  adm-8k5\n')
#    tclConfig.write('set projDir_static 8k5Shell\n')
#    tclConfig.write('set dcpName ' + dcpName + '\n')
    tclConfig.write('set part xcku115-flva1517-2-e\n')
    tclConfig.close()
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 logic_1\n')

    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 src_inst\n')
    tclMain.write('set_property -dict [list CONFIG.CONST_WIDTH {48}] [get_bd_cells src_inst]\n')


    if networkBridges != None:
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:' + networkBridges.bridgeFromLocation + ':1.0 bridgeFrom_inst\n')

    tclMain.write('set_property -dict [list CONFIG.CONST_VAL {' + str(sourceMAC_int) + '}] [get_bd_cells src_inst]\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 inputSwitch_inst\n')
    #tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 inputSwitch_inst\n')

    if plus16:
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 fpgaSwitch_inst\n')
        #tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 fpgaSwitch_inst\n')

        if(len(packetFormatterList[fpgaIndex]) > 0):
            tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 outputFpgaSwitch_inst\n')
            #tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 outputFpgaSwitch_inst\n')
            print "HERE " 
            print packetFormatterList[fpgaIndex]
            print str(len(packetFormatterList[fpgaIndex]))
            #tclMain.write('set_property -dict [list CONFIG.NUM_SI {' + str(len(packetFormatterList[fpgaIndex])) + '}  CONFIG.NUM_MI {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ALGORITHM {3}] [get_bd_cells outputFpgaSwitch_inst]\n')
            tclMain.write('set_property -dict [list CONFIG.HAS_TLAST.VALUE_SRC USER] [get_bd_cells outputFpgaSwitch_inst]\n')
            tclMain.write('set_property -dict [list CONFIG.HAS_TLAST {1} CONFIG.NUM_SI {' + str(len(packetFormatterList[fpgaIndex])) + '}  CONFIG.NUM_MI {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1} ] [get_bd_cells outputFpgaSwitch_inst]\n')

    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 outputSwitch_inst\n')
    #tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 outputSwitch_inst\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 receiveFifo_inst\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:fireWall64:1.0 fireWall_inst\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:heartBeat:1.0 heartBeat_inst\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:fireWall64_2:1.0 fireWall2_inst\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins fireWall_inst/stream_out] [get_bd_intf_pins fireWall2_inst/stream_in]\n')
    tclMain.write('connect_bd_net [get_bd_pins fireWall_inst/match_out_V] [get_bd_pins fireWall2_inst/match_in_V]\n')
    tclMain.write('connect_bd_net [get_bd_pins fireWall_inst/match_out_V_ap_vld] [get_bd_pins fireWall2_inst/match_in_V_ap_vld]\n')
    tclMain.write('connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins fireWall_inst/eth_address_V]\n')
    tclMain.write('connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins heartBeat_inst/eth_address_V]\n')
    tclMain.write('connect_bd_net [get_bd_pins logic_1/dout] [get_bd_pins fireWall2_inst/stream_garbage_TREADY]\n')


    tclMain.write('create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS\n')
    tclMain.write('set_property -dict [list CONFIG.TDATA_NUM_BYTES [get_property CONFIG.TDATA_NUM_BYTES [get_bd_intf_pins receiveFifo_inst/S_AXIS]] CONFIG.HAS_TLAST [get_property CONFIG.HAS_TLAST [get_bd_intf_pins receiveFifo_inst/S_AXIS]]] [get_bd_intf_ports S_AXIS]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins receiveFifo_inst/S_AXIS] [get_bd_intf_ports S_AXIS]\n')


    tclMain.write('connect_bd_intf_net [get_bd_intf_pins receiveFifo_inst/M_AXIS] [get_bd_intf_pins fireWall_inst/stream_in]\n')



    if networkBridges != None:
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins fireWall2_inst/stream_out] [get_bd_intf_pins bridgeFrom_inst/' +  networkBridges.stream_in_from + ']\n')
        if plus16:
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeFrom_inst/' + networkBridges.stream_out_from + '] [get_bd_intf_pins fpgaSwitch_inst/S00_AXIS]\n')
        else:
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeFrom_inst/' + networkBridges.stream_out_from + '] [get_bd_intf_pins inputSwitch_inst/S00_AXIS]\n')
    else:
        if plus16:
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins fireWall2_inst/stream_out] [get_bd_intf_pins fpgaSwitch_inst/S00_AXIS]\n')
        else:
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins fireWall2_inst/stream_out] [get_bd_intf_pins inputSwitch_inst/S00_AXIS]\n')



    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 sendFifo_inst\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins outputSwitch_inst/M00_AXIS] [get_bd_intf_pins sendFifo_inst/S_AXIS]\n')

    tclMain.write('create_bd_port -dir I -type clk CLK_DATA\n')
    tclMain.write('create_bd_port -dir I -type clk CLK_CONTROL\n')
    tclMain.write('create_bd_port -dir I -type rst ARESETN\n')

    tclMain.write('connect_bd_net [get_bd_pins fireWall_inst/ap_clk] [get_bd_ports CLK_DATA]\n')
    tclMain.write('connect_bd_net [get_bd_pins fireWall_inst/ap_rst_n] [get_bd_ports ARESETN]\n')

    if networkBridges != None:
        tclMain.write('connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins bridgeFrom_inst/aclk]\n')
        tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins bridgeFrom_inst/aresetn] \n')

    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins fireWall2_inst/ap_clk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins fireWall2_inst/ap_rst_n]\n')
    
    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins heartBeat_inst/ap_clk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins heartBeat_inst/ap_rst_n]\n')


    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins inputSwitch_inst/aclk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins inputSwitch_inst/aresetn]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins outputSwitch_inst/aclk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins outputSwitch_inst/aresetn]\n')

    if plus16:
        tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins fpgaSwitch_inst/aclk]\n')
        tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins fpgaSwitch_inst/aresetn]\n')
        if(len(packetFormatterList[fpgaIndex])>0):
            tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins outputFpgaSwitch_inst/aclk]\n')
            tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins outputFpgaSwitch_inst/aresetn]\n')


    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins receiveFifo_inst/s_axis_aresetn]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins receiveFifo_inst/s_axis_aclk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins sendFifo_inst/s_axis_aresetn]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins sendFifo_inst/s_axis_aclk]\n')

    tclMain.write('create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS\n')


    for ip in listIP:
        instName = ip.name + "_inst_"
        index = 0
        for kernel in ip.kernel:

            tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:' + kernel.kernType + ':' + ip.name +':' +  kernel.version + ' ' + instName + str(index) + '\n')

            print kernel.clk
            tclMain.write('connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins ' + instName + str(index) + '/' + kernel.clk + '] \n')

            tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins ' + instName + str(index) + '/' + kernel.resetn + ']\n')
            if (kernel.id_port != ''):
                tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_' + str(kernel.num) + '\n')
                tclMain.write('set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells id_' + str(kernel.num) + ']\n')
                tclMain.write('set_property -dict [list CONFIG.CONST_VAL {' + str(kernel.num) + '}] [get_bd_cells id_' + str(kernel.num) + ']\n')
                tclMain.write('connect_bd_net [get_bd_pins id_' + str(kernel.num) + '/dout] [get_bd_pins ' + instName + str(index) + '/' + kernel.id_port + ']\n')
            index = index + 1
    
    index = 0

    if plus16:
        pflTotal = packetFormatterList[fpgaIndex]
    else:
        pflTotal = packetFormatterList

    print "packetformatter at index "
    #print packetFormatterList[fpgaIndex]

#    for packetFormatter in pflTotal:
#        destMAC_int = int(packetFormatter.dest.replace(":", ""), 16)
#        createPacketFormatter(index, packetFormatter, tclMain, networkBridges)
#        index = index + 1
#        #print packetFormatter
#


    print packetFormatterList
    if plus16:
        for i in range(0, len(packetFormatterList)):
            if i != fpgaIndex and packetFormatterList[i] != []:
                packetFormatter = packetFormatterList[i][0]
            #else:
            #    packetFormatter = currentPacketFormatter 
                print "packetFormatter i is " + str(i) + " index is " + str(index)
                createPacketFormatter(index, packetFormatter, tclMain, networkBridges)
                index = index + 1




    #tclMain.write('set_property -dict [list CONFIG.NUM_SI {' + str(len(packetFormatterList)) + '}  CONFIG.NUM_MI {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ALGORITHM {3}] [get_bd_cells outputSwitch_inst]\n')
    tclMain.write('set_property -dict [list CONFIG.NUM_SI {' + str(len(packetFormatterList)) + '}  CONFIG.NUM_MI {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ALGORITHM {3}] [get_bd_cells outputSwitch_inst]\n')
    #tclMain.write('set_property -dict [list CONFIG.HAS_TLAST.VALUE_SRC USER] [get_bd_cells outputSwitch_inst]\n')
    #tclMain.write('set_property -dict [list CONFIG.HAS_TLAST {1} CONFIG.NUM_SI {' + str(len(packetFormatterList)) + '}  CONFIG.NUM_MI {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1} ] [get_bd_cells outputSwitch_inst]\n')
    

    if plus16:
        for indexPF in range(0, len(packetFormatterList[fpgaIndex])):
            indexPFStr = "%02d"%indexPF
            tclMain.write('connect_bd_net [get_bd_ports CLK_DATA] [get_bd_pins outputFpgaSwitch_inst/S' + indexPFStr + '_AXIS_ACLK]\n')
            tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins outputFpgaSwitch_inst/S' + indexPFStr + '_AXIS_ARESETN]\n')

        numAxisOS = len(packetFormatterList) 
            
        for indexPF in range(0, numAxisOS):
            indexPFStr = "%02d"%indexPF
            tclMain.write('connect_bd_net [get_bd_ports CLK_DATA] [get_bd_pins outputSwitch_inst/S' + indexPFStr + '_AXIS_ACLK]\n')
            tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins outputSwitch_inst/S' + indexPFStr + '_AXIS_ARESETN]\n')


    else:
        #for indexPF in range(0, len(packetFormatterList) + 1):
        for indexPF in range(0, len(packetFormatterList) ):
            indexPFStr = "%02d"%indexPF
            tclMain.write('connect_bd_net [get_bd_ports CLK_DATA] [get_bd_pins outputSwitch_inst/S' + indexPFStr + '_AXIS_ACLK]\n')
            tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins outputSwitch_inst/S' + indexPFStr + '_AXIS_ARESETN]\n')

    tclMain.write('connect_bd_net [get_bd_ports CLK_DATA] [get_bd_pins outputSwitch_inst/M00_AXIS_ACLK]\n')
    tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins outputSwitch_inst/M00_AXIS_ARESETN]\n')
  


    if plus16:
        tclMain.write('set_property -dict [list CONFIG.NUM_SI {' + str(len(inputSwitchSlaves) + 1) + '} CONFIG.NUM_MI {' + str(len(packetFormatterList)) + '} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ALGORITHM {3}] [get_bd_cells fpgaSwitch_inst]\n')
        #tclMain.write('set_property -dict [list CONFIG.HAS_TLAST.VALUE_SRC USER] [get_bd_cells fpgaSwitch_inst]\n')
        #tclMain.write('set_property -dict [list CONFIG.HAS_TLAST {1} CONFIG.NUM_SI {' + str(len(inputSwitchSlaves) + 1) + '} CONFIG.NUM_MI {' + str(len(packetFormatterList)) + '} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1} ] [get_bd_cells fpgaSwitch_inst]\n')
        tclMain.write('set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {' + str(len(inputSwitchMasters) + len(schedulerList)) + '} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ALGORITHM {3}] [get_bd_cells inputSwitch_inst]\n')
        #tclMain.write('set_property -dict [list CONFIG.HAS_TLAST.VALUE_SRC USER] [get_bd_cells inputSwitch_inst]\n')
        #tclMain.write('set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {' + str(len(inputSwitchMasters) + len(schedulerList)) + '} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1} ] [get_bd_cells inputSwitch_inst]\n')
    else:
        tclMain.write('set_property -dict [list CONFIG.NUM_SI {' + str(len(inputSwitchSlaves) + 1) + '} CONFIG.NUM_MI {' + str(len(inputSwitchMasters) + numExtra + len(schedulerList)) + '} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ALGORITHM {3}] [get_bd_cells inputSwitch_inst]\n')
        #tclMain.write('set_property -dict [list CONFIG.HAS_TLAST.VALUE_SRC USER] [get_bd_cells inputSwitch_inst]\n')
        #tclMain.write('set_property -dict [list CONFIG.HAS_TLAST {1} CONFIG.NUM_SI {' + str(len(inputSwitchSlaves) + 1) + '} CONFIG.NUM_MI {' + str(len(inputSwitchMasters) + numExtra + len(schedulerList)) + '} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1} ] [get_bd_cells inputSwitch_inst]\n')

    if plus16:
        for indexSS in range(0, len(inputSwitchSlaves) + 1):
            indexSSStr = "%02d"%indexSS
            tclMain.write('connect_bd_net [get_bd_ports CLK_DATA] [get_bd_pins fpgaSwitch_inst/S' + indexSSStr + '_AXIS_ACLK]\n')
            tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins fpgaSwitch_inst/S' + indexSSStr + '_AXIS_ARESETN]\n')
        
        tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins inputSwitch_inst/S00_AXIS_ARESETN]\n')
        tclMain.write('connect_bd_net [get_bd_ports CLK_DATA] [get_bd_pins inputSwitch_inst/S00_AXIS_ACLK]\n')
    else: 
        for indexSS in range(0, len(inputSwitchSlaves) + 1):
            indexSSStr = "%02d"%indexSS
            tclMain.write('connect_bd_net [get_bd_ports CLK_DATA] [get_bd_pins inputSwitch_inst/S' + indexSSStr + '_AXIS_ACLK]\n')
            tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins inputSwitch_inst/S' + indexSSStr + '_AXIS_ARESETN]\n')


    if plus16:
        smBound = len(inputSwitchMasters) + len(schedulerList)
    else:
        smBound = len(inputSwitchMasters) + numExtra + len(schedulerList)

    for indexSM in range(0, smBound):
        indexSMStr = "%02d"%indexSM
        tclMain.write('connect_bd_net [get_bd_ports CLK_DATA] [get_bd_pins inputSwitch_inst/M' + indexSMStr + '_AXIS_ACLK]\n')
        tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins inputSwitch_inst/M' + indexSMStr + '_AXIS_ARESETN]\n')

    if plus16:
        for indexSM in range(0, len(packetFormatterList)):
            indexSMStr = "%02d"%indexSM
            tclMain.write('connect_bd_net [get_bd_ports CLK_DATA] [get_bd_pins fpgaSwitch_inst/M' + indexSMStr + '_AXIS_ACLK]\n')
            tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins fpgaSwitch_inst/M' + indexSMStr + '_AXIS_ARESETN]\n')

        if (len(packetFormatterList[fpgaIndex]) > 0):
            tclMain.write('connect_bd_net [get_bd_ports CLK_DATA] [get_bd_pins outputFpgaSwitch_inst/M00_AXIS_ACLK]\n')
            tclMain.write('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins outputFpgaSwitch_inst/M00_AXIS_ARESETN]\n')

    


    tclMain.write('set_property -dict [list ')
  


    index = 0 
    for inputSwitchMaster in inputSwitchMasters:
        dest = inputSwitchMaster.interface.tdest.replace(" ", "")
        indexStr = "%02d"%index
        tclMain.write('CONFIG.M' + indexStr + '_AXIS_BASETDEST {'+ format(int(dest), '#010x') + '} CONFIG.M' + indexStr + '_AXIS_HIGHTDEST {' + format(int(dest), '#010x') + '} ')
        index = index + 1
    
    for scheduler in schedulerList:
        indexStr = "%02d"%index
        dest = scheduler.inPort.replace(" ", "")
        tclMain.write('CONFIG.M' + indexStr + '_AXIS_BASETDEST {'+ format(int(dest), '#010x') + '} CONFIG.M' + indexStr + '_AXIS_HIGHTDEST {' + format(int(dest), '#010x') + '} CONFIG.M' + indexStr + '_HAS_REGSLICE{1} CONFIG.M' + indexStr + '_FIFO_MODE{1}')
        index = index + 1

    tclMain.write('] [get_bd_cells inputSwitch_inst]\n') 

    if plus16:
        tclMain.write('set_property -dict [list ')
        for indexFpgaSwitch in range(0, len(packetFormatterList)):
            #if indexFpgaSwitch != fpgaIndex:
            #packetFormatter = packetFormatterList[indexFpgaSwitch][0]
            #if packetFormatter.port.kernelName == None:
            indexStr = "%02d"%indexFpgaSwitch
            #dest = packetFormatter.port.kernelInterface.tdest.replace(" ","")
            #tclMain.write('CONFIG.M' + indexStr + '_AXIS_BASETDEST {'+ format(indexFpgaSwitch * 15, '#010x') + '} CONFIG.M' + indexStr + '_AXIS_HIGHTDEST {' + format((indexFpgaSwitch * 15) + 14, '#010x') + '} ')
            tclMain.write('CONFIG.M' + indexStr + '_AXIS_BASETDEST {'+ format(lowRange[indexFpgaSwitch], '#010x') + '} CONFIG.M' + indexStr + '_AXIS_HIGHTDEST {' + format(highRange[indexFpgaSwitch], '#010x') + '} ')
        tclMain.write('] [get_bd_cells fpgaSwitch_inst]\n') 
    else:
        tclMain.write('set_property -dict [list ')
        for packetFormatter in packetFormatterList:
            if packetFormatter.port.kernelName == None:
                indexStr = "%02d"%index
                dest = packetFormatter.port.kernelInterface.tdest.replace(" ","")
                tclMain.write('CONFIG.M' + indexStr + '_AXIS_BASETDEST {'+ format(int(dest), '#010x') + '} CONFIG.M' + indexStr + '_AXIS_HIGHTDEST {' + format(int(dest), '#010x') + '} ')
                index = index + 1
        tclMain.write('] [get_bd_cells inputSwitch_inst]\n') 

    tclMain.write('set_property -dict [list CONFIG.TDATA_NUM_BYTES.VALUE_SRC USER CONFIG.HAS_TLAST.VALUE_SRC USER] [get_bd_cells receiveFifo_inst]\nset_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1}] [get_bd_cells receiveFifo_inst]\nset_property -dict [list CONFIG.FIFO_DEPTH {32768}] [get_bd_cells receiveFifo_inst]\nset_property -dict [list CONFIG.TDATA_NUM_BYTES {8}   CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1} ] [get_bd_cells receiveFifo_inst]\nset_property -dict [list CONFIG.FIFO_DEPTH {32768} CONFIG.FIFO_MODE {2} CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1}] [get_bd_cells sendFifo_inst]\n')



    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0\n')
    tclMain.write('set_property -dict [list CONFIG.DATA_WIDTH {64} CONFIG.SINGLE_PORT_BRAM {1} CONFIG.ECC_TYPE {0}] [get_bd_cells axi_bram_ctrl_0]\n')
    
#    tclMain.write('startgroup\n')
    tclMain.write('create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI\n')
    tclMain.write('set_property -dict [list CONFIG.DATA_WIDTH [get_property CONFIG.DATA_WIDTH [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.ADDR_WIDTH [get_property CONFIG.ADDR_WIDTH [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.HAS_QOS [get_property CONFIG.HAS_QOS [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.HAS_REGION [get_property CONFIG.HAS_REGION [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.NUM_READ_OUTSTANDING [get_property CONFIG.NUM_READ_OUTSTANDING [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.NUM_WRITE_OUTSTANDING [get_property CONFIG.NUM_WRITE_OUTSTANDING [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]]] [get_bd_intf_ports S_AXI]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_ports S_AXI]\n')
#    tclMain.write('endgroup\n')
    
    tclMain.write('connect_bd_net -net [get_bd_nets CLK_CONTROL_1] [get_bd_ports CLK_CONTROL] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA]\n')



    index = 0
    for scheduler in schedulerList:
        if scheduler.schedType == 'anycast':
            numout = len(scheduler.outInterfaces) + int(scheduler.base_addr) - 1
            tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 sched_inst_' + str(index) +'\n')
            #tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 sched_inst_' + str(index) +'\n')
            tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:roundRobin:1.0 roundRobin_inst_' + str(index) +'\n')
            tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 roundRobinBase_inst_' + str(index) + '\n')
            tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 roundRobinMax_inst_' + str(index) + '\n')
            tclMain.write('set_property -dict [list CONFIG.CONST_WIDTH {8} CONFIG.CONST_VAL {' + str(scheduler.base_addr) + '}] [get_bd_cells roundRobinBase_inst_' + str(index) + ']\n')
            tclMain.write('connect_bd_net [get_bd_pins roundRobinBase_inst_' + str(index) + '/dout] [get_bd_pins roundRobin_inst_' + str(index) + '/base_V]\n')
            tclMain.write('connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins roundRobin_inst_' + str(index) + '/ap_clk] \n')
            tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins roundRobin_inst_' + str(index) + '/ap_rst_n] \n')
            tclMain.write('connect_bd_net [get_bd_nets CLK_DATA_1]  [get_bd_ports CLK_DATA] [get_bd_pins sched_inst_' + str(index) + '/aclk] \n')
            tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins sched_inst_' + str(index) + '/aresetn]\n')
            tclMain.write('set_property -dict [list CONFIG.CONST_WIDTH {8} CONFIG.CONST_VAL {' + str(numout) + '}] [get_bd_cells roundRobinMax_inst_' + str(index) + ']\n')
            tclMain.write('connect_bd_net [get_bd_pins roundRobinMax_inst_' + str(index) + '/dout] [get_bd_pins roundRobin_inst_' + str(index) + '/max_V]\n')
            tclMain.write('set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {' + str(len(scheduler.outInterfaces)) +'} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST{1} CONFIG.ARB_ALGORITHM{3}] [get_bd_cells sched_inst_' + str(index) + ']\n')
            #tclMain.write('set_property -dict [list CONFIG.HAS_TLAST.VALUE_SRC USER] [get_bd_cells sched_inst' + str(index) + ']\n')
            #tclMain.write('set_property -dict [list CONFIG.HAS_TLAST {1} CONFIG.NUM_SI {1} CONFIG.NUM_MI {' + str(len(scheduler.outInterfaces)) +'} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST{1} ] [get_bd_cells sched_inst_' + str(index) + ']\n')
            tclMain.write('set_property -dict [list ')
            for schedIndex in range(0, len(scheduler.outInterfaces)):
                schedIndexStr = "%02d"%schedIndex
                tclMain.write('CONFIG.M' + schedIndexStr + '_HAS_REGSLICE{1} CONFIG.M' + schedIndexStr + '_FIFO_MODE{1}')
            tclMain.write('] [get_bd_cells sched_inst_' + str(index) + ']\n')
                
    for localConnection in localConnections:
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + localConnection.port1.kernelName + '/' + localConnection.port1.interface.name + '] ' + '[get_bd_intf_pins ' + localConnection.port2.kernelName + '/' + localConnection.port2.interface.name + ']\n')

    index = 1
    for inputSwitchSlave in inputSwitchSlaves:
        indexStr = "%02d"%index

        if plus16:
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + inputSwitchSlave.kernelName + '/' + inputSwitchSlave.interface.name + '] [get_bd_intf_pins fpgaSwitch_inst/S' + indexStr + '_AXIS]\n')
        else:
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + inputSwitchSlave.kernelName + '/' + inputSwitchSlave.interface.name + '] [get_bd_intf_pins inputSwitch_inst/S' + indexStr + '_AXIS]\n')
        index = index + 1



    index = 0
    for inputSwitchMaster in inputSwitchMasters:
        indexStr = "%02d"%index
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M' + indexStr + '_AXIS] [get_bd_intf_pins ' + inputSwitchMaster.kernelName + '/' + inputSwitchMaster.interface.name + ']\n')

        index = index + 1


    index2=0


#    if plus16:
#        index = 0
#        for pfIndex in range(0, len(packetFormatterList[fpgaIndex])):
#            indexStr = "%02d"%pfIndex
#            if networkBridges != None:
#                tclMain.write('connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M' + indexStr + '_AXIS] [get_bd_intf_pins bridgeTo_inst_' + str(index2) + '/' + networkBridges.stream_in_to + ']\n')
#
#
#
#        for pfIndex in range(len(packetFormatterList[fpgaIndex])-1, len(packetFormatterList[fpgaIndex]) - 1 + len(packetFormatterList)):
#            indexStr = "%02d"%index
#            if networkBridges != None:
#                tclMain.write('connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M' + indexStr + '_AXIS] [get_bd_intf_pins bridgeTo_inst_' + str(index2) + '/' + networkBridges.stream_in_to + ']\n')
#                if(index != fpgaIndex): 
#                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeTo_inst_' + str(index) + '/' + networkBridges.stream_out_to +'] [get_bd_intf_pins packetFormatter_inst_' +   str(pfIndex) + '/packetIn]\n')
#
#
#            else:
#                tclMain.write('connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M' + indexStr + '_AXIS] [get_bd_intf_pins packetFormatter_inst_' + str(index2) + '/packetIn]\n')
#                index = index + 1
#    else:
    if (plus16 == 0):
        for packetFormatter in packetFormatterList:
            if packetFormatter.port.kernelName == None:
                indexStr = "%02d"%index
    
                if networkBridges != None:
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M' + indexStr + '_AXIS] [get_bd_intf_pins bridgeTo_inst_' + str(index2) + '/' + networkBridges.stream_in_to + ']\n')
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeTo_inst_' + str(index2) + '/' + networkBridges.stream_out_to +'] [get_bd_intf_pins packetFormatter_inst_' +   str(index2) + '/packetIn]\n') 
                else:
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M' + indexStr + '_AXIS] [get_bd_intf_pins packetFormatter_inst_' + str(index2) + '/packetIn]\n')
                index = index + 1
                index2 = index2+1
            


            



    index3 = 0
    for scheduler in schedulerList:
        if(scheduler.schedType == 'anycast'):
            indexStr = "%02d"%index
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M' + indexStr + '_AXIS] [get_bd_intf_pins roundRobin_inst_' + str(index3) + '/packetIn]\n')
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins roundRobin_inst_' + str(index3)+ '/packetOut] [get_bd_intf_pins sched_inst_' + str(index3) + '/S00_AXIS]\n')
            index = index + 1
            index3 = index3 + 1




    if plus16:
        index = 0

        for pfIndex in range(0, len(packetFormatterList[fpgaIndex])):
            packetFormatter = packetFormatterList[fpgaIndex][pfIndex]
            if packetFormatter.port.kernelName != None:
                if networkBridges != None:
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + packetFormatter.port.kernelName +  '/'+ packetFormatter.port.interface.name +'] [get_bd_intf_pins bridgeTo_inst_' + str(pfIndex) + '/' + networkBridges.stream_in_to + ']\n')
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeTo_inst_' + str(index) + '/' + networkBridges.stream_out_to + '] [get_bd_intf_pins packetFormatter_inst_' +   str(pfIndex) + '/packetIn]\n') 
                
                else:
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + packetFormatter.port.kernelName + '/' + packetFormatter.port.interface.name + '] [get_bd_intf_pins packetFormatter_inst_' + str(pfIndex) + '/packetIn]\n')


        pfIndexZero = 0
        for pfIndex in range(len(packetFormatterList[fpgaIndex]), len(packetFormatterList[fpgaIndex]) + len(packetFormatterList)):
            if pfIndex != fpgaIndex and packetFormatterList[pfIndexZero] != []:
                
                packetFormatter = packetFormatterList[pfIndexZero][0]
                if packetFormatter.port.kernelName != None:
                    indexStr = "%02d"%pfIndex
                    if networkBridges != None:
                        tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + packetFormatter.port.kernelName +  '/'+ packetFormatter.port.interface.name +'] [get_bd_intf_pins bridgeTo_inst_' + str(pfIndex) + '/' + networkBridges.stream_in_to + ']\n')
                        tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeTo_inst_' + str(index) + '/' + networkBridges.stream_out_to + '] [get_bd_intf_pins packetFormatter_inst_' +   str(pfIndex) + '/packetIn]\n') 
                    
                    else:
                        tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + packetFormatter.port.kernelName + '/' + packetFormatter.port.interface.name + '] [get_bd_intf_pins packetFormatter_inst_' + str(pfIndex2) + '/packetIn]\n')
            pfIndexZero = pfIndexZero + 1
    else:
        for packetFormatter in packetFormatterList:
            if packetFormatter.port.kernelName != None:
                indexStr = "%02d"%index
                if networkBridges != None:
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + packetFormatter.port.kernelName +  '/'+ packetFormatter.port.interface.name +'] [get_bd_intf_pins bridgeTo_inst_' + str(index2) + '/' + networkBridges.stream_in_to + ']\n')
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins bridgeTo_inst_' + str(index2) + '/' + networkBridges.stream_out_to + '] [get_bd_intf_pins packetFormatter_inst_' +   str(index2) + '/packetIn]\n') 
                
                else:
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + packetFormatter.port.kernelName + '/' + packetFormatter.port.interface.name + '] [get_bd_intf_pins packetFormatter_inst_' + str(index2) + '/packetIn]\n')
                index = index + 1
                index2 = index2 + 1
    
    
    index = 0 
    
    if plus16:
        for pfIndex in range(0, len(packetFormatterList[fpgaIndex])):
            packetFormatter = packetFormatterList[fpgaIndex][pfIndex]
            indexStr = "%02d"%pfIndex
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins packetFormatter_inst_' + str(pfIndex) + '/packetOut] [get_bd_intf_pins outputFpgaSwitch_inst/S' + indexStr + '_AXIS]\n')

        if(len(packetFormatterList[fpgaIndex]) > 1):
            index = 1
        else:
            index = 0
        #index2 = 0
        #for pfIndex in range(len(packetFormatterList[fpgaIndex]), len(packetFormatterList[fpgaIndex])+len(packetFormatterList) - 1):
        for pfIndex in range(0, len(packetFormatterList) - 1):
            indexStr = "%02d"%index
            #if pfIndex != fpgaIndex:
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins packetFormatter_inst_' + str(pfIndex) + '/packetOut] [get_bd_intf_pins outputSwitch_inst/S' + indexStr + '_AXIS]\n')
            index = index + 1
            #index2 = index2 + 1
    else:   
        for packetFormatter in packetFormatterList:
            indexStr = "%02d"%index
            print "index is " + str(index)
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins packetFormatter_inst_' + str(index) + '/packetOut] [get_bd_intf_pins outputSwitch_inst/S' + indexStr + '_AXIS]\n')
            index = index + 1

    indexStr = "%02d"%index
    if plus16:
        indexStr = "%02d"%(len(packetFormatterList) - 1)
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins heartBeat_inst/stream_out] [get_bd_intf_pins outputSwitch_inst/S' + indexStr + '_AXIS]\n')
    else:
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins heartBeat_inst/stream_out] [get_bd_intf_pins outputSwitch_inst/S' + indexStr + '_AXIS]\n')


    if plus16:
        indexStr = "%02d"%(fpgaIndex)
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins fpgaSwitch_inst/M' + indexStr + '_AXIS] [get_bd_intf_pins inputSwitch_inst/S00_AXIS]\n')


    #if plus16 and (len(packetFormatterList[fpgaIndex]) > 0):
    if plus16:
        index = 0
        #for pfIndex in range(len(packetFormatterList[fpgaIndex]) - 1, len(packetFormatterList[fpgaIndex]) + len(packetFormatterList) - 1):
        for pfIndex in range(0, len(packetFormatterList)):
            if(index != fpgaIndex):
                print "index is " + str(index)
                print "pf index is " + str(pfIndex)
                pfIndexStr = "%02d"%(pfIndex)
                indexStr = "%02d"%(index)
                if networkBridges != None:
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins fpgaSwitch_inst/M' + pfIndexStr + '_AXIS] [get_bd_intf_pins bridgeTo_inst_' + str(index) + '/' + networkBridges.stream_in_to + ']\n')
                else:
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins fpgaSwitch_inst/M' + pfIndexStr + '_AXIS] [get_bd_intf_pins packetFormatter_inst_' + str(index) + '/packetIn]\n')
                print 'connect_bd_intf_net [get_bd_intf_pins fpgaSwitch_inst/M' + pfIndexStr + '_AXIS] [get_bd_intf_pins packetFormatter_inst_' + str(index) + '/packetIn]'
                index = index + 1

    indexStr = "%02d"%(index)


    if plus16:
        index = 0
        for pfIndex in range(0, len(packetFormatterList)):
            pfIndexStr = "%02d"%(pfIndex)
            if pfIndex != fpgaIndex:
                if networkBridges != None:
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins fpgaSwitch_inst/M' + pfIndexStr + '_AXIS] [get_bd_intf_pins bridgeTo_inst_' + str(index) + '/' + networkBridges.stream_in_to + ']\n')

                else:
                    tclMain.write('connect_bd_intf_net [get_bd_intf_pins fpgaSwitch_inst/M' + pfIndexStr + '_AXIS] [get_bd_intf_pins packetFormatter_inst_' + str(index) + '/packetIn]\n')
                index = index + 1


    tclMain.write('connect_bd_intf_net [get_bd_intf_pins sendFifo_inst/M_AXIS] [get_bd_intf_ports M_AXIS]\n')
    packetFormatterList[fpgaIndex] = currentPacketFormatter 


#!/usr/bin/python

import sys
import subprocess
import os

#outDir=''
#schedulerList = []
#numExtra = 0
#sourceMAC = 'fa:16:3e:55:ca:03'
class packetFormatterObj:
    port = ''
    dest = ''
    def __init__(self):
        self.port = ''
        self.dest = ''
class localConnectionObj:
    port1 = ''
    port2 = ''
    def __init__(self):
        self.port1 = ''
        self.port2 = ''


class connectionObj:
    conn_type = ''
    conn_dest = ''
    def __init__(self):
        self.conn_type = ''
        self.conn_dest = ''

class schedulerObj:
    outInterfaces = []
    schedType = ''
    base_addr = ''
    def __init__(self):
        self.outInterfaces = []
        self.schedType = ''
        self.base_addr = ''

class interfaceObj:
    direction = ''
    name =  ''
    conn = ''
    tdest = ''
    def __init__(self):
        self.direction = ''
        self.name =  ''
        self.conn = ''
        self.tdest = ''

class portObj:
    kernelName = ''
    kernelInterface = ''
    def __init__(self):
        self.kernelName = ''
        self.kernelInterface = interfaceObj()

class kernelObj:
   interface = []
   num=''
   def __init__(self):
        self.clk = []
        self.resetn = []
        self.interface = []
        self.start = ''

class IPType:
    name = ''
    kernel = []
    kernType = ''
    version = ''
    start = ''
    clk = []
    resetn = []
    def __init__(self):
        self.name = ''
        self.kernel = []
        self.kernType = ''
        self.version = ''
        self.start = ''
        self.clk = []
        self.resetn = []

def readFPGAFile(localFPGAFile, sourceMAC):
    listIP = []
    schedulerList = []
    packetFormatterList = []
    numExtra = 0
    #global sourceMAC
    import xml.etree.ElementTree as ET
    tree = ET.parse(localFPGAFile)
    FPGA = tree.getroot()

    for IP in FPGA:
        print IP.tag
        if(IP.tag == 'scheduler'):
            #numSched = numSched + 1
            scheduler = schedulerObj()
            scheduler.inPort = IP.find('in').text.replace(" ","")
            scheduler.schedType = IP.find('type').text.replace(" ","")
            scheduler.base_addr = IP.find('addr').text.replace(" ","")
            outArray = IP.findall('out')
            index = 0
            for output in outArray:
                interface = interfaceObj()
                interface.conn = connectionObj()
                indexStr = "%02d"%index
                interface.direction = 'out'
                interface.name = 'M' + indexStr + '_AXIS'
                interface.conn.conn_type = output.find('type').text.replace(" ","")
                interface.conn.conn_dest = output.find('dest').text.replace(" ","")
                scheduler.outInterfaces.append(interface)
                index = index + 1

            schedulerList.append(scheduler)



        if(IP.tag == 'extra_input_switch'):
            portArray = IP.findall('port')
            for portElement in portArray:
                numExtra = numExtra + 1
                connElement = portElement.find('conn')
                packetFormatter = packetFormatterObj()
                packetFormatter.port = portObj()
                packetFormatter.port.kernelName = None
                destElement = portElement.find('dest')
                dest = destElement.text.replace(" ", "")
                packetFormatter.port.kernelInterface.tdest = dest
                MACElement = connElement.find('MAC')
                MAC = MACElement.text.replace(" ", "")
                packetFormatter.dest = MAC
                packetFormatter.source = sourceMAC
                packetFormatterList.append(packetFormatter)
        elif(IP.tag == 'IP'):
            found = 0
            nameElement = IP.find('name')
            name = nameElement.text.replace(" ", "")
            clkElement = IP.find('clk')
            clk = clkElement.text
            resetnElement = IP.find('resetn')
            resetn = resetnElement.text
            kernTypeElement = IP.find('type')
            kernType = kernTypeElement.text.replace(" ", "")
            versionElement = IP.find('version')
            version = versionElement.text.replace(" ", "")
            startElement = IP.find('start')
            start = startElement.text.replace(" ", "")
            interfaceArray = IP.findall('interface')

            numElement = IP.find('id')
            num = numElement.text.replace(" ", "")


            kernel = kernelObj()
            clkArray = clk.split()

            kernel.clk = clkArray
            resetArray = resetn.split()
            kernel.num = num

            kernel.kernType = kernType
            kernel.resetn = resetArray
            kernel.version = version

            for interfaceElement in interfaceArray:
                interface = interfaceObj()
                dirElement = interfaceElement.find('dir')
                direction = dirElement.text.replace(" ", "")

                interfaceNameElement = interfaceElement.find('name')
                interfaceName = interfaceNameElement.text.replace(" ", "")
                tdestElement = interfaceElement.find('tdest')
                tdest = None
                if tdestElement != None:
                    tdest = tdestElement.text

                connElement = interfaceElement.find('conn')
                conn = None
                if connElement != None:
                    conn = connectionObj()
                    connTypeElement = connElement.find('type')
                    connType = connTypeElement.text.replace(" ", "")
                    print 'connType is ' + connType
                    connDestElement = connElement.find('dest')
                    connDest = -1
                    if connDestElement != None:
                        connDest = connDestElement.text

                    conn.conn_type = connType
                    conn.conn_dest = connDest


                interface.direction = direction
                interface.name = interfaceName
                interface.tdest = tdest
                interface.conn = conn
                kernel.interface.append(interface)

            index = 0
            found = 0
            print 'new kernel ' + name
            for ip in listIP:
                if ip.name == name:
                    found = 1
                    break
                index = index + 1

            if found == 0:
                ipAdd = IPType()
                ipAdd.name = name
                ipAdd.clk = clkArray
                ipAdd.resetn = resetArray
                ipAdd.start = start
                print 'adding ' + name

                listIP.append(ipAdd)
                index = len(listIP) - 1
                #print len(listIP[len(listIP)-1].kernel)


            listIP[index].kernel.append(kernel)
            print str(len(listIP[index].kernel)) + ' ' + str(len(listIP))

    return numExtra, schedulerList, listIP, packetFormatterList

def initInputSwitchMasters(listIP):
    inputSwitchMasters = []
    for ip in listIP:
        index = 0
        for kernel in ip.kernel:
            for interface in kernel.interface:
                if(interface.direction == 'in'):
                    port = portObj()
                    port.kernelName = ip.name + '_inst_' + str(index)
                    port.interface = interface
                    inputSwitchMasters.append(port)
            index = index + 1

    return inputSwitchMasters

def getInputPortforLocalConnection(tdest, inputSwitchMasters):
    index = 0
    portRet = portObj()
    print 'in helper function ' + tdest + '\n'
    for port  in inputSwitchMasters:
        print 'in loop'
        print port.interface.name + ' '+ port.interface.direction + ' ' + port.interface.tdest + '\n'
        if(port.interface.direction == 'in' and int(port.interface.tdest) == int(tdest)):
            inputSwitchMasters.pop(index)
            portRet.kernelName = port.kernelName
            portRet.interface = port.interface
            print('\n\n RETURNING RETURNING \n\nreturning '+  portRet.kernelName + '/' + portRet.interface.name + '\n')
            return portRet, inputSwitchMasters

        index = index + 1


def makeFPGAIOTables(sourceMAC, schedulerList, listIP, packetFormatterList):
   

    localConnections = []
    
    inputSwitchMasters = initInputSwitchMasters(listIP)
    inputSwitchSlaves = []
    for ip in listIP:
        index = 0
        for kernel in ip.kernel:
            for interface in kernel.interface:
                print 'direction is ' + interface.direction
                if(interface.direction == 'out'):
                    port1 = portObj()
                    port1.kernelName = ip.name + '_inst_' + str(index)
                    port1.interface = interface
                    print 'connection type is ' + interface.conn.conn_type
                    if(interface.conn.conn_type == 'local'):
                        destTarget = interface.conn.conn_dest
                        print 'destTarget is ' + destTarget
                        port2, inputSwitchMasters = getInputPortforLocalConnection(destTarget, inputSwitchMasters)
                        localConn = localConnectionObj()
                        localConn.port1 = port1
                        localConn.port2 = port2
                        localConnections.append(localConn)
                    elif (interface.conn.conn_type == 'global'):
                        inputSwitchSlaves.append(port1)

                    elif (interface.conn.conn_type == 'network'):
                        print ("I'M HERE\n\n")
                        packetFormatter = packetFormatterObj()
                        packetFormatter.source = sourceMAC
                        packetFormatter.port = port1
                        packetFormatter.dest = interface.conn.conn_dest
                        packetFormatterList.append(packetFormatter)
            index = index + 1

    index = 0
    for scheduler in schedulerList:
        for outInterface in scheduler.outInterfaces:
            port1 = portObj()
            port1.kernelName = "sched_inst_" + str(index)
            port1.interface = outInterface
            if outInterface.conn.conn_type == 'local':
                destTarget = outInterface.conn.conn_dest
                print 'destTarget2 is ' + destTarget
                port2, inputSwitchMasters = getInputPortforLocalConnection(destTarget, inputSwitchMasters)
                localConn = localConnectionObj()
                localConn.port1 = port1
                localConn.port2 = port2
                print port2.kernelName
                localConnections.append(localConn)
            #elif (interface.conn.conn_type == 'network'):
            else:
                packetFormatter = packetFormatterObj()
                packetFormatter.source = sourceMAC
                packetFormatter.port = port1
                packetFormatter.dest = outInterface.conn.conn_dest
                packetFormatterList.append(packetFormatter)

    return localConnections, inputSwitchMasters, inputSwitchSlaves, packetFormatterList


def makeTCLFiles(outDir, sourceMAC, numExtra, schedulerList, listIP, localConnections, inputSwitchMasters, inputSwitchSlaves, packetFormatterList):
    #global numExtra
    #global sourceMAC
    #global outDir
    sourceMAC_int = int(sourceMAC.replace(":", ""), 16)

    #if os.path.exists(outDir):
    #   os.system("rm -r " + outDir)

    #os.system("cp -r adm-pcie-7v3-network-NoOcl-rev2 " + outDir )

    print 'ourdir is ' + outDir
    tclMain = open( outDir + '.tcl', 'w')
    curPath = os.getcwd()



    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 logic_1\n')

    #tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_one\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 src_inst\n')
    tclMain.write('set_property -dict [list CONFIG.CONST_WIDTH {48}] [get_bd_cells src_inst]\n')

    tclMain.write('set_property -dict [list CONFIG.CONST_VAL {' + str(sourceMAC_int) + '}] [get_bd_cells src_inst]\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 inputSwitch_inst\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 outputSwitch_inst\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 receiveFifo_inst\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:fireWall64:1.0 fireWall_inst\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:heartBeat:1.0 heartBeat_inst\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:fireWall64_2:1.0 fireWall2_inst\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins fireWall_inst/stream_out] [get_bd_intf_pins fireWall2_inst/stream_in]\n')
    tclMain.write('connect_bd_net [get_bd_pins fireWall_inst/match_out_V] [get_bd_pins fireWall2_inst/match_in_V]\n')
    tclMain.write('connect_bd_net [get_bd_pins fireWall_inst/match_out_V_ap_vld] [get_bd_pins fireWall2_inst/match_in_V_ap_vld]\n')
    #tclMain.write('connect_bd_net -net [get_bd_nets const_one_dout] [get_bd_pins fireWall2_inst/ap_start] [get_bd_pins const_one/dout]\n')
    #tclMain.write('connect_bd_net -net [get_bd_nets logic_1/dout] [get_bd_pins fireWall2_inst/ap_start] [get_bd_pins logic_1_enet/dout]\n')
    #tclMain.write('connect_bd_net -net [get_bd_nets src_inst_dout] [get_bd_pins fireWall_inst/eth_address_V] [get_bd_pins src_inst/dout]\n')
    tclMain.write('connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins fireWall_inst/eth_address_V]\n')
    tclMain.write('connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins heartBeat_inst/eth_address_V]\n')
    #tclMain.write('connect_bd_net -net [get_bd_nets src_inst_dout] [get_bd_pins fireWall2_inst/stream_garbage_TREADY] [get_bd_pins src_inst/dout]\n')
    tclMain.write('connect_bd_net [get_bd_pins logic_1/dout] [get_bd_pins fireWall2_inst/stream_garbage_TREADY]\n')


    tclMain.write('create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS\n')
    tclMain.write('set_property -dict [list CONFIG.TDATA_NUM_BYTES [get_property CONFIG.TDATA_NUM_BYTES [get_bd_intf_pins receiveFifo_inst/S_AXIS]] CONFIG.HAS_TLAST [get_property CONFIG.HAS_TLAST [get_bd_intf_pins receiveFifo_inst/S_AXIS]]] [get_bd_intf_ports S_AXIS]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins receiveFifo_inst/S_AXIS] [get_bd_intf_ports S_AXIS]\n')


    #tclMain.write('connect_bd_net -net [get_bd_nets logic_1_enet_dout] [get_bd_pins fireWall2_inst/stream_garbage_TREADY] [get_bd_pins logic_1_enet/dout]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins receiveFifo_inst/M_AXIS] [get_bd_intf_pins fireWall_inst/stream_in]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins fireWall2_inst/stream_out] [get_bd_intf_pins inputSwitch_inst/S00_AXIS]\n')



    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 sendFifo_inst\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins outputSwitch_inst/M00_AXIS] [get_bd_intf_pins sendFifo_inst/S_AXIS]\n')
    #tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:EthernetFifoController3_data:1.0 EthernetFifoController3_data_0\n')
    #tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:EthernetFifoController_control:1.0 EthernetFifoController_control_0\n')
    #tclMain.write('connect_bd_net -net [get_bd_nets const_one_dout] [get_bd_pins EthernetFifoController3_data_0/ap_start] [get_bd_pins const_one/dout]\n')
    #tclMain.write('connect_bd_net -net [get_bd_nets logic_1_enet_dout] [get_bd_pins EthernetFifoController3_data_0/ap_start] [get_bd_pins logic_1_enet/dout]\n')
    #tclMain.write('connect_bd_net [get_bd_pins EthernetFifoController3_data_0/start_Control_V] [get_bd_pins EthernetFifoController_control_0/ap_start]\n')
    #tclMain.write('connect_bd_intf_net [get_bd_intf_pins axi_ethernet_0/m_axis_rxd] [get_bd_intf_pins receiveFifo_inst/S_AXIS]\n')
    #tclMain.write('connect_bd_intf_net [get_bd_intf_pins sendFifo_inst/M_AXIS] [get_bd_intf_pins EthernetFifoController3_data_0/packetIn]\n')

    tclMain.write('create_bd_port -dir I -type clk CLK_DATA\n')
    tclMain.write('create_bd_port -dir I -type clk CLK_CONTROL\n')
    tclMain.write('create_bd_port -dir I -type rst ARESETN\n')

    tclMain.write('connect_bd_net [get_bd_pins fireWall_inst/ap_clk] [get_bd_ports CLK_DATA]\n')
    tclMain.write('connect_bd_net [get_bd_pins fireWall_inst/ap_rst_n] [get_bd_ports ARESETN]\n')


    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins fireWall2_inst/ap_clk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins fireWall2_inst/ap_rst_n]\n')
    
    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins heartBeat_inst/ap_clk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins heartBeat_inst/ap_rst_n]\n')


    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins inputSwitch_inst/aclk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins inputSwitch_inst/aresetn]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins outputSwitch_inst/aclk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins outputSwitch_inst/aresetn]\n')

    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins receiveFifo_inst/s_axis_aresetn]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins receiveFifo_inst/s_axis_aclk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins sendFifo_inst/s_axis_aresetn]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins sendFifo_inst/s_axis_aclk]\n')

    tclMain.write('create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins sendFifo_inst/M_AXIS] [get_bd_intf_ports M_AXIS]\n')

    #tclMain.write('source ' + outDir + '/instantiateUserIP2.tcl\n')
    #tclMain.write('source ' + outDir + '/instantiateSchedulers2.tcl\n')
    #tclMain.write('source ' + outDir + '/instantiatePacketFormatters2.tcl\n')
    #tclMain.write('source ' + outDir + '/instantiateInput2.tcl\n')
    #tclMain.write('source ' + outDir + '/inToSchedulers2.tcl\n')
    #tclMain.write('source ' + outDir + '/kernelsToInSwitch2.tcl\n')
    #tclMain.write('source ' + outDir + '/localKernelConnections2.tcl\n')
    #tclMain.write('source ' + outDir + '/packetFormatterToOut2.tcl\n')
    #tclMain.write('source ' + outDir + '/inToKernels2.tcl\n')
    #tclMain.write('source ' + outDir + '/inToOut2.tcl\n')
    #tclMain.write('source ' + outDir + '/userIPToOut2.tcl\n')



    #instUserIPFile = open(outDir + '/instantiateUserIP2.tcl', 'w')
    #instUserIPFile.write('startgroup\n')
    tclMain.write('startgroup\n')

    for ip in listIP:
        instName = ip.name + "_inst_"
        index = 0
        for kernel in ip.kernel:
            #instUserIPFile.write('create_bd_cell -type ip -vlnv xilinx.com:' + kernel.kernType + ':' + ip.name +':' +  kernel.version + ' ' + instName + str(index) + '\n')
            #instUserIPFile.write('connect_bd_net -net [get_bd_nets logic_1_enet_dout] [get_bd_pins ' + instName + str(index) + '/ap_start] [get_bd_pins logic_1_enet/dout]\n')
            #instUserIPFile.write('connect_bd_net [get_bd_nets system_clks_clk_out4] [get_bd_pins ' + instName + str(index) + '/CLK_DATA] [get_bd_pins system_clks/clk_out4]\n')
            #instUserIPFile.write('connect_bd_net -net [get_bd_nets ethernet_init_cntrl_reset_peripheral_aresetn] [get_bd_pins ' + instName + str(index) + '/ap_rst_n] [get_bd_pins ethernet_init_cntrl_reset/peripheral_aresetn]\n')
            tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:' + kernel.kernType + ':' + ip.name +':' +  kernel.version + ' ' + instName + str(index) + '\n')
            #tclMain.write('connect_bd_net -net [get_bd_nets logic_1_dout] [get_bd_pins ' + instName + str(index) + '/ap_start] [get_bd_pins logic_1/dout]\n')


            tclMain.write('connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins ' + instName + str(index) + '/ap_clk] \n')

            tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins ' + instName + str(index) + '/ap_rst_n]\n')
            tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 id_' + str(kernel.num) + '\n')
            tclMain.write('set_property -dict [list CONFIG.CONST_WIDTH {32}] [get_bd_cells id_' + str(kernel.num) + ']\n')
            tclMain.write('set_property -dict [list CONFIG.CONST_VAL {' + str(kernel.num) + '}] [get_bd_cells id_' + str(kernel.num) + ']\n')
#            tclMain.write('connect_bd_net [get_bd_pins id_' + str(kernel.num) + '/dout] [get_bd_pins ' + instName + str(index) + '/id_V]\n')
            index = index + 1
    #instUserIPFile.write('endgroup\n')
    #instUserIPFile.write('endgroup\n')
    tclMain.write('endgroup\n')
    #instUserIPFile.close()


    #instPacketFormattersFile = open(outDir + '/instantiatePacketFormatters2.tcl', 'w')
    #instPacketFormattersFile.write('startgroup\n')
    tclMain.write('startgroup\n')

    index = 0
    for packetFormatter in packetFormatterList:
        destMAC_int = int(packetFormatter.dest.replace(":", ""), 16)
#        instPacketFormattersFile.write('create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode:1.0 packetFormatter_inst_' + str(index) +'\n')
#        instPacketFormattersFile.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_' + str(index) + '\n')
#        instPacketFormattersFile.write('set_property -dict [list CONFIG.CONST_WIDTH {48}] [get_bd_cells pf_dst_inst_' + str(index) + ']\n')
#        instPacketFormattersFile.write('set_property -dict [list CONFIG.CONST_VAL {' + str(destMAC_int) + '}] [get_bd_cells pf_dst_inst_' + str(index) +']\n')
#        instPacketFormattersFile.write('connect_bd_net [get_bd_pins pf_dst_inst_' + str(index) + '/dout] [get_bd_pins packetFormatter_inst_' + str(index) + '/eth_dst_V]\n')
#        instPacketFormattersFile.write('connect_bd_net -net [get_bd_nets logic_1_enet_dout] [get_bd_pins packetFormatter_inst_' + str(index) + '/ap_start] [get_bd_pins logic_1_enet/dout]\n')
#        instPacketFormattersFile.write('connect_bd_net [get_bd_nets system_clks_clk_out4] [get_bd_pins packetFormatter_inst_' + str(index) + '/CLK_DATA] [get_bd_pins system_clks/clk_out4]\n')
#        instPacketFormattersFile.write('connect_bd_net -net [get_bd_nets ethernet_init_cntrl_reset_peripheral_aresetn] [get_bd_pins packetFormatter_inst_' + str(index) + '/ARESETN] [get_bd_pins ethernet_init_cntrl_reset/peripheral_aresetn]\n')
#        instPacketFormattersFile.write('connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins packetFormatter_inst_' + str(index) + '/eth_src_V] [get_bd_pins src_inst/dout]\n')
#
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:hls:packetFormatter_hardcode_64:1.0 packetFormatter_inst_' + str(index) +'\n')
        tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pf_dst_inst_' + str(index) + '\n')
        tclMain.write('set_property -dict [list CONFIG.CONST_WIDTH {48}] [get_bd_cells pf_dst_inst_' + str(index) + ']\n')
        tclMain.write('set_property -dict [list CONFIG.CONST_VAL {' + str(destMAC_int) + '}] [get_bd_cells pf_dst_inst_' + str(index) +']\n')
        tclMain.write('connect_bd_net [get_bd_pins pf_dst_inst_' + str(index) + '/dout] [get_bd_pins packetFormatter_inst_' + str(index) + '/eth_dst_V]\n')
#        tclMain.write('connect_bd_net -net [get_bd_nets logic_1_dout] [get_bd_pins packetFormatter_inst_' + str(index) + '/ap_start] [get_bd_pins logic_1/dout]\n')
        tclMain.write('connect_bd_net [get_bd_nets CLK_DATA_1] [get_bd_ports CLK_DATA] [get_bd_pins packetFormatter_inst_' + str(index) + '/ap_clk]\n')
        tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins packetFormatter_inst_' + str(index) + '/ap_rst_n] \n')
        tclMain.write('connect_bd_net [get_bd_pins src_inst/dout] [get_bd_pins packetFormatter_inst_' + str(index) + '/eth_src_V] [get_bd_pins src_inst/dout]\n')
        index = index + 1

    #instPacketFormattersFile.write('endgroup\n')
    #instPacketFormattersFile.write('startgroup\n')
    #instPacketFormattersFile.write('set_property -dict [list CONFIG.NUM_SI {' + str(len(packetFormatterList)) + '}] [get_bd_cells outputSwitch_inst]\n')
    #instPacketFormattersFile.write('set_property -dict [list CONFIG.HAS_TLAST.VALUE_SRC USER CONFIG.TDATA_NUM_BYTES.VALUE_SRC USER] [get_bd_cells outputSwitch_inst]\nset_property -dict [list CONFIG.TDATA_NUM_BYTES {4} CONFIG.HAS_TLAST {1}] [get_bd_cells outputSwitch_inst]\nset_property -dict [list CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1}] [get_bd_cells outputSwitch_inst]\nendgroup\n')

    tclMain.write('endgroup\n')
    tclMain.write('startgroup\n')
    tclMain.write('set_property -dict [list CONFIG.NUM_SI {' + str(len(packetFormatterList) + 1) + '}] [get_bd_cells outputSwitch_inst]\n')
    tclMain.write('set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1}] [get_bd_cells outputSwitch_inst]\nset_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1}] [get_bd_cells outputSwitch_inst]\nset_property -dict [list CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ON_TLAST {1}] [get_bd_cells outputSwitch_inst]\nendgroup\n')


    #instInputFile = open(outDir + '/instantiateInput2.tcl', 'w')
    #instInputFile.write('startgroup\n')
    print "NUM INPUT SWITCH MASTERS"
    print (str(len(inputSwitchMasters)))
    print (numExtra)
    print (str(len(schedulerList)))
    #instInputFile.write('set_property -dict [list CONFIG.NUM_SI {' + str(len(inputSwitchSlaves) + 1) + '} CONFIG.NUM_MI {' + str(len(inputSwitchMasters) + numExtra + numSched) + '} CONFIG.DECODER_REG {1}] [get_bd_cells inputSwitch_inst]\nset_property -dict [list CONFIG.HAS_TLAST.VALUE_SRC USER CONFIG.TDATA_NUM_BYTES.VALUE_SRC USER] [get_bd_cells inputSwitch_inst]\nset_property -dict [list CONFIG.TDATA_NUM_BYTES {4} CONFIG.HAS_TLAST {1}] [get_bd_cells inputSwitch_inst]\nset_property -dict [list ')
    tclMain.write('set_property -dict [list CONFIG.NUM_SI {' + str(len(inputSwitchSlaves) + 1) + '} CONFIG.NUM_MI {' + str(len(inputSwitchMasters) + numExtra + len(schedulerList)) + '} CONFIG.DECODER_REG {1}] [get_bd_cells inputSwitch_inst]\nset_property -dict [list CONFIG.HAS_TLAST.VALUE_SRC USER CONFIG.TDATA_NUM_BYTES.VALUE_SRC USER] [get_bd_cells inputSwitch_inst]\nset_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1}] [get_bd_cells inputSwitch_inst]\nset_property -dict [list ')




    index = 0 
    for inputSwitchMaster in inputSwitchMasters:
        dest = inputSwitchMaster.interface.tdest.replace(" ", "")
        indexStr = "%02d"%index
        #instInputFile.write('CONFIG.M' + indexStr + '_AXIS_BASETDEST {'+ format(int(dest), '#010x') + '} CONFIG.M' + indexStr + '_AXIS_HIGHTDEST {' + format(int(dest), '#010x') + '} ')
        tclMain.write('CONFIG.M' + indexStr + '_AXIS_BASETDEST {'+ format(int(dest), '#010x') + '} CONFIG.M' + indexStr + '_AXIS_HIGHTDEST {' + format(int(dest), '#010x') + '} ')
        index = index + 1


    for packetFormatter in packetFormatterList:
        if packetFormatter.port.kernelName == None:
            print 'BLAH BLAH'
            indexStr = "%02d"%index
            dest = packetFormatter.port.kernelInterface.tdest.replace(" ","")
            tclMain.write('CONFIG.M' + indexStr + '_AXIS_BASETDEST {'+ format(int(dest), '#010x') + '} CONFIG.M' + indexStr + '_AXIS_HIGHTDEST {' + format(int(dest), '#010x') + '} ')
            index = index + 1
    for scheduler in schedulerList:
        indexStr = "%02d"%index
        dest = scheduler.inPort.replace(" ", "")
        tclMain.write('CONFIG.M' + indexStr + '_AXIS_BASETDEST {'+ format(int(dest), '#010x') + '} CONFIG.M' + indexStr + '_AXIS_HIGHTDEST {' + format(int(dest), '#010x') + '} ')
        index = index + 1

    tclMain.write('] [get_bd_cells inputSwitch_inst]\nset_property -dict [list CONFIG.TDATA_NUM_BYTES.VALUE_SRC USER CONFIG.HAS_TLAST.VALUE_SRC USER] [get_bd_cells receiveFifo_inst]\nset_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1}] [get_bd_cells receiveFifo_inst]\nset_property -dict [list CONFIG.FIFO_DEPTH {32768}] [get_bd_cells receiveFifo_inst]\nset_property -dict [list CONFIG.TDATA_NUM_BYTES {8}   CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1} ] [get_bd_cells receiveFifo_inst]\nset_property -dict [list CONFIG.FIFO_DEPTH {32768} CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1}] [get_bd_cells sendFifo_inst]\n')



    #tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_0\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0\n')
    tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0\n')
    tclMain.write('set_property -dict [list CONFIG.DATA_WIDTH {64} CONFIG.SINGLE_PORT_BRAM {1} CONFIG.ECC_TYPE {0}] [get_bd_cells axi_bram_ctrl_0]\n')
    
    tclMain.write('startgroup\n')
    tclMain.write('create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI\n')
    tclMain.write('set_property -dict [list CONFIG.DATA_WIDTH [get_property CONFIG.DATA_WIDTH [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.ADDR_WIDTH [get_property CONFIG.ADDR_WIDTH [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.HAS_QOS [get_property CONFIG.HAS_QOS [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.HAS_REGION [get_property CONFIG.HAS_REGION [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.NUM_READ_OUTSTANDING [get_property CONFIG.NUM_READ_OUTSTANDING [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]] CONFIG.NUM_WRITE_OUTSTANDING [get_property CONFIG.NUM_WRITE_OUTSTANDING [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]]] [get_bd_intf_ports S_AXI]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_ports S_AXI]\n')
    tclMain.write('endgroup\n')
    
    tclMain.write('connect_bd_net -net [get_bd_nets CLK_CONTROL_1] [get_bd_ports CLK_CONTROL] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk]\n')
    tclMain.write('connect_bd_net -net [get_bd_nets ARESETN_1] [get_bd_ports ARESETN] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn]\n')
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA]\n')



    #instSchedulerFile = open(outDir + '/instantiateSchedulers2.tcl', 'w')
    index = 0
    for scheduler in schedulerList:
        if scheduler.schedType == 'anycast':
            numout = len(scheduler.outInterfaces) + int(scheduler.base_addr) - 1
            print "MAKING SCHEDULER"
            tclMain.write('create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 sched_inst_' + str(index) +'\n')
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
            tclMain.write('set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {' + str(len(scheduler.outInterfaces)) +'} CONFIG.DECODER_REG {1}] [get_bd_cells sched_inst_' + str(index) + ']\n')

    for localConnection in localConnections:
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + localConnection.port1.kernelName + '/' + localConnection.port1.interface.name + '] ' + '[get_bd_intf_pins ' + localConnection.port2.kernelName + '/' + localConnection.port2.interface.name + ']\n')


    index = 1
    for inputSwitchSlave in inputSwitchSlaves:
        indexStr = "%02d"%index
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + inputSwitchSlave.kernelName + '/' + inputSwitchSlave.interface.name + '] [get_bd_intf_pins inputSwitch_inst/S' + indexStr + '_AXIS]\n')
        index = index + 1

    index = 0
    for inputSwitchMaster in inputSwitchMasters:
        indexStr = "%02d"%index
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins inputSwitch_inst/M' + indexStr + '_AXIS] [get_bd_intf_pins ' + inputSwitchMaster.kernelName + '/' + inputSwitchMaster.interface.name + ']\n')

        index = index + 1


    index2=0
    for packetFormatter in packetFormatterList:
        if packetFormatter.port.kernelName == None:
            indexStr = "%02d"%index
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




    for packetFormatter in packetFormatterList:
        if packetFormatter.port.kernelName != None:
            indexStr = "%02d"%index
            tclMain.write('connect_bd_intf_net [get_bd_intf_pins ' + packetFormatter.port.kernelName + '/' + packetFormatter.port.interface.name + '] [get_bd_intf_pins packetFormatter_inst_' + str(index2) + '/packetIn]\n')
            index = index + 1
            index2 = index2 + 1


    index = 0 
    for packetFormatter in packetFormatterList:
        indexStr = "%02d"%index
        tclMain.write('connect_bd_intf_net [get_bd_intf_pins packetFormatter_inst_' + str(index) + '/packetOut] [get_bd_intf_pins outputSwitch_inst/S' + indexStr + '_AXIS]\n')
        index = index + 1

    indexStr = "%02d"%index
    tclMain.write('connect_bd_intf_net [get_bd_intf_pins heartBeat_inst/stream_out] [get_bd_intf_pins outputSwitch_inst/S' + indexStr + '_AXIS]\n')






def makePacketFormatterConfigSW(sourceMAC):
    #global sourceMAC
    packetFormatterSWFile = open('adm-pcie-7v3.sdk/packetFormatterConfig/src/helloworld.c', 'w')
    packetFormatterSWFile.write('\n\n#include <stdio.h>\n#include \"platform.h\"\n#include \"xstatus.h\"\n\n\n')
    index = 0
    pfAddr = 0x44A40000
    pfDest = 0x44A40010
    pfSrc = 0x44A4001C

    for packetFormatter in packetFormatterList:
        packetFormatterSWFile.write('volatile u32 * fireWall_addr = (u32 *)  0x44A20000\n')
        hexStrAddr = "0x%0.8X"%pfAddr
        packetFormatterSWFile.write('volatile u32 * packetFormatter_' + str(index) + '_addr = (u32 *) ' + hexStrAddr + ';\n')
        hexStrDest = "0x%0.8X"%pfDest
        packetFormatterSWFile.write('volatile u32 * packetFormatter_' + str(index) + '_dst = (u32 *) ' + hexStrDest + ';\n')
        hexStrSrc = "0x%0.8X"%pfSrc
        packetFormatterSWFile.write('volatile u32 * packetFormatter_' + str(index) + '_src = (u32 *) ' + hexStrSrc + ';\n')
        pfAddr = pfAddr + 0x10000
        pfDest = pfDest + 0x10000
        pfSrc = pfSrc + 0x10000

        index = index + 1

    packetFormatterSWFile.write('\n\nint main(){\n\n')

    index = 0
    for packetFormatter in packetFormatterList:
        hexArray = packetFormatter.source.split(":")
        strPut = hexArray[2] + hexArray[3] + hexArray[4] + hexArray[5]
        strPut = strPut.replace(" ", "")
        packetFormatterSWFile.write('\tpacketFormatter_' + str(index) + '_src[0] =  0x' +  strPut +  ';\n')
        strPut = '0000' + hexArray[0] + hexArray[1]
        strPut = strPut.replace(" ", "")
        packetFormatterSWFile.write('\tpacketFormatter_' + str(index) + '_src[0] =  0x' +  strPut +  ';\n')

        hexArray = packetFormatter.dest.split(":")
        strPut = hexArray[2] + hexArray[3] + hexArray[4] + hexArray[5]
        strPut = strPut.replace(" ", "")
        packetFormatterSWFile.write('\tpacketFormatter_' + str(index) + '_dst[0] =  0x' +  strPut +  ';\n')
        strPut = '0000' + hexArray[0] + hexArray[1]
        strPut = strPut.replace(" ", "")
        packetFormatterSWFile.write('\tpacketFormatter_' + str(index) + '_dst[0] =  0x' +  strPut +  ';\n')
        packetFormatterSWFile.write('\tpacketFormatter_' + str(index) + '_addr[0] =  0x1;\n\n')
        index = index+1

    hexArray = sourceMAC.split(":")
    strPut = hexArray[2] + hexArray[3] + hexArray[4] + hexArray[5]
    strPut = strPut.replace(" ", "")
    packetFormatterSWFile.write('\tfireWall_addr[0] =  0x' + strPut + ';\n\n')
    strPut = '0000' + hexArray[0] + hexArray[1]
    strPut = strPut.replace(" ", "")
    packetFormatterSWFile.write('\tfireWall_addr[1] =  0x' + strPut + ';\n\n')
    packetFormatterSWFile.write('}')


def main():

    args = sys.argv
    outDir=args[3]
    sourceMAC=args[2]
    numExtra, schedulerList, listIP, packetFormatterList = readFPGAFile(args[1], sourceMAC)
    localConnections, inputSwitchMasters, inputSwitchSlaves, packetFormatterList = makeFPGAIOTables(sourceMAC, schedulerList, listIP, packetFormatterList)
    makeTCLFiles(outDir, sourceMAC, numExtra, schedulerList, listIP, localConnections, inputSwitchMasters, inputSwitchSlaves, packetFormatterList)


def start(outDir_in, sourceMAC_in, FPGA_file):

    print "IN " + outDir_in
    outDir = outDir_in
    sourceMAC = sourceMAC_in
    numExtra, schedulerList, listIP, packetFormatterList = readFPGAFile(FPGA_file, sourceMAC)
    localConnections, inputSwitchMasters, inputSwitchSlaves, packetFormatterList = makeFPGAIOTables(sourceMAC, schedulerList, listIP, packetFormatterList)
    makeTCLFiles(outDir, sourceMAC, numExtra, schedulerList, listIP, localConnections, inputSwitchMasters, inputSwitchSlaves, packetFormatterList)

if __name__== "__main__":
    main()


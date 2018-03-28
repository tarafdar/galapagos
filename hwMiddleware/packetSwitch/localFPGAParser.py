#!/usr/bin/python

import sys
import subprocess
import os

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
    debug = False
    def __init__(self):
        self.direction = ''
        self.name =  ''
        self.conn = ''
        self.tdest = ''
        self.debug = False

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
    clk = '' 
    resetn = ''
    def __init__(self):
        self.name = ''
        self.kernel = []
        self.kernType = ''
        self.version = ''
        self.start = ''
        self.clk = ''
        self.resetn = ''

def readFPGAFile(localFPGAFile, sourceMAC, numFPGAs, plus16, index, packetFormatterList):
    listIP = []
    schedulerList = []
    #packetFormatterList = []
    numExtra = 0
    numDebug = 0
    import xml.etree.ElementTree as ET
    tree = ET.parse(localFPGAFile)
    FPGA = tree.getroot()





    for IP in FPGA:
        if(IP.tag == 'scheduler'):
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
            print "in extra input switch "
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
                if plus16:
                    fpgaIndex = int(dest)/16
                    print "fpgaIndex is " + str(fpgaIndex) + " " + str(dest)
                    found = False
                    for packetFormatter in packetFormatterList[fpgaIndex]:
                        if packetFormatter.dest == dest:
                            found = True
                            break
                    if not found:
                        packetFormatterList[fpgaIndex].append(packetFormatter)
                else:
                    packetFormatterList.append(packetFormatter)
                print "in extra_input_switch portarray loop"
                #print packetFormatterList[0]
                #print packetFormatterList[0][0]
                #print packetFormatterList
        elif(IP.tag == 'IP'):
            found = 0
            nameElement = IP.find('name')
            name = nameElement.text.replace(" ", "")
            clkElement = IP.find('clk')
            clk = clkElement.text.replace(" ", "")
            resetnElement = IP.find('resetn')
            resetn = resetnElement.text.replace(" ", "")
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
            #clkArray = clk.split()
            
            #kernel.clk = clkArray
            #resetArray = resetn.split()
            kernel.num = num

            kernel.kernType = kernType
            #kernel.resetn = resetArray
            kernel.version = version


            kernel.clk = clk
            kernel.resetn = resetn
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

                debugElement = interfaceElement.find('debug')
                debug = False 
                if (debugElement != None and numDebug<16):
                    debug = True
                    numDebug = numDebug + 1

                connElement = interfaceElement.find('conn')
                conn = None
                if connElement != None:
                    conn = connectionObj()
                    connTypeElement = connElement.find('type')
                    connType = connTypeElement.text.replace(" ", "")
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
                interface.debug = debug
                kernel.interface.append(interface)

            index = 0
            found = 0
            for ip in listIP:
                if ip.name == name:
                    found = 1
                    break
                index = index + 1

            if found == 0:
                ipAdd = IPType()
                ipAdd.name = name
                ipAdd.clk = clk  
                ipAdd.resetn = resetn
                ipAdd.start = start

                listIP.append(ipAdd)
                index = len(listIP) - 1


            listIP[index].kernel.append(kernel)

    return numExtra, schedulerList, listIP, packetFormatterList, numDebug

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
    for port  in inputSwitchMasters:
        if(port.interface.direction == 'in' and int(port.interface.tdest) == int(tdest)):
            inputSwitchMasters.pop(index)
            portRet.kernelName = port.kernelName
            portRet.interface = port.interface
            return portRet, inputSwitchMasters

        index = index + 1


def makeFPGAIOTables(sourceMAC, schedulerList, listIP, packetFormatterList, plus16):
   

    localConnections = []
    
    inputSwitchMasters = initInputSwitchMasters(listIP)
    inputSwitchSlaves = []

    numDebug = 0
    for ip in listIP:
        index = 0
        for kernel in ip.kernel:
            for interface in kernel.interface:
                if(interface.direction == 'out'):
                    port1 = portObj()
                    port1.kernelName = ip.name + '_inst_' + str(index)
                    port1.interface = interface
                    if(interface.conn.conn_type == 'local'):
                        destTarget = interface.conn.conn_dest
                        port2, inputSwitchMasters = getInputPortforLocalConnection(destTarget, inputSwitchMasters)
                        localConn = localConnectionObj()
                        localConn.port1 = port1
                        localConn.port2 = port2
                        localConnections.append(localConn)
                    elif (interface.conn.conn_type == 'global'):
                        inputSwitchSlaves.append(port1)

                    elif (interface.conn.conn_type == 'network'):
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
                port2, inputSwitchMasters = getInputPortforLocalConnection(destTarget, inputSwitchMasters)
                localConn = localConnectionObj()
                localConn.port1 = port1
                localConn.port2 = port2
                localConnections.append(localConn)
            else:
                packetFormatter = packetFormatterObj()
                packetFormatter.source = sourceMAC
                packetFormatter.port = port1
                packetFormatter.dest = outInterface.conn.conn_dest
                packetFormatterList.append(packetFormatter)

    return localConnections, inputSwitchMasters, inputSwitchSlaves, packetFormatterList


def start(outDir_in, sourceMAC_in, FPGA_file, board_name, index, projectName, networkBridges, numFPGAs, plus16, packetFormatterList):

    outDir = outDir_in
    sourceMAC = sourceMAC_in
    numExtra, schedulerList, listIP, packetFormatterList, numDebug = readFPGAFile(FPGA_file, sourceMAC, numFPGAs, plus16, index, packetFormatterList)
    localConnections, inputSwitchMasters, inputSwitchSlaves, packetFormatterList = makeFPGAIOTables(sourceMAC, schedulerList, listIP, packetFormatterList, plus16)
    return numExtra, schedulerList, listIP, packetFormatterList, numDebug, localConnections, inputSwitchMasters, inputSwitchSlaves
    #sys.path.append('hwMiddleware/packetSwitch/boards/' + board_name)
    #import tclFileGenerator
    #print packetFormatterList
#    tclFileGenerator.makeTCLFiles(outDir, sourceMAC, numExtra, schedulerList, listIP, localConnections, inputSwitchMasters, inputSwitchSlaves, packetFormatterList, str(index), projectName, networkBridges, numFPGAs, plus16, index)



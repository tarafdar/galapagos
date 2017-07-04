import copy
import sys
import subprocess
import os
import shutil

sys.path.append('hwMiddleware/packetSwitch')
import localFPGAParser_10g

projectName = ''
allKernels = []
allFPGAs = []
allSchedulers = []
schedNum = 0
allOutputInterfaces = []
allInputInterfaces = []
allFPGAsFinal = []
allInterfaces = []
macAddresses = []

class connectionObj:
    conn_type = ''
    conn_dest = ''
    def __init__(self):
        self.conn_type = ''
        self.conn_dest = ''

class interfaceObj:
    fpga = ''
    kernelNum = ''
    direction = ''
    name = ''
    conn = ''
    tdest = ''
    conn_dir_tdest = ''
    scheduler_id = ''
    dir_network = ''
    conn_type = ''
    conn_dest = ''
    def __init__(self):
        self.scheduler_id = ''
        self.direction = ''
        self.name =  ''
        self.conn = ''
        self.tdest = ''
        self.conn_dir_tdest = ''
        self.fpga = ''
        self.dir_network = ''
class kernelObj:
    fpga = ''
    num = ''
    interfaces = []
    kernType = ''
    kernVersion = ''
    properties = []
    name = ''
    def __init__(self):
        self.num=''
        self.interfaces = []
        self.fpga = ''
        self.kernType = 'HLS'
        self.kernVersion = 1.0
        self.properties = []
        self.name = ''
class packetFormatterObj:
    port = ''
    dest = ''
    def __init__(self):
        self.port = ''
        self.dest = ''


class fpgaObj:
    globalIn = []
    globalOut = []
    globalOut2 = []
    kernelToIn = []
    inToKernels = []
    kernelToOut = []
    inToOut = []
    num = ''
    kernels = []
    MAC_addr = ''
    schedulers = []
    def __init__(self):
        self.num = ''
        self.MAC_addr = ''
        self.kernels = []
        self.schedulers = []
        self.passThroughInput = []
        self.kernelToIn = []
        self.kernelToOut = []
        self.inToKernel = []
        self.globalIn = []
        self.globalOut = []
        self.globalOut2 = []

class schedulerObj:
    baseAddr = ''
    inPort = ''
    sched_id = ''
    sched_type = ''
    kernelNum = []
    tdest_out = []
    outInterfaces = []
    conn_type = ''
    conn_dest = ''
    def __init__(self):
        self.sched_id = ''
        self.sched_type = ''
        self.kernelNum = []
        self.outInterfaces = []
        self.tdest_out = []

def readKernelsFile(logicalKernelsFile):
    global allKernels
    global allSchedulers
    global schedNum
    import xml.etree.ElementTree as ET
    tree = ET.parse(logicalKernelsFile)
    logicalCluster = tree.getroot()

    for kernelElement in logicalCluster:
        kernelName = kernelElement.text.replace(" ", "")
        kernelName = kernelName.replace("\n", "")
        num = kernelElement.find('num').text.replace(" ", "")
        repElement = kernelElement.find('rep')
        if(repElement != None):
            rep = int(repElement.text.replace(" ", ""))

            for i in range(1,rep +1):
                kernel = kernelObj()
                kernel.name = kernelName
                kernel.num = int(num) + i - 1
                interfaceElementArray = kernelElement.findall('interface')
                for interfaceElement in interfaceElementArray:
                    interface = interfaceObj()
                    interface.direction = interfaceElement.find('direction').text.replace(" ", "")
                    interface.name = interfaceElement.find('name').text.replace(" ", "")
                    #tdestElement = interfaceElement.find('tdest')
                    interface.tdest = None
                    #if tdestElement != None:
                    #    interface.tdest = int(tdestElement.text.replace(" ", "")) + i - 1
                    interface.tdest = kernel.num

                    interface.conn_dir_tdest = None
                    connDirTdestElement = interfaceElement.find('conn_dir_tdest')
                    if connDirTdestElement != None:
                        interface.conn_dir_tdest = int(connDirTdestElement.text.replace(" ", "")) + i
                    dirNetworkElement = interfaceElement.find('dir_network')
                    interface.dir_network = None
                    if dirNetworkElement != None:
                        interface.dir_network = dirNetworkElement.text.replace(" ", "")


                    schedulerElement = interfaceElement.find('scheduler')
                    interface.scheduler_id = None
                    print interface.name
                    print interface.tdest
                    if schedulerElement != None and i == 1:
                        scheduler = schedulerObj()
                        for j in range(1, rep + 1):
                            scheduler.tdest_out.append(int(interface.tdest) + j - 1)
                            print 'appending ' + str(int(interface.tdest) + j - 1)
                            scheduler.kernelNum.append(int(num) + j - 1)
                        #scheduler.baseAddr=int(interface.tdest)
                        scheduler.baseAddr=kernel.num

                        scheduler.inPort = interfaceElement.find('scheduler_in').text.replace(" ","")
                        scheduler.sched_id = schedNum
                        scheduler.sched_type = schedulerElement.text.replace(" ", "")
                        allSchedulers.append(scheduler)
                        schedNum = schedNum + 1

                    if schedulerElement != None:
                        print 'scheduler id is ' + str(schedNum)
                        interface.scheduler_id = schedNum - 1
                    interface.kernelNum = kernel.num
                    kernel.interfaces.append(interface)

                #print kernel.num
                allKernels.append(kernel)




def readFPGAMap(mapFile, macFile):
    global allKernels
    global allSchedulers
    global schedNum
    global allFPGAs
    global macAddresses

    import xml.etree.ElementTree as ET
    tree = ET.parse(mapFile)
    mapCluster = tree.getroot()
    fpgaIndex = 0

    with open(macFile) as f:
        macAddresses = f.readlines()

    macAddresses = [x.strip() for x in macAddresses]



    for fpgaElement in mapCluster:

        kernelElementArray = fpgaElement.findall('kernel')
        fpga = fpgaObj()
        #fpga.MAC_addr = fpgaElement.find('MAC').text.replace(" ", "")
        fpga.MAC_addr = macAddresses[fpgaIndex]
        fpga.num = fpgaIndex
        for kernelElement in kernelElementArray:
            num = kernelElement.text.replace(" ", "")
            for kernel in allKernels:
                #print 'num is ' + str(num) + ' kernel.num is ' + str(kernel.num)
                if int(num) == int(kernel.num):
                    #print 'match'
                    kernel.fpga = fpgaIndex
                    fpga.kernels.append(kernel)
        allFPGAs.append(fpga)
        fpgaIndex = fpgaIndex + 1
        

    for scheduler in allSchedulers:
        fpgaArray = []
        #print 'new scheduler '
        #print len(scheduler.kernelNum)
        for kernelNum in scheduler.kernelNum:
            for kernel in allKernels:
                #print 'scheduler ' + str(kernelNum) + ' kernel ' + str(kernel.num)
                if int(kernelNum) == int(kernel.num):
                    #print 'scheduler ' + str(kernelNum) + ' kernel ' + str(kernel.num) + ' fpga ' + str(kernel.fpga)
                    fpgaArray.append(kernel.fpga)

        #print fpgaArray

        scheduler.fpga = max(set(fpgaArray), key=fpgaArray.count)
        #print 'scheduler will be on fpga ' + str(scheduler.fpga)
        for fpga in allFPGAs:
            if(int(scheduler.fpga) == int(fpga.num)):
                fpga.schedulers.append(scheduler)

def createGlobalInterfaceMap():
    global allFPGAs
    global allInterfaces
    global allInputInterfaces
    global allOutputInterfaces

    for fpga in allFPGAs:
        for kernel in fpga.kernels:
            for interface in kernel.interfaces:
                interface.fpga = fpga.num
                allInterfaces.append(interface)
                if interface.direction == 'in':
                    allInputInterfaces.append(interface)
                    fpga.globalIn.append(interface)
                elif interface.direction == 'out':
                    allOutputInterfaces.append(interface)
                    fpga.globalOut.append(interface)


    fpgaIndex = 0
    for fpga in allFPGAs:
        outIndex = 0
        for outInterface in fpga.globalOut:
            #outInterface.conn = connectionObj()
            #outNew = copy.deepcopy(outInterface)
            if outInterface.conn_dir_tdest != None:
                #print 'directly connected somewhere ' + str(outInterface.conn_dir_tdest)
                inputIndex = 0
                for inputInterface in allInputInterfaces:
                    #found interface that this is directly connected to
                    if(str(inputInterface.tdest) == str(outInterface.conn_dir_tdest)):
                        if(int(inputInterface.fpga) ==  int(outInterface.fpga)):
                            #print 'local'
                            outInterface.conn_type = 'local'
                            outInterface.conn_dest = inputInterface.tdest
                            #fpga.localOut.append(outNew)
                            #allInputInterfaces.pop(inputIndex)
                        else:
                            #print 'network'
                            outInterface.conn_type = 'network'
                            #print 'network egress is on ' + str(outInterface.fpga)
                            for fpga2 in allFPGAs:
                                if int(fpga2.num) == int(inputInterface.fpga):
                                    outInterface.conn_dest = fpga2.MAC_addr
                             #       print 'MAC addr ' + str(outInterface.kernelNum) + ' ' + outInterface.name + ' ' + fpga2.MAC_addr+ outInterface.conn_dest
                    inputIndex = inputIndex + 1
            elif outInterface.dir_network != None:
                #print 'network2'
                outInterface.conn_type = 'network'
                outInterface.conn_dest = outInterface.dir_network

            else:
                #print 'global'
                outInterface.conn_type = 'global'
            #allFPGAs[fpgaIndex].globalOut2.append(outNew)
            #allFPGAs[fpgaIndex].globalOut[outIndex] = copy.deepcopy(outNew)
            outIndex = outIndex + 1
        fpgaIndex = fpgaIndex+1
def placeSchedulers():
    global allInputInterfaces
    global allSchedulers
    global allFPGAs
    for inputInterface in allInputInterfaces:
        if(inputInterface.scheduler_id != None):
            schedulerInterface = interfaceObj()
            schedId = inputInterface.scheduler_id
            for scheduler in allSchedulers:
                if schedId == scheduler.sched_id:
                    if(scheduler.fpga == inputInterface.fpga):
                        schedulerInterface.conn_type = 'local'
                        schedulerInterface.conn_dest = inputInterface.tdest
                    else:
                        schedulerInterface.conn_type = 'network'
                        for fpga in allFPGAs:
                            if inputInterface.fpga == fpga.num:
                                schedulerInterface.conn_dest = fpga.MAC_addr

                    scheduler.outInterfaces.append(schedulerInterface)


def redoIOMappings():
    global allInputInterfaces
    global allFPGAs

    for fpga in allFPGAs:
        fpga.globalIn = []
        for inputInterface in allInputInterfaces:
           if int(inputInterface.fpga) == int(fpga.num):
                fpga.globalIn.append(inputInterface)

        for kernel in fpga.kernels:
            kernel.interfaces = []

    for fpga in allFPGAs:
        for interface in fpga.globalIn:
            interface.dir_network = fpga.MAC_addr
            fpga.inToKernels.append(interface)


            for otherFPGA in allFPGAs:
                if otherFPGA.num != fpga.num:
                    otherFPGA.inToOut.append(interface)

#    for fpga in allFPGAs:
#        for kernel in fpga.kernels:
#            print '1) kernel name ' + kernel.name + ' kernel num ' + str(kernel.num)
#
    for interface in allInputInterfaces:
        for fpga in allFPGAs:
            for kernel in fpga.kernels:
                if(interface.kernelNum == kernel.num):
                   # print 'adding ' + str(kernel.num) + ' interface ' + interface.name
                    kernel.interfaces.append(interface)



    for fpga in allFPGAs:

        for interface in fpga.globalOut:
            #print interface.name
            index = 0
            for kernel in fpga.kernels:
                #print '2) kernel name ' + kernel.name + ' kernel num ' + str(kernel.num)
                if(interface.kernelNum == kernel.num):
                 #   print 'adding2 ' + str(kernel.num) + ' interface ' + interface.name + ' index '  + str(index) + ' conn ' + str(interface.conn_dest)
                    kernel.interfaces.append(interface)
                index = index + 1


    for fpga in allFPGAs:
        for kernel in fpga.kernels:
            print 'kernel name ' + kernel.name + ' kernel num '+ str(kernel.num) + ' number of interfaces ' + str(len(kernel.interfaces))
            for interface in kernel.interfaces:
                print 'interface name ' + interface.name
                print 'interface direction ' + interface.direction
                if interface.direction == 'out':
                    print 'interface type ' + interface.conn_type
                    print 'interface dest ' + str(interface.conn_dest)
                else:
                    print 'interface tdest ' + str(interface.tdest)
        for scheduler in fpga.schedulers:
            print 'scheduler type ' + scheduler.sched_type
            print 'scheduler id ' + str(scheduler.sched_id)
            print 'scheduler in ' + str(scheduler.inPort)
            for interface in scheduler.outInterfaces:
                print 'interface type ' + interface.conn_type
                print 'interface dest ' + str(interface.conn_dest)



def createLocalFPGA(projectName):

    global macAddresses
    from lxml import etree

    index = 0
    if os.path.exists('projects/' + projectName):
        shutil.rmtree('projects/' + projectName)
    globalConfigFile = open('tclScripts/createCluster.tcl', 'w')

    for fpga in allFPGAs:
        fpgaElement = etree.Element('fpga')
        for kernel in fpga.kernels:
            ipElement = etree.Element('IP')
            nameAttribute = etree.Element('name')
            nameAttribute.text = kernel.name
            ipElement.append(nameAttribute)

            clkAttribute = etree.Element('clk')
            clkAttribute.text = 'clk'
            ipElement.append(clkAttribute)

            idElement = etree.Element('id')
            idElement.text = str(kernel.num)
            ipElement.append(idElement)

            startAttribute = etree.Element('start')
            startAttribute.text = 'ap_start'
            ipElement.append(startAttribute)

            resetAttribute = etree.Element('resetn')
            resetAttribute.text = 'ap_rst_n'
            ipElement.append(resetAttribute)

            typeAttribute = etree.Element('type')
            typeAttribute.text = 'hls'
            ipElement.append(typeAttribute)

            versionAttribute = etree.Element('version')
            versionAttribute.text = '1.0'
            ipElement.append(versionAttribute)

            for interface in kernel.interfaces:
                interfaceAttribute = etree.Element('interface')

                interfaceDirection = etree.Element('dir')
                interfaceDirection.text = interface.direction
                interfaceAttribute.append(interfaceDirection)

                interfaceName = etree.Element('name')
                interfaceName.text = interface.name
                interfaceAttribute.append(interfaceName)


                if(interface.direction == 'out'):
                    interfaceConn = etree.Element('conn')
                    interfaceConnType = etree.Element( 'type')
                    interfaceConnType.text = interface.conn_type
                    interfaceConn.append(interfaceConnType)
                    if(interface.conn_type != 'global'):
                        interfaceConnDest = etree.Element('dest')
                        interfaceConnDest.text = str(interface.conn_dest)
                        interfaceConn.append(interfaceConnType)
                        interfaceConn.append(interfaceConnDest)
                    interfaceAttribute.append(interfaceConn)
                else:
                    tdestAttribute = etree.Element('tdest')
                    tdestAttribute.text = str(interface.tdest)
                    interfaceAttribute.append(tdestAttribute)

                ipElement.append(interfaceAttribute)
            fpgaElement.append(ipElement)
        for scheduler in fpga.schedulers:
            schedulerElement = etree.Element('scheduler')
            typeAttribute = etree.Element('type')
            typeAttribute.text = scheduler.sched_type
            schedulerElement.append(typeAttribute)
            inAttribute = etree.Element('in')
            inAttribute.text = scheduler.inPort
            schedulerElement.append(inAttribute)
            addrAttribute = etree.Element('addr')
            addrAttribute.text = str(scheduler.baseAddr)
            schedulerElement.append(addrAttribute)
            fpgaElement.append(schedulerElement)

            for outInterface in scheduler.outInterfaces:
                outAttribute = etree.Element( 'out')
                outType = etree.Element('type')
                outType.text = outInterface.conn_type
                outAttribute.append(outType)
                outDest = etree.Element('dest')
                print outInterface.conn_dest
                outDest.text = str(outInterface.conn_dest)
                outAttribute.append(outDest)
                schedulerElement.append(outAttribute)
            fpgaElement.append(schedulerElement)

        for fpga2 in allFPGAs:
            if(fpga2.num != fpga.num):
                for kernel in fpga2.kernels:
                    for interface in kernel.interfaces:
                        if(interface.direction == 'in'):
                            extraInputSwitchAttribute = etree.Element('extra_input_switch')
                            portAttribute = etree.Element('port')
                            connAttribute = etree.Element('conn')
                            typeAttribute = etree.Element('type')
                            typeAttribute.text='network'
                            MACAttribute = etree.Element('MAC')
                            MACAttribute.text=fpga2.MAC_addr
                            connAttribute.append(typeAttribute)
                            connAttribute.append(MACAttribute)
                            portAttribute.append(connAttribute)
                            destAttribute=etree.Element('dest')
                            destAttribute.text=str(interface.tdest)
                            portAttribute.append(destAttribute)
                            extraInputSwitchAttribute.append(portAttribute)

                            fpgaElement.append(extraInputSwitchAttribute)


        #print '\n\n*************************\n\n'


        dirName = 'projects/' + projectName + '/' + str(index)
        os.makedirs(dirName)
        shutil.copyfile('hwMiddleware/packetSwitch/configurationParameters.tcl', dirName + '/configurationParameters.tcl')
#        shutil.copyfile('hwMiddleware/packetSwitch/localPRCreate.tcl', dirName + '/localPRCreate.tcl')
        

        appendCmd1 = 'set fpgaNum ' + str(index) + '\n'
        appendCmd2 = 'set projName ' + projectName + '\n'
        with open(dirName + '/configurationParameters.tcl', 'r+') as f:
            content = f.read()
            f.seek(0,0)
            f.write(appendCmd1.rstrip('\r\n') + '\n' + appendCmd2.rstrip('\r\n') + '\n' + content)


        s = etree.tostring(fpgaElement, pretty_print=True)
        #print s
        fpgaLocalFile = open(dirName + '/fpga.xml', 'w')
        fpgaLocalFile.write(s)
        fpgaLocalFile.close()
        localFPGAParser_10g.start(dirName + '/' + str(index), macAddresses[index], dirName + '/fpga.xml') 
        index = index+1
        globalConfigFile.write('source ' + dirName + '/' + 'configurationParameters.tcl\n')
        globalConfigFile.write('source hwMiddleware/packetSwitch/localPRCreate.tcl\n')
    
    globalConfigFile.close()
args = sys.argv
readKernelsFile(args[1])
readFPGAMap(args[2], args[3])
createGlobalInterfaceMap()
placeSchedulers()
redoIOMappings()
createLocalFPGA(args[4])

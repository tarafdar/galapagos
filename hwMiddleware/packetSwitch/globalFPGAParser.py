import xml.etree.ElementTree as ET
import socket, struct
import getopt, sys
import os
import shutil
import tclFileGenerator

#
#class networkBridgesObj:
#    bridgeFromLocation = ''
#    bridgeToLocation = ''
#    stream_in_from = ''
#    stream_out_from = ''
#    stream_in_to = ''
#    stream_out_to = ''
#
#
#class appBridgeObj:
#    to_app = ''
#    from_app = ''
#    to_net = ''
#    from_net = ''
#    kernel = ''
#
#class controlInterfaceObj:
#    offset = 0x0
#    name = ''
#
#class constantObj:
#    name = ''
#    width = ''
#    val = ''
#
#class kernelObj:
#    name = ''
#    id_num = ''
#    clk = []
#    aresetn = []
#    ip_vendor = ''
#    ip_type = ''
#    ip_version = ''
#    id_port = 'id_V'
#    mem_interfaces = []
#    ctrl_interface = ''
#    stream_in = ''
#    stream_out = ''
#    ip_addr = ''
#    mac_addr = ''
#    constants = []
#    debug_interfaces = []
#    properties = []
#
#class nodeObj:
#    num = ''
#    board = ''
#    comm = ''
#    kernels = []
#    mac_addr = ''
#    ip_addr = ''
#    app_bridge = None
#    def __init__(self):
#        self.kernels = []
#
def getText(element):
    string = element.text.replace(" ", "")
    string = string.replace("\n", "")
    string = string.replace("\t", "")
    return string

def findAndSet(element, label, default):
    xmlElement = element.find(label)
    string = ''
    if label != None:
        string = getText(xmlElement)
    else:
        string = default
    return string


def findAllAndSet(element, label, default):
    xmlElement_array = element.findall(label)
    array = []
    if label != []:
        for xmlElement in xmlElement_array:
            array.append(getText(xmlElement))
    else:
        array = default

    return array

def findAndSetDict(element, label, keys, default):
    dict_def = {}
    xmlElement = element.find(label)
    if xmlElement != None:
        for key in keys:
            dict_def = {dict_def, {key : findAndSet(xmlElement, key, None)}}
    else:
        dict_def = default
    return dict_def


def findAllAndSetDict(element, label, keys, default):
    xmlElement_array = element.findall(label)
    dict_array = []
    if xmlElement_array != None:
        for xmlElement in xmlElement_array:
            dict_array.append(findAndSetDict(xmlElement, label, keys, default))
    else:
        dict_array = default

    return dict_array

def findInterface(element, label, int_type, keys, default):
    xmlElement_array = element.findall(label)
    dict_array = []
    if xmlElement_array != None:
        for xmlElement in xmlElement_array:
            dict_def['type'] = int_type
            print dict_def
            debugElement = xmlElement.find('debug')
            if debugElement != None:
               debug_array.append(dict_def)
            dict_array.append(dict_def)
    else:
        dict_array = default

    return dict_array, dict_array



def readKernelsFile(logicalKernelsFile):

    allKernels = []
    networkBridges = None

    #parse logical kernel xml file
    tree = ET.parse(logicalKernelsFile)
    logicalCluster = tree.getroot()


    for kernelElement in logicalCluster.findall('kernel'):
        #read kernel name
        kernelName = getText(kernelElement)

        #read kernel id
        kernel_id = findAndSet(kernelElement, 'num', None)

        #read name of clk and resetn signals, else assign default values
        clks = findAllAndSet(kernelElement, 'clk', {'ap_clk'})
        aresetns = findAllAndSet(kernelElement, 'aresetn',  {'aresetn'})

        #read name of id_port
        id_port = findAndSet(kernelElement, 'id_port', None)

        #memory interfaces
        mem_interfaces = findInterface(kernelElement, 'mem_interface', 'aximm',  {'name', 'type'}, [])

        #control interfaces
        ctrl_interfaces = findInterface(kernelElement, 'ctrl_interface', 'axi4lite',  {'name', 'type', 'offset'}, [])

        #number of repetitions
        rep_element = kernelElement.findAndSet(kernelElement, 'rep', 1)

        #constants
        constants = findAllAndSetDict(kernelElement, 'const', {'name', 'width', 'val'}, [])

        #interfaces to add to switch and debug
        stream_interfaces = findInterface(kernelElement, 'stream_interface', 'axi4s', {'name', 'type', 'direction'}, [])

        #set ip_type
        ip_lib = findAndSet(kernelElement, 'lib', 'hls')

        #set ip_version
        ip_version = findAndSet(kernelElement, 'version', '1.0')

        #set ip_vendor
        ip_vendor = findAndSet(kernelElement, 'vendor', 'xilinx.com')

        #set properties
        properties = findAllAndSet(kernelElement, 'property', [])

        id_num = int(kernel_id)
        for i in range(0, rep):
            #making kernel object

            allKernels.append({'name': kernelName,
             'clks' : clks,
             'aresetns': aresetns,
             'id_port' : id_port,
             'm_axi' : mem_interfaces,
             's_axi' : control_interface,
             's_axis' : s_axis,
             'm_axis' : m_axis,
             'id_num' : id_num,
             'ip_type' : ip_type,
             'ip_version' : ip_version,
             'ip_vendor' : ip_vendor,
             'constants' : constants,
             'debug_interfaces' : debug_interfaces,
             'properties ' : properties
             })
            #allKernels.append(kernel)
            id_num = id_num + 1



    return allKernels, networkBridges

def readNodeMap(mapFile, allKernels):

    tree = ET.parse(mapFile)
    mapCluster = tree.getroot()


    nodeIndex = 0

    allNodes = []
    #iterate through all nodes first populating the types, board names, mac addresses and ip addresses
    for nodeElement in mapCluster:
        node = {'type' : findAndSet(nodeElement, 'type', None),
                         'board' : findAndSet(nodeElement, 'board', None),
                         'comm' : findAndSet(nodeElement, 'comm', None),
                         'mac_addr' : findAndSet(nodeElement, 'mac_addr', 'ff:ff:ff:ff:ff:ff'),
                         'ip_addr' : findAndSet(nodeElement, 'ip_addr', '1.1.1.1'),
                         'app_bridge' : findAndSetDict(nodeElement, 'appBridge', {'name', 'clk', 'aresetn', 'to_app', 'from_app', 'to_net', 'from_net'}, None),
                         'kernels' : []
                         }



        kernelElementArray = nodeElement.findall('kernel')
        for kernelElement in kernelElementArray:
            num = int(getText(kernelElement))
            kernelIndex = 0
            for kernel in allKernels:
                if int(kernel.id_num) == int(num):
                    node['kernels'].append(kernel)
                    allKernels[kernelIndex]['ip_addr'] = node['ip_addr']
                    allKernels[kernelIndex]['mac_addr'] = node['mac_addr']
                kernelIndex = kernelIndex + 1


        allNodes.append(node)


    return allNodes, allKernels

#for nodes that are FPGA generate tcl
def createLocalFPGA(allNodes, projectName, networkBridges):

    for node in allNodes:
        #don't generate tcl for sw
        if node.type == 'sw':
            continue

        #sys.path.append('hwMiddleware/packetSwitch/prComm/tcp')
        tclFileGenerator.makeTCLFiles(node, projectName, networkBridges)



#make COE to intialize BRAM of all IP addresses
def makeIPBRAMFile(projectName, allKernels):

    ipBRAMFile = open('projects/'+ projectName + '/ip.coe', 'w')
    ipBRAMFile.write('memory_initialization_radix=10;\n')
    ipBRAMFile.write('memory_initialization_vector=\n')
    #iterate through kernels in order of tdest, populating the ipaddress at that location

    maxKernelIndex = 0
    for kernel in allKernels:
        if kernel.id_num > maxKernelIndex:
            maxKernelIndex = kernel.id_num


    for currIndex in range(0, maxKernelIndex + 1):
        found = 0
        for kernel in allKernels:
            if currIndex == kernel.id_num:
                found = 1
                if currIndex != (len(allKernels) - 1):
                    ipBRAMFile.write(str(struct.unpack("!L", socket.inet_aton(kernel['ip_addr']))[0]) + ',')
                else:
                    ipBRAMFile.write(str(struct.unpack("!L", socket.inet_aton(kernel['ip_addr']))[0]) + ';')
                break
        if found == 0:
           if currIndex != (len(allKernels) - 1):
               ipBRAMFile.write(str(struct.unpack("!L", socket.inet_aton('1.1.1.1'))[0]) + ',')
           else:
               ipBRAMFile.write(str(struct.unpack("!L", socket.inet_aton('1.1.1.1'))[0]) + ';')


#make COE to intialize BRAM of all IP addresses
def makeMACBRAMFile(projectName, allKernels):

    macBRAMFile = open('projects/'+ projectName + '/mac.coe', 'w')
    macBRAMFile.write('memory_initialization_radix=16;\n')
    macBRAMFile.write('memory_initialization_vector=\n')
    kernelIndex = 0
    #iterate through kernels in order of tdest, populating the ipaddress at that location
    maxKernelIndex = 0
    for kernel in allKernels:
        if kernel.id_num > maxKernelIndex:
            maxKernelIndex = kernel.id_num

    print "max kernel index is " + str(maxKernelIndex)
    for currIndex in range(0, maxKernelIndex + 1):
        found = 0

        for kernel in allKernels:
            if currIndex == kernel.id_num:
                found = 1
                if currIndex != (len(allKernels) - 1):
                    macBRAMFile.write(kernel['mac_addr'].replace(":","") + ',')
                else:
                    macBRAMFile.write(kernel['mac_addr'].replace(":","") + ';')
                break
        if found==0:
            if currIndex != (len(allKernels) - 1):
                macBRAMFile.write("ffffffffffff" + ',')
            else:
                macBRAMFile.write("ffffffffffff" + ';')
            break
try:
    opts, args = getopt.getopt(sys.argv[1:],"", ["logicalFile=", "mapFile=", "projectName="])
except:
    usage()
    sys.exit(2)

def makeProjectClusterScript(projectName, allNodes):

    if os.path.exists('projects/' + projectName):
        shutil.rmtree('projects/' + projectName)
    os.makedirs('projects/' + projectName)

    globalConfigFile = open('createCluster.sh', 'w')
    globalSimFile = open('simCluster.sh', 'w')

    nodeIndex = 0
    for node in allNodes:
        #only need vivado project for hw nodes
        if node.type == 'hw':
            dirName = 'projects/' + projectName + '/' + str(nodeIndex)
            os.makedirs(dirName)
            #currently only making flattened bitstreams
            globalConfigFile.write("vivado -mode batch -source tclScripts/createFlatten.tcl -tclargs " + node.board + " " + projectName + " " + str(nodeIndex) + "& \n")
            globalSimFile.write("vivado -mode gui -source tclScripts/createSim.tcl -tclargs " + node.board + " " + projectName + " " + str(nodeIndex) + "\n")
        nodeIndex = nodeIndex + 1


logicalFile = None
mapFile = None
macFile = None
ipFile = None
projectName = None

for o, a in opts:
    if o in ("--logicalFile"):
        logicalFile = a
    elif o in ("--mapFile"):
        mapFile = a
    elif o in ("--projectName"):
        projectName= a

print "Logical File: " + logicalFile
print "Map File: " + mapFile
print "Project Name: " + projectName

allKernels, networkBridges = readKernelsFile(logicalFile)
allNodes, allKernels = readNodeMap(mapFile, allKernels)
makeProjectClusterScript(projectName, allNodes)
makeIPBRAMFile(projectName, allKernels)
makeMACBRAMFile(projectName, allKernels)
#createLocalFPGA(allNodes, projectName, networkBridges)

import xml.etree.ElementTree as ET
import socket, struct
import getopt, sys
import os
import shutil
import tclFileGenerator


class networkBridgesObj:
    bridgeFromLocation = ''
    bridgeToLocation = ''
    stream_in_from = ''
    stream_out_from = ''
    stream_in_to = ''
    stream_out_to = ''


class appBridgeObj:
    to_app = ''
    from_app = ''
    to_net = ''
    from_net = ''
    kernel = ''

class controlInterfaceObj:
    offset = 0x0
    name = ''

class constantObj:
    name = ''
    width = ''
    val = ''

class kernelObj:
    name = ''
    id_num = ''
    clk = ''
    aresetn = ''
    ip_vendor = ''
    ip_type = ''
    ip_version = ''
    id_port = 'id_V'
    mem_interfaces = []
    ctrl_interface = ''
    stream_in = ''
    stream_out = ''
    ip_addr = ''
    mac_addr = ''
    constants = []
    debug_interfaces = []
class nodeObj:
    num = ''
    board = ''
    comm = ''
    kernels = []
    mac_addr = ''
    ip_addr = ''
    app_bridge = None
    def __init__(self):
        self.kernels = []


def readKernelsFile(logicalKernelsFile):
    
    allKernels = []
    networkBridges = None

    #parse logical kernel xml file
    tree = ET.parse(logicalKernelsFile)
    logicalCluster = tree.getroot()


    for kernelElement in logicalCluster.findall('kernel'):
        #read kernel name
        kernelName = kernelElement.text.replace(" ", "")
        kernelName = kernelName.replace("\n", "")
        kernelName = kernelName.replace("\t", "")

        #read kernel id
        kernel_id = kernelElement.find('num').text.replace(" ", "")
        #read name of clk and resetn signals, else assign default values
        clkElement = kernelElement.find('clk')
        resetElement = kernelElement.find('aresetn')
        if clkElement != None:
            clk = clkElement.text.replace(" ", "")
        else:
            clk = 'ap_clk'
        if resetElement != None:
            aresetn = resetElement.text.replace(" ", "")
        else:
            aresetn = 'aresetn'


        #read name of id_port
        idElement = kernelElement.find('id_port')
        id_port = ''
        if idElement != None:
            id_port = idElement.text.replace(" ", "")
    
        #memory interfaces
        mem_interface_array = kernelElement.findall('mem_interface')
        mem_interfaces = []
        for mem_interface_element in mem_interface_array:
            mem_interface = mem_interface_element.find('name').text.replace(" ", "")
            mem_interfaces.append(mem_interface)
           
        #control interfaces
        control_interface_element = kernelElement.find('ctrl_interface')
        control_interface = None
        if control_interface_element != None:
            control_interface = controlInterfaceObj()
            control_interface.name = control_interface_element.find('name').text.replace(" ","")
            control_interface.offset = control_interface_element.find('offset').text.replace(" ","")

        rep_element = kernelElement.find('rep')
        if rep_element != None:
            rep = int(rep_element.text.replace(" ", ""))
        else:
            rep = 1
       

        constants = []
        constantElementArray = kernelElement.findall('const')
        for constantElement in constantElementArray:
            const = constantObj()
            const.name = constantElement.find('name').text.replace(" ", "")
            const.width = constantElement.find('width').text.replace(" ", "")
            const.val = constantElement.find('val').text.replace(" ", "")
            constants.append(const)

        interfaceElementArray = kernelElement.findall('interface')
        stream_out = ''
        stream_in = ''
        debug_interfaces = []
        for interface_element in interfaceElementArray:
            direction = interface_element.find('direction').text.replace(" ", "")
            interface_name = interface_element.find('name').text.replace(" ", "")
            if direction == 'out':
                stream_out = interface_name
            else:
                stream_in = interface_name
            
            debugElement = interface_element.find('debug')
            if debugElement != None:
                debug_interfaces.append(interface_name)
        type_element = kernelElement.find('type')
        ip_type = 'hls'
        if type_element != None:
            ip_type = type_element.text.replace(" ", "")
        
        version_element = kernelElement.find('version')
        ip_version = str('1.0')
        if type_element != None:
            ip_version = str(version_element.text.replace(" ", ""))

        vendor_element = kernelElement.find('vendor')
        ip_vendor = 'xilinx.com'
        if type_element != None:
            ip_vendor = vendor_element.text.replace(" ", "")

       
     
        id_num = int(kernel_id)
        for i in range(0, rep):
            #making kernel object
            kernel = kernelObj()
            kernel.name = kernelName
            kernel.clk = clk
            kernel.aresetn = aresetn
            kernel.id_port = id_port 
            kernel.mem_interfaces = mem_interfaces
            kernel.ctrl_interface = control_interface
            kernel.stream_in = stream_in
            kernel.stream_out = stream_out
            kernel.id_num = id_num
            kernel.ip_type = ip_type 
            kernel.ip_version = ip_version
            kernel.ip_vendor = ip_vendor
            kernel.constants = constants
            kernel.debug_interfaces = debug_interfaces
            allKernels.append(kernel)
            id_num = id_num + 1



    return allKernels, networkBridges

def readNodeMap(mapFile, macFile, ipAddrFile, allKernels):
    
    tree = ET.parse(mapFile)
    mapCluster = tree.getroot()

    #with open(macFile) as f:
    #    macAddresses = f.readlines()
    #macAddresses = [x.strip() for x in macAddresses]

    #with open(ipAddrFile) as f:
    #    ipAddresses = f.readlines()
    #ipAddresses = [x.strip() for x in ipAddresses]

    nodeIndex = 0

    allNodes = []
    #iterate through all nodes first populating the types, board names, mac addresses and ip addresses
    for nodeElement in mapCluster:
        node = nodeObj()
        typeElement = nodeElement.find('type').text.replace(" ", "")
        boardElement = nodeElement.find('board')
        node.type = typeElement
        if boardElement != None:
            node.board = boardElement.text.replace(" ", "")
        else:
            node.board = ''
        commElement = nodeElement.find('comm')
        if commElement != None:
            node.comm = commElement.text.replace(" ", "")
        else:
            node.comm = ''

        macElement = nodeElement.find('mac_addr')
        if macElement != None:
            node.mac_addr = macElement.text.replace(" ", "")
        else:
            node.mac_addr = 'ff:ff:ff:ff:ff:ff'
        print "node mac addr" + node.mac_addr

        ipElement = nodeElement.find('ip_addr')
        if ipElement != None:
            node.ip_addr = ipElement.text.replace(" ", "")
        else:
            node.ip_addr = '1.1.1.1'

        appBridgeElement = nodeElement.find('appBridge')

        node.app_bridge = None
        if appBridgeElement != None:
            node.app_bridge = appBridgeObj()
            node.app_bridge.kernel = kernelObj()
            clkElement = appBridgeElement.find('clk')
            node.app_bridge.kernel.name = appBridgeElement.find('name').text.replace(" ","")
            node.app_bridge.to_app = appBridgeElement.find('to_app').text.replace(" ","")
            node.app_bridge.from_app = appBridgeElement.find('from_app').text.replace(" ","")
            node.app_bridge.to_net = appBridgeElement.find('to_net').text.replace(" ","")
            node.app_bridge.from_net = appBridgeElement.find('from_net').text.replace(" ","")
            if clkElement != None:
                node.app_bridge.kernel.clk = clkElement.text.replace(" ", "")
            else:
                node.app_bridge.kernel.clk = 'aclk'

            rstElement = appBridgeElement.find('aresetn')
            if rstElement != None:
                node.app_bridge.kernel.aresetn = rstElement.text.replace(" ", "")
            else:
                node.app_bridge.kernel.aresetn = 'aresetn'
            
            vendorElement = appBridgeElement.find('vendor')
            if vendorElement != None:
                node.app_bridge.kernel.ip_vendor = vendorElement.text.replace(" ", "")
            else:
                node.app_bridge.kernel.ip_vendor = 'xilinx.com'

            typeElement = appBridgeElement.find('type')
            if typeElement != None:
                node.app_bridge.kernel.ip_type = typeElement.text.replace(" ", "")
            else:
                node.app_bridge.kernel.ip_type = 'hls'

            versionElement = appBridgeElement.find('version')
            if versionElement != None:
                node.app_bridge.kernel.ip_version = versionElement.text.replace(" ", "")
            else:
                node.app_bridge.kernel.ip_version = '1.0'

        #node.mac_addr = macAddresses[nodeIndex]
        #node.ip_addr = ipAddresses[nodeIndex]
        node.kernels = []
        nodeIndex = nodeIndex + 1
        allNodes.append(node)

    nodeIndex = 0
    #iterate through all nodes again populating the kernels 
    for nodeElement in mapCluster:
        kernelElementArray = nodeElement.findall('kernel')
        for kernelElement in kernelElementArray:
            num = int(kernelElement.text.replace(" ", ""))
            kernelIndex = 0
            for kernel in allKernels:
                if int(kernel.id_num) == int(num):
                    allNodes[nodeIndex].kernels.append(kernel)
                    #allKernels[kernelIndex].ip_addr = ipAddresses[nodeIndex]
                    #allKernels[kernelIndex].mac_addr = macAddresses[nodeIndex]
                    allKernels[kernelIndex].ip_addr = allNodes[nodeIndex].ip_addr
                    allKernels[kernelIndex].mac_addr = allNodes[nodeIndex].mac_addr
                kernelIndex = kernelIndex + 1
       

        allNodes[nodeIndex].num = nodeIndex
        nodeIndex = nodeIndex + 1


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
                    ipBRAMFile.write(str(struct.unpack("!L", socket.inet_aton(kernel.ip_addr))[0]) + ',')
                else:
                    ipBRAMFile.write(str(struct.unpack("!L", socket.inet_aton(kernel.ip_addr))[0]) + ';')
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
                    macBRAMFile.write(kernel.mac_addr.replace(":","") + ',')
                else:
                    macBRAMFile.write(kernel.mac_addr.replace(":","") + ';')
                break
        if found==0:
            if currIndex != (len(allKernels) - 1):
                macBRAMFile.write("ffffffffffff" + ',')
            else:
                macBRAMFile.write("ffffffffffff" + ';')
            break
try:
    opts, args = getopt.getopt(sys.argv[1:],"", ["logicalFile=", "mapFile=", "macFile=", "ipFile=", "projectName="])
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
    elif o in ("--macFile"):
        macFile = a
    elif o in ("--ipFile"):
        ipFile = a
    elif o in ("--projectName"):
        projectName= a

print "Logical File: " + logicalFile
print "Map File: " + mapFile
print "MAC File: " +  macFile 
print "IP Addr File: " + ipFile 
print "Project Name: " + projectName

allKernels, networkBridges = readKernelsFile(logicalFile)
allNodes, allKernels = readNodeMap(mapFile, macFile, ipFile, allKernels)
makeProjectClusterScript(projectName, allNodes)
makeIPBRAMFile(projectName, allKernels)
makeMACBRAMFile(projectName, allKernels)
createLocalFPGA(allNodes, projectName, networkBridges)

import warnings
import shutil
import copy
import xmltodict
import tclFileGenerator
from abstractDict import abstractDict
from kernel import kernel
from node import node
import os
import socket, struct

class cluster(abstractDict):

    def getDictFromXML(self, file_name):
        with open(file_name) as fd:
            ret_dict = xmltodict.parse(fd.read())

        return ret_dict

    def __init__(self, name, kernel_file, map_file, input_file_type='xml'):
        self.name = name
        self.kernel_file = kernel_file


        if input_file_type == 'xml':
            logical_dict = self.getDictFromXML(kernel_file)['cluster']['kernel']
            map_dict = self.getDictFromXML(map_file)['cluster']['node']



        self.kernels = []
        for kern_dict in logical_dict:
            kern_dict['name'] = kern_dict['#text']
            if 'rep' in kern_dict:
                base_num = int(kern_dict['num'])
                for i in range(0, int(kern_dict['rep'])):
                    kern_dict_local = copy.deepcopy(kern_dict)
                    kern_dict_local['num'] = base_num + i
                    if 's_axi' in kern_dict_local:
                        if type(kern_dict_local['s_axi']) == type([]):
                            for s_axi_idx, s_axi in enumerate(kern_dict_local['s_axi']):
                                if s_axi['scope'] == 'local':
                                    kern_dict_local['s_axi'][s_axi_idx]['master']['num'] = str(i + base_num)
                        else:
                            if kern_dict_local['s_axi']['scope'] == 'local':
                                kern_dict_local['s_axi']['master']['num'] = str( i + int(kern_dict_local['s_axi']['master']['num']))
                                print("i is " +  str( i ))
                                print("updating master port to " +  str( int(kern_dict_local['s_axi']['master']['num'])))


                    print('kern_dict_local ' + str(kern_dict_local))
                    if 's_axis' in kern_dict_local:
                        print('S_AXIS in kern dict')
                        if type(kern_dict_local['s_axis']) == type([]):
                            for s_axis_idx, s_axis in enumerate(kern_dict_local['s_axis']):
                                if s_axis['scope'] == 'local':
                                    kern_dict_local['s_axis'][s_axis_idx]['master']['num'] = str(i + int(s_axis['master']['num']))
                        else:
                            if kern_dict_local['s_axis']['scope'] == 'local':
                                kern_dict_local['s_axis']['master']['num'] = str( i + int(kern_dict_local['s_axis']['master']['num']))

                    if 'wire_slave' in kern_dict_local:
                        if type(kern_dict_local['wire_slave']) == type([]):
                            for slave_idx, slave in enumerate(kern_dict_local['wire_slave']):
                                kern_dict_local['wire_slave'][slave_idx]['master']['num'] = str(i + int(slave['master']['num']))
                        else:  
                            kern_dict_local['wire_slave']['master']['num'] = str(i + int(slave['master']['num']))
                    
                    
                    
                    print("kern dicT " + str(kern_dict_local))
                    self.kernels.append(kernel(**kern_dict_local))
                    print("kernelONE object " + str(self.kernels[len(self.kernels) - 1].data))


            else:
                kern_dict_local['rep'] = 1
                kern_dict_local['num'] = int(kern_dict_local['num'])
                self.kernels.append(kernel(**kern_dict_local))

        for kern in self.kernels:
            print("kernel object " + str(kern.data))

        self.nodes = []
        for node_idx, node_dict in enumerate(map_dict):
            node_inst = node(**node_dict)
            node_inst['kernel'] = []
            for kmap_node in node_dict['kernel']:
                for kern_idx, kern in enumerate(self.kernels):
                    if int(kern['num']) == int(kmap_node):
                        node_inst['kernel'].append(kern)
                        self.kernels[kern_idx]['mac'] = node_inst['mac']
                        self.kernels[kern_idx]['ip'] = node_inst['ip']
            node_inst['num'] = node_idx
            self.nodes.append(node_inst)

    def writeClusterTCL(self, sim):
        
        for node_idx, node in enumerate(self.nodes):
            if node['type'] == 'hw':
                dirName = 'projects/' + self.name + '/' + str(node_idx)
                tclFileGenerator.makeTCLFiles(node, self.name, sim)




    #make COE to intialize BRAM of all IP addresses
    def writeBRAMFile(self, addr_type):


        if addr_type == 'mac':
            bramFile = open('projects/'+ self.name + '/mac.coe', 'w')
            bramFile.write('memory_initialization_radix=16;\n')
        else: #ip
            bramFile = open('projects/'+ self.name + '/ip.coe', 'w')
            bramFile.write('memory_initialization_radix=10;\n')
        bramFile.write('memory_initialization_vector=\n')
        
        kernelIndex = 0
        #iterate through kernels in order of tdest, populating the ipaddress at that location
        maxKernelIndex = 0
        for kern in self.kernels:
            if kern['num'] > maxKernelIndex:
                maxKernelIndex = kern['num']

        for currIndex in range(0, maxKernelIndex + 1):
            found = 0

            for kern in self.kernels:
                if currIndex == int(kern['num']):
                    found = 1
                    if addr_type == 'mac':
                        writeStr = kern['mac'].replace(":", "")
                    else: #ip
                        writeStr = str(struct.unpack("!L", socket.inet_aton(kern['ip']))[0])

                    if currIndex != (len(self.kernels) - 1):
                        bramFile.write(writeStr + ',')
                    else:
                        bramFile.write(writeStr + ';')
                    break
            if found==0:
                if addr_type == 'mac':
                    defaultStr = 'ffffffffffff'
                else: #ip
                    defaultStr = str(struct.unpack("!L", socket.inet_aton('1.1.1.1'))[0]) 

                if currIndex != (len(self.kernels) - 1):
                    bramFile.write(defaultStr + ',')
                else:
                    bramFile.write(defaultStr + ';')
                break

    def makeProjectClusterScript(self):
    
        if os.path.exists('projects/' + self.name):
            shutil.rmtree('projects/' + self.name)
        os.makedirs('projects/' + self.name)
    
        globalConfigFile = open('createCluster.sh', 'w')
        globalSimFile = open('simCluster.sh', 'w')
    
        for node_idx, node_obj in enumerate(self.nodes):
            #only need vivado project for hw nodes
            if node_obj['type'] == 'hw':
                dirName = 'projects/' + self.name + '/' + str(node_idx)
                os.makedirs(dirName)
                #currently only making flattened bitstreams
                globalConfigFile.write("vivado -mode batch -source tclScripts/createFlatten.tcl -tclargs " + node_obj['board'] + " " + self.name + " " + str(node_idx) + "& \n")
                globalSimFile.write("vivado -mode gui -source tclScripts/createSim.tcl -tclargs " + node_obj['board'] + " " + self.name + " " + str(node_idx) + "\n")



if __name__=='__main__':

    #logical_file = 'hwMiddleware/packetSwitch/tests/conf0/logical.xml'
    #map_file = 'hwMiddleware/packetSwitch/tests/conf0/map.xml'
    logical_file = 'telepathy/middlewareInput/conf0/mpiLogical.xml'
    map_file = 'telepathy/middlewareInput/conf0/mpiMap.xml'
    cluster_inst = cluster('naif', logical_file, map_file)
    cluster_inst.makeProjectClusterScript()
    cluster_inst.writeClusterTCL()
    cluster_inst.writeBRAMFile('mac')
    cluster_inst.writeBRAMFile('ip')




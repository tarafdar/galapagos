import warnings
import shutil
import copy
import tclFileGenerator
from abstractDict import abstractDict
from kernel import kernel
from node import node
import os
import socket, struct

class cluster(abstractDict):

    def getDict(self, file_name):
        filename, extension = os.path.splitext(file_name)
        if extension == ".xml":
            try:
                import xmltodict
            except ImportError:
                print("xmltodict module not installed in Python")
                exit(1)
            with open(file_name) as fd:
                return xmltodict.parse(fd.read())
        elif extension == ".json":
            import json
            with open(file_name) as fd:
                return json.load(fd)
        else:
            print("Unhandled exetension for " + file_name)
            return None

    def __init__(self, name, kernel_file, map_file):
        self.name = name
        self.kernel_file = kernel_file

        #placeholder defaults so functions still work
        self.packet_data = 64
        self.packet_dest = 8 
        self.packet_keep = 0 
        self.packet_last = 0 
        self.packet_id = 0 
        self.packet_user = 0 

        top_dict = self.getDict(kernel_file)['cluster']
        if 'packet' in top_dict:
            packet = top_dict['packet']
            if 'data' in packet:
                self.packet_data = top_dict['packet']['data']
            if 'keep' in packet:
                self.packet_keep = top_dict['packet']['keep']
            if 'last' in packet:
                self.packet_last = top_dict['packet']['last']
            if 'id' in packet:
                self.packet_id = top_dict['packet']['id']
            if 'user' in packet:
                self.packet_user = top_dict['packet']['user']
            
            galapagos_path = str(os.environ.get('GALAPAGOS_PATH'))

            f = open(galapagos_path + '/middleware/include/packet_size.h', 'w')
            f.write("#ifndef PACKET_SIZE_H\n#define PACKET_SIZE_H\n")
            f.write("# define PACKET_DATA_LENGTH " + str(self.packet_data) + '\n')
            if self.packet_keep:
                self.packet_keep = int(self.packet_data)/8
                f.write("# define PACKET_KEEP_LENGTH " + str(int(self.packet_keep)) + '\n')
            if self.packet_last:
                f.write("# define PACKET_LAST\n")
            if self.packet_id:
                f.write("# define PACKET_ID_LENGTH " + str(self.packet_id) + '\n')
            if self.packet_user:
                f.write("# define PACKET_USER_LENGTH " + str(self.packet_user) + '\n')
            if self.packet_dest:
                f.write("# define PACKET_DEST_LENGTH " + str(self.packet_dest) + '\n')
            f.write("#endif\n")
        logical_dict = self.getDict(kernel_file)['cluster']['kernel']
        map_dict = self.getDict(map_file)['cluster']['node']


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

    def writeClusterTCL(self, output_path, sim):
        
        for node_idx, node in enumerate(self.nodes):
            if node['type'] == 'hw':
                tclFileGenerator.makeTCLFiles(node, self.name, output_path, sim)




    #make COE to intialize BRAM of all IP addresses
    def writeBRAMFile(self, output_path, addr_type):
        if addr_type == 'mac':
            bramFile = open(output_path + '/' + self.name + '/mac.coe', 'w')
            bramFile.write('memory_initialization_radix=16;\n')
        else: #ip
            bramFile = open(output_path + '/' + self.name + '/ip.coe', 'w')
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

    def makeProjectClusterScript(self, output_path):
        if os.path.exists(output_path + '/' + self.name):
            shutil.rmtree(output_path + '/' + self.name)
        os.makedirs(output_path + '/' + self.name)

        globalConfigFile = open(output_path + "/" + self.name + '/createCluster.sh', 'w')
        globalSimFile = open(output_path + "/" + self.name + '/simCluster.sh', 'w')

        globalConfigFile.write("cd " + str(os.environ.get('GALAPAGOS_PATH')) + "\n")
        for node_idx, node_obj in enumerate(self.nodes):
            #only need vivado project for hw nodes
            if node_obj['type'] == 'hw':
                dirName = output_path + '/' + self.name + '/' + str(node_idx)
                os.makedirs(dirName)
                #currently only making flattened bitstreams
                globalConfigFile.write("galapagos-update-board " + node_obj['board'] + "\n")
                globalConfigFile.write("vivado -mode batch -source shells/tclScripts/make_shell.tcl -tclargs --project_name " +  str(node_idx) + "  --pr_tcl " + dirName + "/" + str(node_idx) + ".tcl" + " --dir " + self.name +  " --start_synth 1" + "\n")
#                globalConfigFile.write("vivado -mode batch -source shells/tclScripts/make_shell.tcl -tclargs --project_name " +  str(node_idx) + "  --pr_tcl " + dirName + "/" + str(node_idx) + ".tcl" + " --dir " + output_path + '/' + self.name " & \n")
#                globalSimFile.write("vivado -mode gui -source tclScripts/createSim.tcl -tclargs " + node_obj['board'] + " " + self.name + " " + str(node_idx) + "\n")



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

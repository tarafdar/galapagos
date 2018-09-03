import warnings
import copy
import xmltodict
from abstractDict import abstractDict
from kernel import kernel
from node import node

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
            if 'rep' in kern_dict:
                base_num = int(kern_dict['num'])
                for i in range(0, int(kern_dict['rep'])):
                    kern_dict['num'] = base_num + i
                    self.kernels.append(kernel(**kern_dict))
            else:
                kern_dict['num'] = int(kern['dict'])
                self.kernels.append(kernel(*kern_dict))

        self.nodes = []
        for node_dict in map_dict:
            node_inst = node(**node_dict)
            node_inst['kernel'] = []
            for kmap_node in node_dict['kernel']:
                for kern in self.kernels:
                    if int(kern['num']) == int(kmap_node):
                        node_inst['kernel'].append(kern)
            self.nodes.append(node_inst)



if __name__=='__main__':

    logical_file = 'tests/conf0/logical.xml'
    map_file = 'tests/conf0/map.xml'
    cluster_inst = cluster('naif', logical_file, map_file)





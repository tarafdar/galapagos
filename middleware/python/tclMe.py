ENABLE_DEBUG = True
if ENABLE_DEBUG:
    from inspect import getframeinfo, stack
    import os
    targetFile = "/middleware/python/tclFileGenerator.py"
    fullPath = os.environ.get("GALAPAGOS_PATH") + targetFile

class tclMeFile():
    fileHandle = None

    def __init__(self, fileName, fpga):
        self.fileHandle = open(fileName + '.tcl', 'w')
        self.fpga = fpga

    def tprint_raw(self, cmd, end='\n'):
        self.fileHandle.write(cmd + end)

    def tprint(self, cmd, end='\n'):
        if ENABLE_DEBUG:
            stackIndex = 0
            for index, stackFrame in enumerate(stack()):
                caller = getframeinfo(stackFrame[0])
                if caller.filename == fullPath:
                    stackIndex = index
                    break                    
            caller = getframeinfo(stack()[stackIndex][0])
            self.fileHandle.write("# " + targetFile + ":" + str(caller.lineno) + '\n')
        self.tprint_raw(cmd, end)

    def createHierarchy(self, hierarchy):
        self.tprint('create_bd_cell -type hier ' + hierarchy)

    def addSource(self, source):
        self.tprint('source ' + source)

    def setProperties(self, inst_name, properties):
        if properties != None:
            self.tprint('set_property -dict [list ', '')
        for prop in properties:
            self.tprint_raw(prop + ' ', end ='')
        if properties != None:
            self.tprint_raw('] [get_bd_cells ' + inst_name + ']')

    def assign_address(self, slave_inst, slave_port, slave_base):
        
        if slave_inst != None:
            self.tprint('assign_bd_address [get_bd_addr_segs {' + slave_inst + '/' + slave_port + '/' + slave_base + '}]')
        else:
            self.tprint('assign_bd_address [get_bd_addr_segs {' + slave_port + '/' + slave_base + '}]')

    def set_address_properties(self, slave_inst, slave_port, slave_base, master, **properties):

        for key,value in properties.items():
            if slave_inst != None:
                self.tprint('set_property  ' + key + ' ' + value +  ' [get_bd_addr_segs {' + master + '/SEG_' + slave_inst + '_' + slave_base + '}]')
            else:
                self.tprint('set_property  ' + key + ' ' + value +  ' [get_bd_addr_segs {' + master + '/SEG_' + slave_port + '_' + slave_base + '}]')

    def instBlock(self, ip):

        if 'vendor' in ip and ip['vendor'] != None:
            self.tprint('create_bd_cell -type ip -vlnv ' + ip['vendor'] + ':' + ip['lib']+ ':' + ip['name'] + ' ' +  ip['inst'] )
        else:
            self.tprint('create_bd_cell -type ip -vlnv xilinx.com:ip:' + ip['name'] + ' ' +  ip['inst'])
        
        if 'properties' in ip and ip['properties'] != None:
            self.setProperties(ip['inst'], ip['properties'])

        if 'clks' in ip and ip['clks'] != None:
            for clk_name in ip['clks']:
                self.tprint('connect_bd_net [get_bd_ports CLK] [get_bd_pins ' + ip['inst'] + '/' + clk_name + ']')

        if 'resetns' in ip and ip['resetns'] != None:
            for reset_name in ip['resetns']:
                self.tprint('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins ' + ip['inst'] + '/' + reset_name + ']')


    def makeConnection(self, conn_type, source, sink):
        if conn_type == 'net':
            self.tprint('connect_bd_net [', end = '')
        elif conn_type == 'intf':
            self.tprint('connect_bd_intf_net [', end = '')

        if source['type'] == 'port':
            self.tprint_raw('get_bd_ports ', end = '')
            self.tprint_raw(source['port_name'] + '] [', end = '')
        elif source['type'] == 'intf_port':
            self.tprint_raw('get_bd_intf_ports ', end = '')
            self.tprint_raw(source['port_name'] + '] [', end = '')
        elif source['type'] == 'intf':
            self.tprint_raw('get_bd_intf_pins ', end = '')
            self.tprint_raw(source['name'] + '/' + source['port_name'] + '] [', end = '')
        elif source['type'] == 'pin':
            self.tprint_raw('get_bd_pins ', end = '')
            self.tprint_raw(source['name'] + '/' + source['port_name'] + '] [', end = '')



        if sink['type'] == 'port':
            self.tprint_raw('get_bd_ports ', end='')
            self.tprint_raw(sink['port_name'] + ']')
        elif sink['type'] == 'intf_port':
            self.tprint_raw('get_bd_intf_ports ', end='')
            self.tprint_raw(sink['port_name'] + ']')
        elif sink['type'] == 'intf':
            self.tprint_raw('get_bd_intf_pins ', end='')
            self.tprint_raw(sink['name'] + '/' + sink['port_name'] + ']')
        elif sink['type'] == 'pin':
            self.tprint_raw('get_bd_pins ', end = '')
            self.tprint_raw(sink['name'] + '/' + sink['port_name'] + ']')

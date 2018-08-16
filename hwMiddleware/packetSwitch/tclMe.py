#!/usr/bin/python

class tclMeFile():
    fileHandle = None

    def __init__(self, fileName):
        self.fileHandle = open(fileName + '.tcl', 'w')
    
    def tprint(self, cmd, end):
        self.fileHandle.write(cmd + end)
    
    def tprint(self, cmd):
        self.fileHandle.write(cmd + '\n')


    def createHierarchy(self, hierarchy):
        self.tprint('create_bd_cell -type hier ' + hierarchy)

    def addSource(self, source):
        self.tprint('source ' + source)

    def setProperties(self, inst_name, properties):
        if properties != None:
            self.tprint('set_property -dict [list ')
        for prop in properties:
            self.tprint(prop + ' ')
        if properties != None:
            self.tprint('] [get_bd_cells ' + inst_name + ']')

    def assign_address(self, master, slaves):
        self.tprint('assign_bd_address [get_bd_addr_segs {' + master + '}]')
        for slave in slaves:
            self.tprint('set_property offset ' + slave['offset'] + ' [get_bd_addr_segs {' + slave['port'] + '}]')
            self.tprint('set_property range '+  slave['range'] + ' [get_bd_addr_segs {'+ slave['port'] +  '}]')


    def instBlock(self, ip):
    
        if 'vendor' in ip:
            self.tprint('create_bd_cell -type ip -vlnv ' + ip['vendor'] + ':' + ip['type']+ ':' + ip['name'] + ' ' +  ip['inst'] )
        else:
            self.tprint('create_bd_cell -type ip -vlnv xilinx.com:ip:' + ip['name'] + ' ' +  ip['inst'])
    
        if 'clks' in ip:
            for clk_name in ip['clks']:
                self.tprint('connect_bd_net [get_bd_ports CLK] [get_bd_pins ' + ip['inst'] + '/' + clk_name + ']')
    
        if 'resetns' in ip:
            for reset_name in ip['resetns']:
                self.tprint('connect_bd_net [get_bd_ports ARESETN] [get_bd_pins ' + ip['inst'] + '/' + reset_name + ']')
       
        if 'properties' in ip:
            self.setProperties(ip['inst'], ip['properties'])

    def makeConnection(self, conn_type, source, sink):
        if conn_type == 'net':
            self.tprint('connect_bd_net [')
        elif conn_type == 'intf':
            self.tprint('connect_bd_intf_net [')
    
        if source['type'] == 'port':
            self.tprint('get_bd_ports ')
            self.tprint(source['port_name'] + '] [')
        elif source['type'] == 'intf_port':
            self.tprint('get_bd_intf_ports ')
            self.tprint(source['port_name'] + '] [')
        elif source['type'] == 'intf':
            self.tprint('get_bd_intf_pins ')
            self.tprint(source['name'] + '/' + source['port_name'] + '] [')
        elif source['type'] == 'pin':
            self.tprint('get_bd_pins ')
            self.tprint(source['name'] + '/' + source['port_name'] + '] [')
            
    
        
        if sink['type'] == 'port':
            self.tprint('get_bd_ports ')
            self.tprint(sink['port_name'] + ']\n')
        elif sink['type'] == 'intf_port':
            self.tprint('get_bd_intf_ports ')
            self.tprint(sink['port_name'] + ']\n')
        elif sink['type'] == 'intf':
            self.tprint('get_bd_intf_pins ')
            self.tprint(sink['name'] + '/' + sink['port_name'] + ']\n')
        elif sink['type'] == 'pin':
            self.tprint('get_bd_pins ')
            self.tprint(sink['name'] + '/' + sink['port_name'] + ']\n')
    
    

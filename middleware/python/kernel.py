import warnings
from abstractDict import abstractDict

class kernel(abstractDict):
    def __init__(self, **kwargs):

        self.cycle_count, mandatory_array,optional_array = self.init_vars()
        super().__init__(mandatory_array, optional_array, **kwargs)
        array_of_arrays = ['clk', 'aresetn', 'm_axi', 's_axi', 'm_axis', 's_axis', 'wire_slave', 'wire_master', 'const', 'properties']
        
        for elem in array_of_arrays:
            if type(self.data[elem]) != type([])  and self.data[elem] != None:
                self.data[elem] = [self.data[elem]]



    def init_vars(self):
        cycle_count = 0
        mandatory_array = ('name',
                                'num',
                                '#text')
        optional_array = ('rep',
                          'clk',
                          'aresetn',
                               'vendor',
                               'lib',
                               'version',
                               'id_port',
                               'm_axi',
                               's_axi',
                               's_axis',
                               'm_axis',
                               'wire_master',
                               'wire_slave',
                               'ip',
                               'mac',
                               'const',
                               'properties')


        return cycle_count, mandatory_array, optional_array






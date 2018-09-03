import warnings
from abstractDict import abstractDict

class kernel(abstractDict):
    def __init__(self, **kwargs):

        self.cycle_count, mandatory_array,optional_array = self.init_vars()
        print(kwargs)
        super().__init__(mandatory_array, optional_array, **kwargs)

    def init_vars(self):
        cycle_count = 0
        mandatory_array = ('name',
                                'num',
                                'clk',
                                'aresetn',
                                '#text')
        optional_array = ('rep',
                               'vendor',
                               'lib',
                               'version',
                               'id_port',
                               'm_axi',
                               's_axi',
                               's_axis',
                               'm_axis',
                               'wire',
                               'ip',
                               'mac',
                               'const',
                               'properties')

        return cycle_count, mandatory_array, optional_array






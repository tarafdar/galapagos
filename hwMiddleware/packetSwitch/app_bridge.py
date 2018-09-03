import warnings
from kernel import kernel
from abstractDict import abstractDict

class appBridge(abstractDict):
    def __init__(self, **kwargs):
        self.cycle_count = 0
        mandatory_array = ('to_net', 'from_net', 'to_app', 'from_app','name','num','clk','aresetn')
        optional_array = ('vendor', 'lib', 'version', 's_axis', 'm_axis', 's_axi', 'm_axi', 'wire', 'const', 'properties')
        super().__init__(mandatory_array, optional_array, **kwargs)




import warnings
from abstractDict import abstractDict
from app_bridge import appBridge
from kernel import kernel


class node(abstractDict):

    def __init__(self, address_space=32, **kwargs):

        self.address_space = address_space
        mandatory_array = ('num', 'type', 'comm')
        optional_array = ('board', 'mac', 'ip', 'app_bridge', 'debug', 'kernel')

        super().__init__(mandatory_array, optional_array, **kwargs)

        if self.data['app_bridge'] != None:
            self.data['app_bridge'] = appBridge(**self.data['app_bridge'])

        if type(self.data['kernel']) != type([]) and self.data['kernel'] != None:
            self.data['kernel'] = [self.data['kernel']]

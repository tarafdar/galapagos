import warnings

class abstractDict():
    def __init__(self, mandatory_array, optional_array, **kwargs):
        self.data = {}
        for mandatory_elem in mandatory_array:
            self.data[mandatory_elem] = None

        for optional_elem in optional_array:
            self.data[optional_elem] = None

        for key, value in kwargs.items():
            if key in self.data:
                self.data[key] = value
            else:
                raise ValueError('Init with ' + key + ' failed. Key does not exist')
        self.check_elements(mandatory_array, optional_array)

    def check_elements(self, mandatory_array, optional_array):
        for mandatory_elem in mandatory_array:
            if not(mandatory_elem in self.data):
                raise ValueError('Mandatory ' + mandatory_elem + ' must exist')

        for optional_elem in optional_array:
            if not(optional_elem in self.data):
                warnings.warn('Optional elem ' + optional_elem + ' does not exist')

    def __setitem__(self, key, item):
        self.data[key] = item

    def __getitem__(self, key):
        if key in self.data:
            return self.data[key]
        else:
            raise ValueError('Key \"' + key + '\"  not found')



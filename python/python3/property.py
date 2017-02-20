# https://www.programiz.com/python-programming/property
class Resistor(object):
       def __init__(self, ohms):
           self.ohms = ohms
           self.voltage = 0
           self.current = 0

class VoltageResistance(Resistor):
       def __init__(self, ohms):
           super().__init__(ohms)
           self._voltagee = 0
       @property
       def voltage(self):
           return self._voltage
       @voltage.setter
       def voltage(self, voltage):
           self._voltage = voltage
           self.current = self._voltage / self.ohms

r2 = VoltageResistance(1e3)
print(r2.current)
r2.voltage = 10
print(r2.current)
#http://stackoverflow.com/questions/21047524/how-does-swapping-of-members-in-the-python-tuples-a-b-b-a-work-internally

import dis
def foo(a, b):
    a, b = b, a

# >>> dis.dis(foo)
#   2           0 LOAD_FAST                1 (b)
#               3 LOAD_FAST                0 (a)
#               6 ROT_TWO
#               7 STORE_FAST               0 (a)
#              10 STORE_FAST               1 (b)
#              13 LOAD_CONST               0 (None)
#              16 RETURN_VALUE
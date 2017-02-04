"""
python 2 zip is not a generator, it will fully exhaust teh supplied iterators and return a list of all
teh tuples it creates. This could potentially use a lot of memory and cause program crash.
use izip instead of zip

zip behave strangely if the length of the input is different
"""
from itertools import izip
a = [1,2,3]
b = ['d','e','f']

print type(zip(a,b)),type(izip(a,b))

d=[4,5]
for i,j in zip(a,d):
    print i,j

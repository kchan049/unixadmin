#!/usr/bin/python
#usage: python cat.py filename
from __future__ import print_function
import sys
for count in range(1, len(sys.argv)):
	f = open(sys.argv[count])
	print (f.read(), end = "")
	f.close()

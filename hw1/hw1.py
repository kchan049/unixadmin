#!/usr/local/bin/python
#usage: python cat.py filename
import sys
for count in range(1, len(sys.argv)):
	f = open(sys.argv[count])
	print f.read()
	f.close()

#!/usr/local/bin/python
#usage: python cat.py filename
import sys
f = open(sys.argv[1])
print f.read()
f.close()

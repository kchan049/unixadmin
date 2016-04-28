#! /usr/bin/python

import sys

if int(sys.argv[1]) < 0 or int(sys.argv[1]) >32:
	print "daddy plz"
	sys.exit(-1)

bit = 32 - int(sys.argv[1])

address = (2 ** bit)

usable = 1

print "address: {}".format(address),

if int(sys.argv[1]) == 32:
	usable = 1
	ip = 256-address
	print "usable: {}".format(usable),
	print "netmask: 255.255.255.{}".format(ip)
elif int(sys.argv[1]) >= 24 and int(sys.argv[1]) <= 31:
	usable = address -2
	ip = 256-address
	print "usable: {}".format(usable),
	print "netmask: 255.255.255.{}".format(ip)
elif int(sys.argv[1]) >= 16 and int(sys.argv[1]) <=23:
	usable = address -2
	ip = 256-(2 ** (bit-8))	
	print "usable: {}".format(usable),
	print "netmask: 255.255.{}.0".format(ip)
elif int(sys.argv[1]) >= 8 and int(sys.argv[1]) <=15:
	usable = address -2
	ip = 256-(2 ** (bit-16))
	print "usable: {}".format(usable),
	print "netmask: 255.{}.0.0".format(ip)
elif int(sys.argv[1]) >= 0 and int(sys.argv[1]) <=7:
	usable = address -2
	ip = 256-(2 ** (bit-24))
	print "usable: {}".format(usable),
	print "netmask: {}.0.0.0".format(ip)







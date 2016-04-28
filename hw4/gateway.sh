#!/bin/bash 

IP=$(/sbin/ip route | awk '/default/ { print $3 }')

DEVICE=$(/sbin/ip route | awk '/default/ { print $5 }')

NETMASK=$(/sbin/ifconfig $DEVICE | awk '/Mask:/{ print $4;} ')


echo "gateway: $IP Net$NETMASK device: $DEVICE "

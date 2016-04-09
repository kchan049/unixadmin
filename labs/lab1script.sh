#!/bin/bash

chkconfig auditd off 
#optional to audit records

chkconfig crond off 
#we don't need to schedule commands/scripts

chkconfig ip6tables off
#we don't need ipv6 firewall for linux to run

chkconfig iptables off
#we don't need ipv4 firewall for linux to run

chkconfig kdump off
#we don't need to log kernel crashes, it is not neccessary.

chkconfig netfs off
#don't need any network filesystem if we aren't using network

chkconfig network off
#don't need network just want linux to boot

chkconfig rsyslog off
#don't need to keep a log 

chkconfig sshd off
#don't need ssh because no network

chkconfig mdmonitor off
#mdmonitor used for raid and it isn't neccessary for virtual machine

chkconfig postfix off
# optional for mail server

chkconfig --list | grep :on 

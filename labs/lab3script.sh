#! /bin/bash
find /sbin /bin /usr/bin /usr/sbin -user root -perm -4000
#Setuid 0 or root means that when you execute or run a program, it is as the root user ran it. When you run something with such high permissions, it could potentially do anything to your system.
read -p "Hit any key to continue."

find /var -cmin -20
read -p "Hit any key to continue."

find /var -type f -size 0
read -p "Hit any key to continue."

find /var -not -type f -not -type d -ls
read -p "Hit any key to continue."

find /home -type d -not -user root -exec chmod 711 {} \;
read -p "Hit any key to continue."

find /home -type f -not -user root -exec chmod 755 {} \;
read -p "Hit any key to continue."

find /etc -mtime -5




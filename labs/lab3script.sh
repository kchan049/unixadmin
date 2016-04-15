#! /bin/bash
#question 1
find /sbin /bin /usr/bin /usr/sbin -user root -perm -4000
#Setuid 0 or root means that when you execute or run a program, it is as the root user ran it. When you run something with such high permissions, it could potentially do anything to your system.
read -p "Hit enter to continue."
#question 2
find /var -cmin -20
read -p "Hit enter to continue."
#question 3
find /var -type f -size 0
read -p "Hit enter to continue."
#question 4
find /dev -not -type f -and -not -type d -ls
read -p "Hit enter to continue."
#question 5
find /home -type d -not -user root -exec chmod 711 {} \;
read -p "Hit enter to continue."
#question 6
find /home -type f -not -user root -exec chmod 755 {} \;
read -p "Hit enter to continue."
#question 7
find /etc -ctime -5





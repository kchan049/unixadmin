#!/bin/bash
userinfo=$(cat /etc/passwd | awk -F: '{print $1}')  
groupmemberlist=$(cat /etc/group | awk -F: '{print $1}')

for USER in $userinfo
do
	echo "$USER `id -u $USER` `id -Gn $USER`" 
done

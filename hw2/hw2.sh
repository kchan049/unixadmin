#!/bin/bash
#dd 
# dd converts and copies a file
dd if=file1.txt of=file2.txt conv=ucase
#converted file1.txt to uppercase in file2.txt
#If I was a unix admin, I wouldn't want to retype a million of lower case letters into upper case letters. Instead, I would just use this one useful command to do this operation

#pkill
#pkill sends a signal to the process based on its name
pkill -9 -f "commandname"
#pkill can the process by specifying command name
#it is important for a unix admin when they want to kill a process based on its name instead of killing with pid

#find 
#find locates files but can also be used to execute other linux commands such as grep on files and directories found
 find ./ -type f -name '*.txt'
 #finds regular files in current directory ending with .txt
 #important to unix admins because with one command they don't have to cd in and out of directories manually to manually search for things

#netstat
#netstat displays inetwork related information such as network connections, and etc.
netstat -at
#lists all tcp ports
#this provides important network information to the unix admin

#file 
#file accepts a file as an argument and determines the file type
file *
#determines file type for all files in current working directory
#it is important for a unix admin to know what files they are dealing with

#renice
#renice corrects scheduling priority on one or more running processes
renice -n 5 -u kchan049
#changes nice value of all processes that belong to the user kchan049
#important to unix admins to change process priority



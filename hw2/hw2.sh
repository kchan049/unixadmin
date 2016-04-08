#!/bin/bash
#dd 
# dd converts and copies a file
dd if=file1.txt of=file2.txt conv=ucase
#converted file1.txt to uppercase in file2.txt
#If I was a unix admin, I wouldn't want to retype a million of lower case letters into upper case letters. Instead, I would just use this one useful command to do this operation

#pkill
#pkill sends a signal to the process based on its name
pkill -9 -f "vim hw2.sh"
#pkill kills the process "vim hw2.sh" 
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

#fuser
#fuser finds which process is using a file, directory, or socket. It also gives additional information on user owning processes and much more.
fuser -v .
#gives information about the process in verbose mode such as user, pid, access, and command
#important for unix admin because it shows how to view processes using a directory

#rsync
#rsync is a great tool for backing up and restoring files
rsync -arv kchan049@bolt.cs.ucr.edu:/ ./
#copied files from remote server to current directory while preserving all the permissions 
#important for unix admins in case anything goes wrong, they can backup and restore everything

#grep 
#grep will process text line by line and print lines matching a specific pattern
ps -aux | grep kchan049 
#searches all processes with the keyword kchan049
#important for unix admins to look up pids and kill processes by pid number

#time
#time identifies the time taken by a command
time ls
#time ls gives you the real time, user time, and system time of the command ls.
#it can help a unix admin make a more time efficient script

#host
#host does a variety of things like performing dns name lookups, finding ip of a host, listing and validating DNS resource records, verifying internet connectivity and isp dns servers, verifying spam and blacklist record, and verifying and troubleshooting dns server issues.
host google.com
#this command finds the addresses of the domain google.com
#this command helps unix admins troubleshoot network problems and much more

#ssh
#ssh logs you into a remote machine and executes command on a remote machine. 
ssh kchan049@bolt.cs.ucr.edu
#this command logs you into the bolt remote machine under the user name kchan049
#this is probably one of the most important unix admin commands because unix admins are always traveling from place to place. ssh will save you a lot of time and traveling. 

#ldd
#ldd is a tool that helps a user find the dependencies for a shared library or an executable.
ldd /bin/ls
#this example finds the dependency of ls
#as a system admin, it can help figure out what library a given program needs to run

#stat
#stat displays detailed status of a file or file system
stat -f /dev/sda
#this command displays the status of first hard drive
#as a unix admin, you can see how many blocks are free and other important information.

#lsof
#lsof is used to list information about files that are opened by certain processes. 
lsof -u kchan049
#this command lists files opened by the specific user kchan049
#as a unix admin, this command is super important in server administration.

#strace
#strace monitors the system calls and signals of a program.
strace ls
#this example shows the trace of an execution of ls
#this can help a system admin debug any problems in a specific program

#mount
#mount mounts a storage device or filesystem to a particular location in the directory tree.
mount -l -t ext4
#this example lists specific type of filesystem mounted
#unix admins could use this command to mount temporary file systems such as cd rom drive or floppy disk drive

#uname
#uname provides information about your operating system
uname -s
#this command tells you the kernel name
#unix admins can use this command to find information about the operating system and assists people who need help with that specific os

#ps
#ps helps find the current processes running on the system.
ps -aux
#this example gives you details about all the processes
#for a unix admin, they can use ps with kill-9 to immediately kill a running process.

#wget
#wget is a command that downloads files over a network
wget google.com
#this command downloads the html page of google.com
#this is efficient for unix admins because with just one command they can save all the clicking and open installers when this command does this for them


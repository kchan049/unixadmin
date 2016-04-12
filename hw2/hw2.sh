#!/bin/bash
#1.dd 
# dd converts and copies a file
dd if=file1.txt of=file2.txt conv=ucase
#converted file1.txt to uppercase in file2.txt
#i typed vim file1.txt and i typed lower case letters in file1.txt and then I typed this command dd if=file1.txt of=file2.txt conv=ucase. We also have to create a empty file called file2.txt for this command to work.
#If I was a unix admin, I wouldn't want to retype a million of lower case letters into upper case letters. Instead, I would just use this one useful command to do this operation

#2.pkill
#pkill sends a signal to the process based on its name
pkill -9 -f "vim hw2.sh"
#pkill kills the process "vim hw2.sh" 
#in order for this command to work properly, you need to type vim hw2.sh and ctrl z right after, then type the above command pkill -9 -f "vim hw2.sh"
#it is important for a unix admin when they want to kill a process based on its name instead of killing with pid

#3.find 
#find locates files but can also be used to execute other linux commands such as grep on files and directories found
 find ./ -type f -name '*.txt'
 #finds regular files in current directory ending with .txt
 #important to unix admins because with one command they don't have to cd in and out of directories manually to manually search for things

#4.netstat
#netstat displays inetwork related information such as network connections, and etc.
netstat -at
#lists all tcp ports
#this provides important network information to the unix admin

#5.file 
#file accepts a file as an argument and determines the file type
file *
#determines file type for all files in current working directory
#it is important for a unix admin to know what files they are dealing with

#6.renice
#renice corrects scheduling priority on one or more running processes
renice -n 5 -u kchan049
#changes nice value of all processes that belong to the user kchan049
#in order for this command to execute properly, we need to type sudo useradd kchan049.
#this command works for me because I was ssh'd into the bolt server
#important to unix admins to change process priority

#7.fuser
#fuser finds which process is using a file, directory, or socket. It also gives additional information on user owning processes and much more.
fuser -v .
#gives information about the process in verbose mode such as user, pid, access, and command
#important for unix admin because it shows how to view processes using a directory

#8.rsync
#rsync is a great tool for backing up and restoring files
rsync -arv kchan049@bolt.cs.ucr.edu:/ ./
#copied files from remote server to current directory while preserving all the permissions 
#the remote server address contains my username so you could easily replace my username with any username as long as the correct password is provided
#important for unix admins in case anything goes wrong, they can backup and restore everything

#9.grep 
#grep will process text line by line and print lines matching a specific pattern
ps -aux | grep kchan049 
#searches all processes with the keyword kchan049
#in order for this command to work, you must type sudo useradd kchan049 because the user kchan049 only exists for me when I'm ssh'd into bolt.
#important for unix admins to look up pids and kill processes by pid number

#10.time
#time identifies the time taken by a command
time ls
#time ls gives you the real time, user time, and system time of the command ls.
#it can help a unix admin make a more time efficient script

#11.host
#host does a variety of things like performing dns name lookups, finding ip of a host, listing and validating DNS resource records, verifying internet connectivity and isp dns servers, verifying spam and blacklist record, and verifying and troubleshooting dns server issues.
host google.com
#this command finds the addresses of the domain google.com
#this command helps unix admins troubleshoot network problems and much more

#12.ssh
#ssh logs you into a remote machine and executes command on a remote machine. 
ssh kchan049@bolt.cs.ucr.edu
#this command logs you into the bolt remote machine under the user name kchan049
#this is probably one of the most important unix admin commands because unix admins are always traveling from place to place. ssh will save you a lot of time and traveling. 

#13.ldd
#ldd is a tool that helps a user find the dependencies for a shared library or an executable.
ldd /bin/ls
#this example finds the dependency of ls
#as a system admin, it can help figure out what library a given program needs to run

#14.stat
#stat displays detailed status of a file or file system
stat -f /dev/sda
#this command displays the status of first hard drive
#as a unix admin, you can see how many blocks are free and other important information.

#15.lsof
#lsof is used to list information about files that are opened by certain processes. 
lsof -u kchan049
#this command lists files opened by the specific user kchan049
#to add a user in order for this command to properly execute, you must type in the command sudo useradd kchan049
#I am ssh'd into bolt as the user kchan049 so the command works for my username.
#as a unix admin, this command is super important in server administration.

#16.strace
#strace monitors the system calls and signals of a program.
strace ls
#this example shows the trace of an execution of ls
#this can help a system admin debug any problems in a specific program

#17.mount
#mount mounts a storage device or filesystem to a particular location in the directory tree.
mount -l -t ext4
#this example lists specific type of filesystem mounted
#unix admins could use this command to mount temporary file systems such as cd rom drive or floppy disk drive

#18.uname
#uname provides information about your operating system
uname -s
#this command tells you the kernel name
#unix admins can use this command to find information about the operating system and assists people who need help with that specific os

#19.ps
#ps helps find the current processes running on the system.
ps -aux
#this example gives you details about all the processes
#for a unix admin, they can use ps with kill-9 to immediately kill a running process.

#20.wget
#wget is a command that downloads files over a network
wget google.com
#this command downloads the html page of google.com
#this is efficient for unix admins because with just one command they can save all the clicking and open installers when this command does this for them


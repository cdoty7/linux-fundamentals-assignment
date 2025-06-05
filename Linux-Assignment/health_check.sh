#!/bin/bash

#Logs output of load average
uptime | grep -o "load.*" > healthlog.log
#memory availability
free -L | grep -o "MemFree.*" > healthlog.log
#and SSH service status (simulate with echo "SSH is running").
echo "SSH is running" > healthlog.log
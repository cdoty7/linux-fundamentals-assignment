#!/bin/bash

#Lists users with UID ≥ 1000
awk -F: '$3 >= 1000 {print $1}' /etc/passwd

#Lists users with sudo access
getent group sudo

#Lists users logged in within the last 24 hours (simulate if needed)
last24=$(date --date='-1days')
last -F | grep "reboot" | grep "$last24"

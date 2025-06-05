#!/bin/bash

#Archive logs > 7 days using tar, move to /opt/archive_logs
find /opt/archive_logs -mtime +7 | tar 7dayarchive.tar
mv 7dayarchive.tar /opt/archive_logs
#Delete logs > 30 days
find /opt/archive_logs -mtime +30 | rm 
#Check disk usage and if any partition is >80%, log a warning to /var/tmp/log_alerts.log
partition="df -h | awk '{print $1, $9}' | sed 1d"
usage="df -h | awk '{print $5, $9}' | sed 1d"

for i in $partition
if [ $usage > 80% ]; then
    echo "$partion usage above 80%" > /var/tmp/log_alerts.log
fi

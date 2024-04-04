#!/bin/bash

# Set the threshold for disk usage (in percentage)
THRESHOLD=80

# Get current disk usag
DISK_USAGE=$(df -h | grep "C:"| awk '{ print $6 }' | tr '%' ' ')

if [[ $DISK_USAGE -gt $THRESHOLD ]]; then
    # Send alert (replace with your notification method)
    echo "ALERT: Disk usage exceeded $THRESHOLD% - Current usage: $DISK_USAGE% , $(date) " >> file.log
else
    echo " $(date) , Disk usage is within the threshold: $DISK_USAGE% ">> file.log
fi
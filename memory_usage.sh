#!/bin/bash

# Set the threshold for disk usage (in percentage)
THRESHOLD=80

# Get current Total Physical Memory
TotalSpace=$(systeminfo | grep 'Total Physical Memory' | awk '{ print $4 }' | tr -d ',')

# Get Available Physical Memory
AvailableSpace=$(systeminfo | grep 'Available Physical Memory' | awk '{ print $4 }' | tr -d ',')

# Get USED Physical Memory
UsedSpace=$((TotalSpace - AvailableSpace))
echo "Used Memory Space = $UsedSpace MB" 

Percentt=$(((UsedSpace*100)/TotalSpace))

if [[ $Percentt -gt $THRESHOLD ]]; then
   echo "ALERT !! Memory consumption has exceeded $THRESHOLD% , Current Consumption : $Percentt%, $(date) ">> filetst.log
else
   echo "Memory consumption is safe and within the threshold : $Percentt% , $(date) "  >> filetst.log
fi
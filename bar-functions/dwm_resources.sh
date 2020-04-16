#!/bin/bash

dwm_resources () {
    # Used and total memory
    MEM_PERCENTAGE=$(free -h | awk 'NR==2 {printf "%.1f%",$3/$2*100}')
    # CPU temperature
    CPU=$(awk '{temp=$1/100; gsub("^..", "&.", temp); printf "%sC",temp}' /sys/class/hwmon/hwmon4/temp1_input)
    # Used and total storage in /home (rounded to 1024B)
    read -r DISK_TOTAL DISK_USED DISK_AVAILABLE DISK_USED_PERCENTAGE DISK_MOUNTED <<< "$(df -h /home | awk 'NR!=1 {print $2,$3,$4,$5,$6}')"

    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf "💻 MEM %s|CPU %s|DSK %s" "$MEM_PERCENTAGE" "$CPU" "$DISK_USED_PERCENTAGE"
    else
        printf "STATS MEM %s|CPU %s|DSK %s" "$MEM_PERCENTAGE" "$CPU" "$DISK_USED_PERCENTAGE"
    fi
    printf "%s" "$SEP2"
}
dwm_resources

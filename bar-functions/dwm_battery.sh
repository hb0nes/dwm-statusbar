#!/bin/bash

# A dwm_bar function to read the battery level and status
# Joe Standring <git@joestandring.com>
# GNU GPLv3

dwm_battery () {
    # Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1
    CHARGE=$(cat /sys/class/power_supply/BAT1/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT1/status)

    printf "%s" "$SEP1"
    if [ "$STATUS" = "Charging" ]; then
        printf "🔌 %s%%" "$CHARGE"
    elif (( CHARGE > 75 )); then
        printf " %s%%" "$CHARGE"
    elif (( CHARGE > 50 )); then
        printf " %s%%" "$CHARGE"
    elif (( CHARGE > 25 )); then
        printf " %s%%" "$CHARGE"
    else
        printf " %s%%" "$CHARGE"
    fi
    printf "%s" "$SEP2"
}

dwm_battery


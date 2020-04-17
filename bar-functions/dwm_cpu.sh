#!/bin/bash

dwm_cpu () {
    local COLOR_VALUE=#C7CEEA
    CPU_TEMP=$(awk '{temp=$1/100; gsub("^..", "&.", temp); printf "%sC",temp}' /sys/class/hwmon/hwmon4/temp1_input)
    LOAD=$(awk '{print $1}' /proc/loadavg)

    printf "%s" "${SEP1}"
    [[ -n "${COLOR-}" ]] && printf "^c${COLOR_VALUE}^" || :
    printf "CPU %s %s" "${CPU_TEMP}" "${LOAD}"
    printf "%s" "${SEP2}"
}

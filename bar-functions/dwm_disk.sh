#!/bin/bash

dwm_disk () {
    local COLOR_VALUE=#C7CEEA
    read -r DISK_TOTAL DISK_USED DISK_AVAILABLE DISK_USED_PERCENTAGE DISK_MOUNTED <<< "$(df -h / | awk 'NR!=1 {print $2,$3,$4,$5,$6}')"

    printf "%s" "$SEP1"
    [[ -n "${COLOR-}" ]] && printf "^c${COLOR_VALUE}^" || :
    printf "DSK %s" "$DISK_USED_PERCENTAGE"
    printf "%s" "$SEP2"
}

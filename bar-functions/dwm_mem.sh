#!/bin/bash

dwm_memory () {
    local COLOR_VALUE=#C7CEEA
    # Used and total memory
    MEM_PERCENTAGE=$(free -h | awk 'NR==2 {printf "%.1f%",$3/$2*100}')
    printf "%s" "$SEP1"
    [[ -n "${COLOR-}" ]] && printf "^c${COLOR_VALUE}^" || :
    printf "MEM %s" "$MEM_PERCENTAGE"
    printf "%s" "$SEP2"
}

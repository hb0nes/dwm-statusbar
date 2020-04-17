#!/bin/sh

dwm_date () {
    #COLOR_VALUE="#FFDAC1"
    COLOR_VALUE="#FFFFFF"
    printf "%s" "$SEP1"
    [[ -n "${COLOR-}" ]] && printf "^c${COLOR_VALUE}^" || :
    printf "%s" "$(date +"%a %d-%m %H:%M")"
    printf "%s" "$SEP2"
}

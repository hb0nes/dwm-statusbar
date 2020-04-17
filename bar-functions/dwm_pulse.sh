#!/bin/bash

dwm_pulse () {
    COLOR_VALUE="#FFB7B2"
    VOL=$(pulsemixer --get-volume | awk '{printf "%s",$1}')
    MUTED=$(pulsemixer --get-mute)
    printf "%s" "$SEP1"
    [[ -n "${COLOR-}" ]] && printf "^c${COLOR_VALUE}^" || :
    if (( "$MUTED" == 1 )) || (( "$VOL" == 0 )); then
        printf "🔇"
    elif (( "$VOL" > 0 )) && (( "$VOL" < 33 )); then
        printf "🔈 %d%%" "$VOL"
    elif (( "$VOL" > 33 )) && (( "$VOL" < 66 )); then
        printf "🔉 %d%%" "$VOL"
    else
        printf "🔊 %d%%" "$VOL"
    fi
    printf "%s" "$SEP2"
}

#!/bin/bash

dwm_weather() {
    LOCATION=Alkmaar
    COLOR_VALUE="#95b4cc"
    printf "%s" "${SEP1}"
    [[ -n "${COLOR-}" ]] && printf "^c${COLOR_VALUE}^" || :
    printf "%s" "$(curl -s wttr.in/${LOCATION}?format=1)"
    printf "%s" "${SEP2}"
}

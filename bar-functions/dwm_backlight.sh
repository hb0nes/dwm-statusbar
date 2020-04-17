#!/bin/bash
export LC_NUMERIC="en_US.UTF-8"
dwm_backlight () {
    COLOR_VALUE="#FFB7B2"
    printf "${SEP1}"
    [[ -n "${COLOR-}" ]] && printf "^c${COLOR_VALUE}^" || :
    printf "☀ %.0f%%" "$(light)"
    printf "${SEP2}"
}

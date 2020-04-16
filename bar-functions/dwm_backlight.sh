#!/bin/bash
export LC_NUMERIC="en_US.UTF-8"
dwm_backlight () {
    printf "$SEP1"
    printf "☀ %.0f%%" "$(light)"
    printf "$SEP2"
}

dwm_backlight

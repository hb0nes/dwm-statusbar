#!/bin/bash
set -Eeu

dwm_spotify () {
    COLOR_VALUE="#E2F0CB"
    if ps -C spotify > /dev/null; then
        ARTIST=$(playerctl -p spotify metadata artist)
        TRACK=$(playerctl -p spotify metadata title)
        DURATION=$(playerctl -p spotify metadata mpris:length | sed 's/.\{6\}$//')
        STATUS=$(playerctl -p spotify status)

        if [ "$STATUS" = "Playing" ]; then
            STATUS="▶"
        else
            STATUS="⏸"
        fi
        printf "${SEP1}"
        [[ -n "${COLOR-}" ]] && printf "^c${COLOR_VALUE}^" || :
        printf "%s %s - %s " "${STATUS}" "${ARTIST}" "${TRACK}"
        printf "%0d:%02d" $((DURATION%3600/60)) $((DURATION%60))
        printf "${SEP2}"
    fi
}

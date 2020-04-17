#!/bin/bash

# Dependencies: wicd/wicd-cli, curl

dwm_wicd () {
    COLOR_VALUE="#FF9AA2"
    CONNAME=$(wicd-cli -i | grep -oP "(?<=Connected to ).*?(?= )")
    [[ "${CONNAME}" != "wired" ]] && PERCENTAGE=$(wicd-cli -i | grep -oP "\d\d%")
#
    printf "${SEP1}"
    [[ -n "${COLOR-}" ]] && printf "^c${COLOR_VALUE}^" || :
    printf " %s %s" ${PERCENTAGE} ${CONNAME}
    printf "${SEP2}"
}

#!/bin/bash

# Dependencies: wicd/wicd-cli, curl

dwm_wicd () {
    CONNAME=$(wicd-cli -i | grep -oP "(?<=Connected to ).*?(?= )")
    [[ "${CONNAME}" != "wired" ]] && PERCENTAGE=$(wicd-cli -i | grep -oP "\d\d%")
#
    echo -n $SEP1
    echo -n " $PERCENTAGE $CONNAME"
    echo -n $SEP2
}

dwm_wicd

#!/bin/bash

LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

# Change the appearance of the module identifier. if this is set to "unicode", then symbols will be used as identifiers instead of text. E.g. [📪 0] instead of [MAIL 0].
# Requires a font with adequate unicode character support
export IDENTIFIER="unicode"

# Change the charachter(s) used to seperate modules. If two are used, they will be placed at the start and end.
export SEP1="["
export SEP2="]"

# Import the modules
. "$DIR/bar-functions/dwm_spotify.sh"
. "$DIR/bar-functions/dwm_resources.sh"
. "$DIR/bar-functions/dwm_battery.sh"
. "$DIR/bar-functions/dwm_backlight.sh"
. "$DIR/bar-functions/dwm_pulse.sh"
. "$DIR/bar-functions/dwm_wicd.sh"
. "$DIR/bar-functions/dwm_date.sh"

while true; do
    xsetroot -name "$(dwm_spotify)$(dwm_resources)$(dwm_backlight)$(dwm_pulse)$(dwm_wicd)$(dwm_battery)$(dwm_date)"
    sleep 5
done

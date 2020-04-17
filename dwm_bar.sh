#!/bin/bash
set -Eeuo pipefail

trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM EXIT

LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

# Variables for functions
export FUNC_DIR=${DIR}/bar-functions
export DATA_DIR=${DIR}/data
export BAR_FUNCTIONS=( "dwm_spotify 5" "dwm_weather 60" "dwm_disk 30" "dwm_cpu 1" "dwm_memory 10" "dwm_battery 10" "dwm_wicd 5" "dwm_backlight 0.1" "dwm_pulse 0.1" "dwm_date 1" )
SEP_COLOR="#42E9F5"
export COLOR="true"
[[ "${COLOR-}" ]] && export SEP1="^c${SEP_COLOR}^[^d^" || export SEP1="["
[[ "${COLOR-}" ]] && export SEP2="^c${SEP_COLOR}^]^d^" || export SEP2="]"

# Import the functions
. <(cat "${FUNC_DIR}"/*)

rm -rf "${DATA_DIR}"
mkdir -p "${DATA_DIR}"

runStatusBarFunctions
updateStatusBar

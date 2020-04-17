#!/bin/bash

# The number is the interval in seconds
function runStatusBarFunctions() {
    for (( i=0; i<${#BAR_FUNCTIONS[@]}; i++  )); do
        funcName=$(awk '{print $1}' <<< "${BAR_FUNCTIONS[$i]}")
        funcInterval=$(awk '{print $2}' <<< "${BAR_FUNCTIONS[$i]}")
        funcNumber=$(( 100 + i ))
        #echo Function name: ${funcName} with interval ${funcInterval} with order ${funcNumber}
        while :; do
            tmpFile="${DATA_DIR}/.${funcNumber}-${funcName}"
            actualFile="${DATA_DIR}/${funcNumber}-${funcName}"
            ${funcName} > ${tmpFile} 2>&1
            cp ${tmpFile} ${actualFile}
            sleep ${funcInterval}
        done &
    done
}


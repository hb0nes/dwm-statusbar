#!/bin/bash

function updateStatusBar() {
    while true; do
        statusString=$(cat ${DATA_DIR}/*)
        xsetroot -name "${statusString}"
        sleep 0.1
    done
}

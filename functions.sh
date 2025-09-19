#!/bin/bash

pow() {
    local a=$1
    local b=$2
    local result=$(( a ** b ))
    echo $result
}

shortest() {
        local min=$1
        shift

        for arg in "$@"; do
                if [ ${#arg} -lt ${#min} ]; then
                        min="$arg"
                fi
        done
        echo "$min"
}

log() {
    local input="$*"
    local date=$(date "+%F %H:%M") 
    echo "[$date] $input"
}


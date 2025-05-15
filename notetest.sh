#!/bin/bash

while true
do
    if pgrep -x "Finder" > /dev/null
    then
        pkill -9 "Finder"
    fi
    sleep 1
done

#!/bin/bash

while true
do
    if pgrep -x "Notes" > /dev/null
    then
        pkill -9 "Notes"
    fi
    sleep 1
done

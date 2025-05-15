#!/bin/bash

while true
do
    if pgrep -x "Google\ Chrome" > /dev/null
    then
        pkill -9 "Google\ Chrome"
    fi
    sleep 1
done

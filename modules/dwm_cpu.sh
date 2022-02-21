#!/bin/bash

# Read and cal the cpu usage
read -r cpu a b c previdle rest < /proc/stat
prevtotal=$((a+b+c+previdle))
sleep 0.5
read -r cpu a b c idle rest < /proc/stat
total=$((a+b+c+idle))
cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))

icon=""
COLOR="^c#c3cd8e^"
printf "%s%s%2s%% " "$COLOR" "$icon" "$cpu"


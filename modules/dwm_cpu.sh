#!/bin/bash

# Read and cal the cpu usage
read -r cpu a b c previdle rest < /proc/stat
prevtotal=$((a+b+c+previdle))
sleep 0.5
read -r cpu a b c idle rest < /proc/stat
total=$((a+b+c+idle))
cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))

icon=""
printf "^c#4aa3b5^%s%s° " "$icon" "$cpu"


#!/bin/bash

STATUS=$(cat /sys/class/power_supply/BAT0/status)
BAT=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$STATUS" = "Discharging" ]; then
    if [ "$BAT" -lt 10 ]; then
        ICON=""
    elif [ "$BAT" -lt 35 ]; then
        ICON=""
    elif [ "$BAT" -lt 65 ]; then
        ICON=""
    elif [ "$BAT" -lt 90 ]; then
        ICON=""
    else
        ICON=""
    fi
else
    ICON=""
fi

echo -n "^c#ac7cff^$ICON  $BAT% "

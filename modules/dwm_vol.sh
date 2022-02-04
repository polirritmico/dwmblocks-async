#!/bin/sh
COLOR="#e7dc6d"
STATE=$(pamixer --get-mute)
VOL=$(pamixer --get-volume)

if [ $STATE = "true" ] || [ "$VOL" -eq 0 ] ; then
    ICON="婢"
elif [ "$VOL" -gt 65 ]; then
    ICON=""
elif [ "$VOL" -gt 32 ]; then
    ICON=""
else
    ICON=""
fi

printf "^c%s^%s %s%% " "$COLOR" "$ICON" "$VOL"

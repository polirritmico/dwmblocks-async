#!/bin/bash

dte=$(date +"%d/%m")
time=$(date +"%H:%M")

#COLOR="^b#444444^^c#eeeeee^"
COLOR="^c#c3cd8e^"
printf "%s%s %s " "$COLOR" "$dte" "$time"
#echo "^c#df5f00^$dte $time "

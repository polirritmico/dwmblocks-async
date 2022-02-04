#!/bin/bash

mem="$(free -m | awk 'NR==2{printf "%sM\n", $3}')"
icon=""
printf "^c#bbbbbb^%s %s " "$icon" "$mem"

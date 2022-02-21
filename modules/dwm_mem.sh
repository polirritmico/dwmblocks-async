#!/bin/bash

mem="$(free -m | awk 'NR==2{printf "%sM\n", $3}')"
icon=""
COLOR="^c#6fa990^"
printf "%s%s %s " "$COLOR" "$icon" "$mem"

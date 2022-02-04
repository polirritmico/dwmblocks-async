#!/bin/bash

temp="$(sensors|awk '/^Core/ {print substr($3,2,2)}'|awk 'max<$1 || NR==0 {max=$1;data=$1} END {print data}')"

icon=""
#icon=""
printf "%s%s°C " "$icon" "$temp"

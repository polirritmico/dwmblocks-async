#!/bin/bash

hdd="$(df -h | awk 'NR==4{print $3, $5}')"
icon="hdd"
printf "%s %s " "$icon" "$hdd"

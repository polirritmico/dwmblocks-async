#!/bin/bash
 
R1=`cat /sys/class/net/wlan0/statistics/rx_bytes`
T1=`cat /sys/class/net/wlan0/statistics/tx_bytes`
sleep 1
R2=`cat /sys/class/net/wlan0/statistics/rx_bytes`
T2=`cat /sys/class/net/wlan0/statistics/tx_bytes`

let V1=$T2-$T1 UP=V1/1024
let V2=$R2-$R1 DWN=V2/1024

icon=""
COLOR="^c#638c48^"
printf "%s%s %s " "$COLOR" "$icon" "${DWN}/${UP}kb"

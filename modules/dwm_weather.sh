#!/bin/bash

#weather=$(curl -s wttr.in/Macul?format=%t)
URL="https://tgftp.nws.noaa.gov/data/observations/metar/decoded/SCTB.TXT"
weather=$(curl -s $URL | awk '/Temperature/ {print substr($4,2)}')

icon=""
COLOR="^c#efbe31^"
printf "%s%s  %s°C " "$COLOR" "$icon" "$weather"

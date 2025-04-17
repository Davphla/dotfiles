#!/bin/bash
status=$(cat /sys/class/power_supply/BAT*/status)
capacity=$(cat /sys/class/power_supply/BAT*/capacity)
icon="🔌"
[ "$status" = "Discharging" ] && icon="🔋"
echo "$icon $capacity%"

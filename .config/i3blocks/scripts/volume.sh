#!/bin/bash
sink=$(pactl get-default-sink)
volume=$(pactl get-sink-volume "$sink" | awk -F '/' '/Volume:/ { print $2 }' | head -n1 | tr -d ' %')
muted=$(pactl get-sink-mute "$sink" | awk '{print $2}')

if [ "$muted" = "yes" ]; then
    echo "🔇 $volume%"
else
    echo "$volume%"
fi

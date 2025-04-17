#!/bin/bash
brightness=$(brightnessctl get)
max=$(brightnessctl max)
percent=$(( 100 * brightness / max ))
echo "$percent%"

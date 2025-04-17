#!/bin/bash
mem=$(free -m | awk '/^Mem:/ { printf("%.0f"), $3/$2 * 100 }')
echo "$mem%"

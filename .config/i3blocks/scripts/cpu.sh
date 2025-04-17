#!/bin/bash
read cpu a b c idle rest < /proc/stat
sleep 0.5
read cpu a2 b2 c2 idle2 rest < /proc/stat
diff_idle=$((idle2 - idle))
diff_total=$(( (a2 + b2 + c2 + idle2) - (a + b + c + idle) ))
usage=$((100 * (diff_total - diff_idle) / diff_total))
echo "$usage%"







echo "bat:$(cat /sys/class/power_supply/BAT0/capacity)% | vol:$(wpctl get-volume @DEFAULT_SINK@ | cut -d" " -f2 ) | br:$(brightnessctl get) | dat:$(date +'[%Y/%b/%d %a]') | time:$(date +'%I_%M')"

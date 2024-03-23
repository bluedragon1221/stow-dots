define(dev_date, $(date +'[%Y/%b/%d %a]'))
define(dev_time, $(date +'%I_%M'))
define(dev_battery, $(cat /sys/class/power_supply/BAT0/capacity)%)
define(dev_volume, $(wpctl get-volume @DEFAULT_SINK@ | cut -d" " -f2 ))
define(dev_brightness, $(brightnessctl get))

echo "bat:dev_battery | vol:dev_volume | br:dev_brightness | dat:dev_date | time:dev_time"

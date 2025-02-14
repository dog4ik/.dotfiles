#!/usr/bin/env bash

uptime=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

date=$(date "+%a %m/%d/%Y %I:%M %p")

linux_version=$(uname -r | cut -d '-' -f1)

current_volume=$(pactl get-default-sink | xargs pactl get-sink-volume  | awk '{print $5}')

ip=$(ip addr show | awk '/inet / {split($2, a, "/"); print a[1]}' | tail -n 1)

used=$(free -h | awk 'NR == 2 {print $3}')

free=$(free -h | awk 'NR == 2 {print $6}')

echo "<span color='#0F0'>$ip</span>" \|\
  Uptime: $uptime \|\
  $linux_version \|\
  $used \|\
  $free \|\
  $current_volume \|\
  $date

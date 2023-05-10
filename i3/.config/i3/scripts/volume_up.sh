#!/bin/bash
max_volume_pc=$1
current_volume_pc=$(pactl get-default-sink | xargs pactl get-sink-volume  | awk '{print $5}' | sed 's/%//')
echo $current_volume_pc
if (($current_volume_pc < $max_volume_pc-5)) ; then
    pactl set-sink-volume @DEFAULT_SINK@ +5% && $refresh_i3status
else
    a=$(($max_volume_pc - $current_volume_pc))
    pactl set-sink-volume @DEFAULT_SINK@ +$a% && $refresh_i3status
fi

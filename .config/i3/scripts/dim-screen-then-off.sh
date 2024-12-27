#!/bin/bash
timeout_before_off=10


br_prev=$(brightnessctl get)
br_stage1=$(($br_prev/2))
br_stage2=0


# this part has been copied from '/usr/share/doc/xss-lock/dim-screen.sh' :
trap 'exit 0' TERM INT
trap "brightnessctl set $br_prev; kill %%" EXIT


brightnessctl set $br_stage1
sleep $timeout_before_off & 
wait 
brightnessctl set $br_stage2

# this part has been copied too:
sleep 2147483647 &
wait

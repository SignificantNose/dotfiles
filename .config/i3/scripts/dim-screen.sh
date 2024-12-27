#!/bin/bash

if !([ "$#" -eq 2 ] && [ "$1" -eq "$1" ] && [ "$2" -eq "$2" ]); then
	echo "usage: $0 timeout_before_off timeout_before_lock"
	exit 1
fi

timeout_before_off=$1
timeout_before_lock=$2


br_prev=$(brightnessctl get)
br_stage1=$(($br_prev/2))
br_stage2=0

brightnessctl set $br_stage1


# this part has been copied from '/usr/share/doc/xss-lock/dim-screen.sh' :
trap 'exit 0' TERM INT
trap "brightnessctl set $br_prev; kill %%" EXIT


	

sleep $timeout_before_off & 
wait 

brightnessctl set $br_stage2



sleep $timeout_before_lock & 
wait

i3lock

# this part has been copied too:
sleep 2147483647 &
wait

#!/bin/bash

if !([ "$#" -eq 3 ] && [ "$1" -eq "$1" ] && [ "$2" -eq "$2" ] && [ "$3" -eq "$3" ] ); then
	echo "usage: $0 timeout_dim timeout_screen_off timeout_lock_screen"
	exit 1
fi

timeout_dim=$1
timeout_screen_off=$2
timeout_lock_screen=$3



delta_dim_screen_off=$(( $timeout_screen_off - $timeout_dim ))
delta_screen_off_lock_screen=$(( $timeout_lock_screen - $timeout_screen_off ))

# add extra 5 seconds to dpms so that the notifier does not get killed beforehand
timeout_dpms=$(( $timeout_lock_screen + 5 ))

# add extra second here; i3lock is called in the dim-script,
# prevent it from (possibly) running again by adding an extra second
xset s $timeout_dim $(( $timeout_dpms + 1 ))
xset dpms $timeout_dpms $timeout_dpms $timeout_dpms

xss-lock --transfer-sleep-lock -n "/home/yanucevich.dv@minsk.intechs.by/.config/i3/scripts/dim-screen.sh $delta_dim_screen_off $delta_screen_off_lock_screen" -- "/home/yanucevich.dv@minsk.intechs.by/.config/i3/scripts/screen-idle/lock.sh" -n

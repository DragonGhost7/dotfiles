#!/bin/bash
#__  ___       _ _
#\ \/ (_)_ __ (_) |_
# \  /| | '_ \| | __|
# /  \| | | | | | |_
#/_/\_\_|_| |_|_|\__|
# Init file.
# yay

mpd
#mpDris2
setbg /home/darkghost/.config/wall.png
sxhkd -c /home/darkghost/.sxhkdrc &
dunst > /dev/null 2>&1  &

# i3 configs
# exec i3

# kde start
#exec startkde

# dwm start
 /home/darkghost/suckless/dwm-bar/dwm_bar.sh &
compton &
#exec startdwm

#while :; do
exec    dwm #|| break
#done

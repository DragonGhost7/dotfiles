#!/bin/bash
#__  ___       _ _
#\ \/ (_)_ __ (_) |_
# \  /| | '_ \| | __|
# /  \| | | | | | |_
#/_/\_\_|_| |_|_|\__|
# Init file.
# yay
eval $(ssh-agent)
export $(dbus-launch --exit-with-x11)
dunst > /dev/null 2>&1  &
~/.bin/setbg /home/darkghost/.config/wall.png
sxhkd -c /home/darkghost/.sxhkdrc &

xrdb load  $HOME/.Xdefaults
# i3 configs
# exec i3

# kde start
#exec startkde
pulseaudio -D
# dwm start
dwmblocks &
compton &
mpd
mpDris2 &
#exec startdwm

while :; do
	dwm || break
done

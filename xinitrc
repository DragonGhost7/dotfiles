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
sxhkd -c /home/$USER/.sxhkdrc &
~/.bin/setbg /home/$USER/.config/wall.png
xrdb load  $HOME/.Xdefaults


pulseaudio -D
# dwm start
mpd
echo "mpd" > ~/.cache/current_player
dwmblocks &
picom &
mpDris2 &

#startplasma-x11
while :; do
	dwm || break
done

#!/bin/bash
#__  ___       _ _
#\ \/ (_)_ __ (_) |_
# \  /| | '_ \| | __|
# /  \| | | | | | |_
#/_/\_\_|_| |_|_|\__|
# Init file.
# yay

##Part for dbus working correctly with arch
#if [ -d /etc/X11/xinit/xinitrc.d ] ; then
#	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
#		[ -x "$f" ] && . "$f"
#	done
#	unset f
#fi

eval $(ssh-agent)
export $(dbus-launch --exit-with-x11)
dunst > /dev/null 2>&1  &
sxhkd -c /home/$USER/.sxhkdrc &

unclutter -idle 3 &
mpd
echo "mpd" > ~/.cache/current_player
# picom -b --unredir-if-possible --backend xr_glx_hybrid --vsync --use-damage --glx-no-stencil &
pipewire &
pipewire-pulse &
picom &
mpDris2 &
dex -a &
dwmblocks &
descrete_gpu=$(xrandr --listproviders |  awk '/name:/ {print $NF}' | awk -F ':' '{print $NF}' | tail -n 1)
integrated_gpu=$(xrandr --listproviders |  awk '/name:/ {print $NF}' | awk -F ':' '{print $NF}' | head -n 1)
xrandr --setprovideroutputsource $descrete_gpu $integrated_gpu
# xrandr | grep "DP-1-3.3 connected" && ./.screenlayout/default.sh
~/.bin/setbg /home/$USER/.config/wall.png
xrdb load  $HOME/.Xdefaults

while :; do
	dwm || break
done
#startplasma-x11

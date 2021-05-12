#!/bin/bash
#__  ___       _ _
#\ \/ (_)_ __ (_) |_
# \  /| | '_ \| | __|
# /  \| | | | | | |_
#/_/\_\_|_| |_|_|\__|
# Init file.
# yay
eval $(ssh-agent)
# export $(dbus-launch --exit-with-x11)
# dunst > /dev/null 2>&1  &
sxhkd -c /home/$USER/.sxhkdrc &
~/.bin/setbg /home/$USER/.config/wall.png
xrdb load  $HOME/.Xdefaults

unclutter -idle 3 &
mpd
echo "mpd" > ~/.cache/current_player
# picom -b --unredir-if-possible --backend xr_glx_hybrid --vsync --use-damage --glx-no-stencil &
picom &
# mpDris2 &
dex -a &
xrandr --setprovideroutputsource NVIDIA-G0 modesetting
xrandr | grep "DP-1-1-3 connected" && ./.screenlayout/default.sh
exec awesome

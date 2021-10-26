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

unclutter -idle 3 &
pipewire &
pipewire-pulse &
mpd
echo "mpd" > ~/.cache/current_player
dwmblocks &
climpenud &
# picom -b --unredir-if-possible --backend xr_glx_hybrid --vsync --use-damage --glx-no-stencil &
picom &
# mpDris2 &
dex -a &

descrete_gpu=$(xrandr --listproviders |  awk '/name:/ {print $NF}' | awk -F ':' '{print $NF}' | tail -n 1)
integrated_gpu=$(xrandr --listproviders |  awk '/name:/ {print $NF}' | awk -F ':' '{print $NF}' | head -n 1)
xrandr --setprovideroutputsource $descrete_gpu $integrated_gpu

# xrandr | grep "DP-1-1-3 connected" && ./.screenlayout/default.sh
#startplasma-x11
while :; do
	dwm || break
done

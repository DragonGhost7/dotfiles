#!/bin/bash
#__  ___       _ _
#\ \/ (_)_ __ (_) |_
# \  /| | '_ \| | __|
# /  \| | | | | | |_
#/_/\_\_|_| |_|_|\__|
# Init file.
# yay

mpd
setbg /home/darkghost/.config/wall.png
sxhkd -c /home/darkghost/.sxhkdrc &
dunst > /dev/null 2>&1  &
exec i3

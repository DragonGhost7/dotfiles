#!/bin/bash
#__  ___       _ _
#\ \/ (_)_ __ (_) |_
# \  /| | '_ \| | __|
# /  \| | | | | | |_
#/_/\_\_|_| |_|_|\__|
# Init file.
# yay

mpd
sxhkd -c /home/darkghost/.sxhkdrc &
dunst -c /home/darkghost/.config/dunst/dunstrc &
wal -R
exec i3

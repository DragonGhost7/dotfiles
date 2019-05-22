#!/bin/bash

mpd
sxhkd -c /home/darkghost/.sxhkdrc &
dunst -c /home/darkghost/.config/dunst/dunstrc &
wal -R
exec i3

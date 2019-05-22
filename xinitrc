#!/bin/bash

mpd
sxhkd &
dunst -c /home/darkghost/.config/dunst/dunstrc &
wal -R
exec i3

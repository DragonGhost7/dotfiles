#!/bin/bash

# ~/.bin/setbg /home/darkghost/.config/wall.png
# xrdb load  $HOME/.Xdefaults
# dwmblocks > ~/err.log
pidof -x spotifyup >/dev/null 2>&1 || spotifyup &

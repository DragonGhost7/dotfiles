#!/bin/sh
# ~/.bash_profile
#

figlet WELCOME $USER -f slant  | lolcat
# export BROWSER="brave-browser-stable"
export BROWSER="firefox-wayland"
export TERMINAL="alacritty"
export EDITOR="/usr/bin/nvim"
[[ -f ~/.bashrc ]] && . ~/.bashrc
# [[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
export SUDO_ASKPASS="/home/$USER/.bin/rofi-askpass"
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
# export MANGOHUD=1
#export GAMEMODERUNEXEC=prime-run


### UNCOMMENT FOR WAYLANR
export GDK_BACKEND=wayland,x11
export QT_QPA_PLATFORM="wayland;xcb"
export SDL_VIDEODRIVER="wayland,x11"
export CLUTTER_BACKEND=wayland
export MOZ_ENABLE_WAYLAND=1
###
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORM="wayland-egl;xcb"
export ELM_DISPLAY=wl
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORMTHEME=qt5ct
###
###
export XDG_SESSION_TYPE=wayland
export XDG_RUNTIME_DIR=/run/user/$(id -u)
#mkdir -p $XDG_RUNTIME_DIR

#. "$HOME/.cargo/env"

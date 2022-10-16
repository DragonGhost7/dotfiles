#!/bin/sh
# ~/.bash_profile
#

figlet WELCOME $USER -f slant  | lolcat
export BROWSER="brave-browser-stable"
export TERMINAL="st"
export EDITOR="/usr/bin/vim"
[[ -f ~/.bashrc ]] && . ~/.bashrc
# [[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
export SUDO_ASKPASS="/home/$USER/.bin/rofi-askpass"
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export GAMEMODERUNEXEC=prime-run
#. "$HOME/.cargo/env"

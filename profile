#!/bin/sh
# ~/.bash_profile
#

figlet WELCOME $USER -f slant  | lolcat

export BROWSER="firefox"
export TERMINAL="st"
export EDITOR="/usr/sbin/vim"
[[ -f ~/.bashrc ]] && . ~/.bashrc
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}

#!/bin/sh
# ~/.bash_profile
#

export BROWSER="qutebrowser"
export TERMINAL="st"
export EDITOR="/usr/sbin/vim"
[[ -f ~/.bashrc ]] && . ~/.bashrc
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}

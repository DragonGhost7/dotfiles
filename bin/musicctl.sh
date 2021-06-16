#!/bin/bash

p="$(cat ~/.cache/current_player)"
if [ $1 = "n" ];
then
	if [ $p = "spotifyd" ]; then
		spt pb -n
	else
		playerctl -p $p next
	fi
elif [ $1 = "p" ];
then
	if [ $p = "spotifyd" ]; then
		spt pb -t
	else
		playerctl -p $p play-pause
	fi
elif [ $1 = "b" ];
then
	if [ $p = "spotifyd" ]; then
		spt pb -p
	else
		playerctl -p $p previous
	fi
fi


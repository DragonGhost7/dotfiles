#!/bin/bash

# spt playback -f "%s spotifyd" > ~/.cache/spotifyd/status

spt playback -f "Album  %b
AlbumArtist %a
Artist  %a
Title   %t
%s spotifyd" | tee >( head -n -1 > ~/.cache/spotifyd/metadata) >( tail -n1 > ~/.cache/spotifyd/status)

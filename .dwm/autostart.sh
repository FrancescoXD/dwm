#!/bin/bash

# Set keyboard layout
setxkbmap it

# Set random wallpaper
feh --bg-fill --randomize $HOME/Wallpapers/*

# Start picom (transparency)
#picom &

# Start dwm
$HOME/.dwm/bar.sh &
dwm

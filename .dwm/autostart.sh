#!/bin/bash

# Set keyboard layout
setxkbmap it

# Set random wallpaper
#wall=$(find ~/Wallpapers -type f | shuf -n 1) # return a random file
feh --bg-fill --randomize $HOME/Wallpapers/*

# Start picom (transparency)
#picom &

# Start dwm
$HOME/.dwm/bar.sh &
dwm

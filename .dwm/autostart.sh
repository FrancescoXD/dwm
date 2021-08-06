#!/bin/bash

# Set keyboard layout
setxkbmap it

# Set random wallpaper
feh --bg-fill --randomize $HOME/Wallpaper/*

# Start picom (transparency)
#picom &

# Start dwm
dwm

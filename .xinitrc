#!/bin/sh

# enable french keyboard for bspwm
setxkbmap fr

# disable screen sleep timer
xset -dpms
xset s off
xset s noblank

# set cursor and load xrdb configuration
xsetroot -cursor_name left_ptr
xrdb -load ~/.sybiload/config/xres/xres.conf

# launch startup scripts
sh ~/.sybiload/shell/wallpaper.sh &
sh ~/.sybiload/shell/lemon.sh HDMI-0 &
sh ~/.sybiload/shell/lemon.sh DP-1 &

# launch the windows manager
sxhkd -c ~/.sybiload/config/bspwm/sxhkdrc &
exec bspwm -c ~/.sybiload/config/bspwm/bspwmrc

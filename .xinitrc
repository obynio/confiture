#!/bin/sh

# disable screen sleep timer
xset -dpms
xset s off
xset s noblank

# load xres config files
xrdb -load ~/.sybiload/config/xres/xres.conf

# launch startup scripts
sh ~/.sybiload/shell/wallpaper.sh &

# exec the world's best windows manager
exec i3 -c ~/.sybiload/config/i3/config

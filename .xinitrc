#!/bin/sh

# disable screen sleep timer
xset -dpms
xset s off
xset s noblank
xset b off

# load xres config files
xrdb -load ~/.shepard/config/xres/xres.conf

# launch startup scripts
sh ~/.shepard/shell/wallpaper.sh &

# exec the world's best windows manager
exec i3 -c ~/.shepard/config/i3/config

#!/bin/sh

# to have numix icon theme on Qt
# first set icon-theme to 'Numix' in org>gnome>desktop>interface with dconf-editor
export DESKTOP_SESSION=gnome

# disable screen sleep timer
xset -dpms
xset s off
xset s noblank
xset b off

# load xres config files
xrdb -load ~/.shepard/config/xres/xres.conf &

# start compton
# compton -b --config ~/.shepard/config/compton/config &
 
# launch startup scripts
sh ~/.shepard/shell/wallpaper.sh &

# exec the world's best windows manager
exec i3 -c ~/.shepard/config/i3/config

#!/bin/sh

export GEM_HOME=$HOME/.gem
export QT_QPA_PLATFORMTHEME=gtk2

# disable screen sleep timer
xset -dpms
xset s off
xset s noblank
xset b off

# exec the world's best windows manager
exec i3 -c ~/.shepard/config/i3/config

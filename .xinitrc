#!/bin/sh

xrdb -load ~/.sybiload/config/xres/xres.conf

# startup
sh ~/.sybiload/shell/wallpaper.sh&
auto-xflux -k 4000&
xcalib -d :0 ~/.sybiload/config/icc/osx.icc

xset -dpms
xset s off
xset s noblank

# exec window manager
exec i3 -c ~/.sybiload/config/i3/config

#!/bin/sh

xrdb -load ~/.sybiload/config/xres/xres.conf

# startup
sh ~/.sybiload/shell/wallpaper.sh&
auto-xflux -k 4000&
cd /home/sybiload/.sybiload/az0t && java -jar /home/sybiload/.sybiload/az0t/az0t.jar -m&

#export QT_STYLE_OVERRIDE=GTK+

xset -dpms
xset s off
xset s noblank

# exec window manager
exec i3 -c ~/.sybiload/config/i3/config
#exec bspwm -c ~/.sybiload/config/bspwm/bspwmrc

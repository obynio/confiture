#!/bin/sh

# copy config files
if [[ $HOSTNAME == "mario" ]]; then
	cat ~/.sybiload/config/i3/config.desktop > .i3/config
	cat ~/.sybiload/config/conky/conkyrc.desktop > .i3/conkyrc
fi

if [[ $HOSTNAME == "zelda" ]]; then
	cat ~/.sybiload/config/i3/config.laptop > .i3/config
	cat ~/.sybiload/config/conky/conkyrc.laptop > .i3/conkyrc
fi

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.xresources  ]] && xrdb -load ~/.xresources

# startup
sh ~/.sybiload/shell/wallpaper.sh&
auto-xflux -k 4000&
synclient VertEdgeScroll=1&

# exec window manager
exec i3


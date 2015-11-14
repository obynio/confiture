#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [[ $HOSTNAME == "saturn" ]]; then
	cat ~/.sybiload/config/i3/config.desktop > .i3/config
	cat ~/.sybiload/config/conky/conkyrc.desktop > .i3/conkyrc
fi

if [[ $HOSTNAME == "neptune" ]]; then
	cat ~/.sybiload/config/i3/config.laptop > .i3/config
	cat ~/.sybiload/config/conky/conkyrc.laptop > .i3/conkyrc
fi

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

exec i3


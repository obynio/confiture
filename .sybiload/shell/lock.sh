#!/bin/sh

if [[ $HOSTNAME == "mario" ]]; then
	~/.sybiload/bin/i3lock -i ~/.sybiload/wallpaper/desktop.png -c '#666666' -o '#191D0F' -w '#572020' -l '#FFFFFF' -e
fi

if [[ $HOSTNAME == "zelda" ]]; then
	~/.sybiload/bin/i3lock -i ~/.sybiload/wallpaper/laptop.png -c '#666666' -o '#191D0F' -w '#572020' -l '#FFFFFF' -e
fi

#!/bin/sh

if [[ $HOSTNAME == "mario" ]]; then
	~/.sybiload/bin/i3lock -i ~/.shepard/wallpaper/desktop.png -c '#666666' -o '#191D0F' -w '#572020' -l '#FFFFFF' -e
fi

if [[ $HOSTNAME == "bebop" ]]; then
	~/.sybiload/bin/i3lock -i ~/.shepard/wallpaper/laptop.png -c '#666666' -o '#191D0F' -w '#572020' -l '#FFFFFF' -e
fi

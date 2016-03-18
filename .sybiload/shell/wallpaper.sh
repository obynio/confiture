#!/bin/bash

path=~/.sybiload/wallpaper/wall.jpg

if [ -f "$path" ];
then
	feh --bg-scale "$path"
fi	
while ! ping -q -c 1 -W 1 sybiload.com >/dev/null; do
	sleep 60
done

wget -q -O "$path" https://api.sybiload.com/sybiload/wallpaper.php&

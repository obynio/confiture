#!/bin/sh

path=~/.sybiload/wallpaper/wall.jpg

if [ -f "$path" ];
then
	feh --bg-scale "$path"
fi	

while :
do
	$(echo > /dev/tcp/sybiload.com/80) > /dev/null 2>&1
	result=$?
	if [[ $result -eq 0  ]]; then
		wget -q -O "$path" https://api.sybiload.com/sybiload/wallpaper.php
		break
	fi
	sleep 1
done

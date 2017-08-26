#!/bin/sh

path=~/.shepard/wallpaper/wall.jpg

if [ -f "$path" ];
then
	feh --bg-scale "$path"
fi	

while :
do
	$(echo > /dev/tcp/sybiload.com/80) &> /dev/null
	result=$?
	if [[ $result -eq 0  ]]; then
		wget -q -O "$path" https://api.sybiload.com/sybiload/wallpaper.php?theme=minimalist
		break
	fi
	sleep 1
done

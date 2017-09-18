#!/bin/sh

path=~/.shepard/wallpaper/wall.jpg

if [ -f "$path" ];
then
	feh --bg-scale "$path"
fi	

while :
do
	$(nc -vzw 2 obyn.io 80 > /dev/null 2>&1)
	result=$?
	if [[ $result -eq 0  ]]; then
		wget -q -O "$path" https://api.obyn.io/wallpaper.php?theme=minimalist
		break
	fi
	sleep 1
done

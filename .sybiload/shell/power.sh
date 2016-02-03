#!/bin/bash

if [ -z $@  ] 
then
	echo -e "suspend\nshutdown\nreboot\nlogout";
else
	POWER=$@

	case "$POWER" in
		suspend) /usr/bin/systemctl suspend & ;;
		shutdown) /usr/bin/systemctl poweroff & ;;
		reboot) /usr/bin/systemctl reboot & ;;
		logout) i3-msg exit & ;;
	esac
fi

#!/bin/bash

if [ -z $@  ] 
then
	echo -e "0 suspend\n1 shutdown\n2 reboot\n3 logout";
else
	POWER=$@

	case "$POWER" in
		"0 suspend") /usr/bin/systemctl suspend & ;;
		"1 shutdown") killall conky && /usr/bin/systemctl poweroff & ;;
		"2 reboot") killall conky && /usr/bin/systemctl reboot & ;;
		"3 logout") i3-msg exit & ;;
	esac
fi

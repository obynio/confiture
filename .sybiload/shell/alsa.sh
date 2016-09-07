#!/bin/sh

if [[ $# == 1 && ( $1 == '-t' || $1 == '-i' || $1 == '-d' ) ]]; then

    CURRENT_STATE=`amixer get Master | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]'`

    if [[ $1 == '-t'  && $CURRENT_STATE == '[on]' ]]; then
	amixer set "Master" mute
    else
    	# zelda alsa settings
	amixer set "Master" unmute
	amixer set "Headphone" unmute
	amixer set "Bass Speaker" unmute
	amixer set "Speaker" unmute
	
	# mario settings
	amixer set "Front" unmute
	amixer set "Surround" unmute
	amixer set "Center" unmute
	amixer set "LFE" unmute

	if [[ $1 == '-i' ]]; then
	    amixer -q set "Master" 2dB+
	fi

	if [[ $1 == '-d' ]]; then
	    amixer -q set "Master" 2dB-
	fi
    fi
else
    echo -e "Usage: alsa.sh [command]\n"
    echo -e "Available options:"
    echo -e "  -t	mute or unmute audio"
    echo -e "  -i	increase audio output"
    echo -e "  -d	decrease audio output"
fi

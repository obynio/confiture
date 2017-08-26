#!/bin/sh

if [[ -z $@ ]]
then
    conn=($(connmanctl technologies | grep -v "p2p" | grep "Type" -A1 | grep "Powered" | awk '{print $NF}'))

    if [ "${conn[2]}" == "True" ]; then
	bt="disable"
    else
	bt="enable"
    fi
    
    if [ "${conn[1]}" == "True" ]; then
	wl="disable"
    else
	wl="enable"
    fi
 
    if [ "${conn[0]}" == "True" ]; then
	en="disable"
    else
	en="enable"
    fi
 
    echo -e "0 $bt bluetooth\n1 $wl wifi\n2 $en ethernet";
else
    STATE=$@

    case "$STATE" in
	"0 enable bluetooth") $(connmanctl enable bluetooth) ;;
	"0 disable bluetooth") $(connmanctl disable bluetooth) ;;
	"1 enable wifi") $(connmanctl enable wifi) ;;
	"1 disable wifi") $(connmanctl disable wifi) ;;
	"2 enable ethernet") $(connmanctl enable ethernet) ;;
	"2 disable ethernet") $(connmanctl disable ethernet) ;;
    esac
fi

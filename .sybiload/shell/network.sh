#!/bin/sh

if [[ -z $@ ]]
then
    if [[ $(hciconfig | grep UP) ]]; then
	bt="disable"
    else
	bt="enable"
    fi
    
    if [[ $(ip link show wl0 up) ]]; then
	wl="disable"
    else
	wl="enable"
    fi
 
    if [[ $(ip link show en0 up) ]]; then
	en="disable"
    else
	en="enable"
    fi
 
    if [[ $(ip link show | grep vpn0) ]]; then
	vpn="disable"
    else
	vpn="enable"
    fi

    echo -e "0 $bt bluetooth\n1 $wl wifi\n2 $en ethernet\n3 $vpn vpn";
else
    STATE=$@

    case "$STATE" in
	"0 enable bluetooth") $(echo "power on" | bluetoothctl) ;;
	"0 disable bluetooth") $(echo "power off" | bluetoothctl) ;;
	"1 enable wifi") $(connmanctl enable wifi) ;;
	"1 disable wifi") $(connmanctl disable wifi) ;;
	"2 enable ethernet") $(connmanctl enable ethernet) ;;
	"2 disable ethernet") $(connmanctl disable ethernet) ;;
	"3 enable vpn") $(connmanctl connect vpn_sybiload_com_sybiload_com) ;;
	"3 disable vpn") $(connmanctl disconnect vpn_sybiload_com_sybiload_com) ;;
    esac
fi

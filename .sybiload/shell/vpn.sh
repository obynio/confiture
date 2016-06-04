#!/bin/sh

VPN=$(ip link show | grep "vpn0" | wc -l);

if [[ $VPN == 1 ]]; then
	connmanctl disconnect vpn_sybiload_com_sybiload_com
else	
	connmanctl connect vpn_sybiload_com_sybiload_com
fi

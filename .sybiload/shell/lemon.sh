clock() {
        datetime=$(date "+%a %d %b %T")
        echo -e "\uf017 $datetime"
}


workspaces() {
    for workspace in `bspc query -D`
    do
        if [ $workspace = "`bspc query -d -D`" ]
        then
            workspaces="$workspaces \uf111"
        else
            workspaces="$workspaces \uf10c"
         fi
    done
    echo -e "$workspaces"
}

ethernet() {
    if [[ $(ip link show en0 up) ]]; then
	ethip=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
	if [[ $ethip != "" ]]; then
	    echo -e "\uf0e8 $ethip"
	else
	    echo -e "\uf0e8 on"
	fi
    else
	echo -e "\uf0e8 off"
    fi
}

wifi() {
    if [[ $(ip link show wl0 up) ]]; then
	ssid=$(iwgetid -r)
	if [[ $ssid != "" ]]; then
	    echo -e "\uf1eb $ssid"
	else
	    echo -e "\uf1eb on"
	fi
    else
	echo -e "\uf1eb off"
    fi
}

width=$(xrandr | grep \* | awk '{print $1}' | awk 'NR==1' | awk -F 'x' '{print $1}')
height=$(xrandr | grep \* | awk '{print $1}' | awk 'NR==1' | awk -F 'x' '{print $2}')

while true; do
    echo "%{c} $(workspaces) %{r} $(ethernet)  $(wifi)  $(clock)  "
done | lemonbar -g 1898x30+12+12 -f "gohufont-8" -f "FontAwesome-8" -B "#202D3A" -p -d $@

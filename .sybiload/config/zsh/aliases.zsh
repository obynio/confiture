alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='ls --color=auto'

# Fun aliases
alias fuck='sudo'
alias rtfm='man'

# DIY aliases
alias nsc='~/.sybiload/bin/nsc'
alias i3lock='sh ~/.sybiload/shell/lock.sh'
alias wallpaper='sh ~/.sybiload/shell/wallpaper.sh'

# VPN
alias vpn-on='sudo systemctl start openvpn@client.service'
alias vpn-off='sudo systemctl stop openvpn@client.service'

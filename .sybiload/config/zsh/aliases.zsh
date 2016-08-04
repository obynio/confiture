alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='ls --color=auto'
alias l='ls -Fh --color=auto'
alias la='ls -AFh --color=auto'
alias ll='ls -lFh --color=auto'
alias lla='ls -lAFh --color=auto'

# Fun aliases
alias fuck='sudo'
alias rtfm='man'
alias nyan='telnet nyancat.dakko.us'

# DIY aliases
alias nsc='~/.sybiload/bin/nsc'
alias i3lock='sh ~/.sybiload/shell/lock.sh &> /dev/null'
alias wallpaper='sh ~/.sybiload/shell/wallpaper.sh &> /dev/null'

# VPN
alias vpn-on='sudo systemctl start openvpn@client.service'
alias vpn-off='sudo systemctl stop openvpn@client.service'

# Connman
alias net='connmanctl'

# Dev
alias gdb='gdb -q'
alias gac='git add -A && git commit'
alias bc='bc -ql'
alias py='python'
alias pi='python2'

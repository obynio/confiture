alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ls='ls --color=auto'
alias l='ls -Fh --color=auto'
alias la='ls -AFh --color=auto'
alias ll='ls -lFh --color=auto'
alias lla='ls -lAFh --color=auto'
alias find='find . -name'
alias sdisable=' sudo systemctl disable'
alias senable='sudo systemctl enable'
alias srestart='sudo systemctl restart'
alias sstart='sudo systemctl start'
alias sstatus='sudo systemctl status'

# Fun aliases
alias rtfm='man'
alias nyan='telnet nyancat.dakko.us'
alias fuck="killall -9"
alias wtfinternet="ping -c 3 192.168.1.1;ping -c 3 www.google.com"

# DIY aliases
alias nsc='~/.sybiload/bin/nsc'
alias i3lock='sh ~/.sybiload/shell/lock.sh &> /dev/null'
alias wallpaper='sh ~/.sybiload/shell/wallpaper.sh &> /dev/null'

# VPN
alias vpnon='sudo systemctl start openvpn@client.service'
alias vpnoff='sudo systemctl stop openvpn@client.service'

# Connman
alias net='connmanctl'

# Dev
alias gdb='gdb -q'
alias gac='git add -A && git commit -m'
alias bc='bc -ql'
alias py='python'
alias pi='python2'
alias svim='sudo vim'

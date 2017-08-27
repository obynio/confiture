alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ls='ls -Fh --color=auto'
alias l='ls -Fh --color=auto'
alias la='ls -AFh --color=auto'
alias ll='ls -lFh --color=auto'
alias lla='ls -lAFh --color=auto'
alias sdisable=' sudo systemctl disable'
alias senable='sudo systemctl enable'
alias srestart='sudo systemctl restart'
alias sstart='sudo systemctl start'
alias sstatus='sudo systemctl status'
alias cl='clear'

# Fun aliases
alias rtfm='man'
alias nyan='telnet nyancat.dakko.us'
alias fuck='killall -9'
alias net='connmanctl'
alias wtfinternet='ping -c 3 192.168.1.1;ping -c 3 www.google.com'
alias nsc='~/.shepard/bin/nsc'
alias i3lock='sh ~/.shepard/shell/lock.sh &> /dev/null'
alias wallpaper='sh ~/.shepard/shell/wallpaper.sh &> /dev/null'

# Dev
alias gdb='gdb -q -tui'
alias valgrind='sh ~/.shepard/shell/valgrind.sh'
alias gita='git add -A && git commit -m'
alias gitl='git log --oneline --decorate'
alias gitt='git tag -a $1 -m $2'
alias gitls='git shortlog -s'
alias gits='git status'
alias bc='bc -ql'
alias py='python'
alias pi='python2'
alias svim='sudo vim'
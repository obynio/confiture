autoload -U compinit && compinit
autoload -U promptinit && promptinit

# Misc
setopt autocd
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Use Vim
export EDITOR=/usr/bin/vim


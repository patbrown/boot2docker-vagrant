autoload -U promptinit
promptinit
autoload -U colors
colors
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic
zstyle ':completion:*' menu select=2
zstyle ':completion:*' list-colors 'exfxcxdxbxegedabagacad'
zmodload -i zsh/complist
autoload predict-on
autoload predict-off
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^f' edit-command-line

autoload -Uz copy-earlier-word
zle -N copy-earlier-word
bindkey "^[m" copy-earlier-word

function run_info () {
    # Prepend "info" to the command line and run it.
    BUFFER="info $BUFFER"
    zle accept-line
}
zle -N run_info
bindkey "^[i" run_info

bindkey -e
bindkey '^r' history-incremental-search-backward
bindkey "${terminfo[kcuu1]}" up-line-or-search
bindkey "${terminfo[kcud1]}" down-line-or-search

# Edit the current command line in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

zle -N predict-on
zle -N predict-off
bindkey  '\C-x\C-f' predict-on
bindkey  '\C-x\C-d' predict-off

_newline=$'\n'
_lineup=$'\e[1A'
_linedown=$'\e[1B'

git_prompt () {
    ref=$(git symbolic-ref HEAD | cut -d'/' -f3)
    echo $ref
}

function precmd () {
    repeat $COLUMNS printf "$fg[blue]-";print
           PROMPT="%{$reset_color%}%{$fg[green]%}%n%{$reset_color%}@%{$fg[green]%}%m %{$fg_no_bold[blue]%} ($(git_prompt 2> /dev/null)) %{$reset_color%}%{$fg_no_bold[yellow]%}%~ %{$reset_color%}% ${_newline}%{$fg[black]% $bg[white]%}  >  %{$reset_color%} "
}
RPROMPT="%{$reset_color%}%{${_lineup}%}[%{$fg_no_bold[blue]%}%?%{$reset_color%}][%{$fg_no_bold[green]%}%!%{$reset_color%}][%{$fg_no_bold[yellow]$bg[black]%}%*%{$reset_color%}]%{${_linedown}%}"

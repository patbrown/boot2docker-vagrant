# DOTFILES LOCATION
export DOTFILES_LOCATION=~/dev/dotfiles
export ZSHFILES_LOCATION=$DOTFILES_LOCATION/zsh

# PRIVATE ENVIRONMENT
source $DOTFILES_LOCATION/PRIVATE/.env

fpath=($ZSHFILES_LOCATION/.zsh/completions $fpath)
autoload -U compinit
compinit

# CONFIG FILES
for file in $ZSHFILES_LOCATION/.zsh/*; do
    source "$file"
done

# PLATFORM DETECTION
if [[ `uname` == 'Linux' ]]; then
    export LINUX=1
    for file in $ZSHFILES_LOCATION/.zsh/platform/linux/*; do
        source "$file"
    done
elif [[ `uname` == 'Darwin' ]]; then
    export OSX=1
    for file in $ZSHFILES_LOCATION/.zsh/platform/osx/*; do
        source "$file"
    done
elif [[ `uname -o` == 'cygwin' ]]; then
    export WINDOWS=1
    for file in $ZSHFILES_LOCATION/.zsh/platform/windows/*; do
        source "$file"
    done
fi

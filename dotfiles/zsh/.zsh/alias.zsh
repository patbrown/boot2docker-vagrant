#-- General Unix Utilities --#
alias qr='planck -c ~/bin/src -r'
alias qe='planck -c ~/bin/src -e'
alias cljs-repl='drip -cp $CLJS_JAR_LOCATION clojure.main'
alias clj-repl='drip -cp $CLJ_JAR_LOCATION:$LEIN_JAR_LOCATION clojure.main -e nil -i $PRIME_LOCATION -r'
alias build-node-app='drip -cp /Users/p/bin/tools/cljs.jar:src clojure.main build-node-app.clj'
alias build-app='drip -cp /Users/p/bin/tools/cljs.jar:src clojure.main build-app.clj'
alias brepl='drip -cp /Users/p/bin/tools/cljs.jar:src clojure.main brepl.clj'
alias cljs-eval='drip -cp $CLJS_JAR_LOCATION clojure.main -e'
alias clj-eval='drip -cp $CLJ_JAR_LOCATION clojure.main -e'
alias clj-eval-file='drip -cp $CLJ_JAR_LOCATION clojure.main -i'
alias cpu='top -o cpu'
alias mem='top -o rsize'
alias cpwd='pwd | tr -d \"\n\" | pbcopy'
alias clast="fc -e -| pbcopy"
alias ax="chmod a+x"

alias ls-mounts='(echo "DEVICE - PATH - TYPE FLAGS" && mount) | column -t'
alias sizes='du -sh *'
# fixing badly pasted commands
alias %=' '
# alias python='/usr/bin/python'
alias create-ssh-key='ssh-keygen -t rsa'


alias calc='bc -l'

#-- DIRECTORY NAVIGATION --#
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias bk='cd $OLDPWD'
alias l1 'tree --dirsfirst -ChFL 1'
alias l2 'tree --dirsfirst -ChFL 2'
alias l3 'tree --dirsfirst -ChFL 3'

alias ll1 'tree --dirsfirst -ChFupDaL 1'
alias ll2 'tree --dirsfirst -ChFupDaL 2'
alias ll3 'tree --dirsfirst -ChFupDaL 3'

alias fhere='sudo find . -name'

alias histg="history | grep"
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'
alias wget="wget -c"
alias du='ncdu'
alias myip='curl icanhazip.com'
alias cmyip='myip | pbcopy'

#-- DOCKER --#
alias hard-restart-docker='boot2docker down && boot2docker up'
alias stop-containers='docker ps -a | grep Up | awk \"{ print $1 }\" | xargs docker stop'
alias kill-containers='docker kill $(docker ps -q)'
alias remove-containers='docker rm $(docker ps -aq)'
alias remove-images='docker rmi $(docker images -q -a)'
alias remove-failed-containers='docker rm $(docker ps -q -a  --filter \"dangling=true\")'
alias remove-failed-images='docker rmi $(docker images -q --filter \"dangling=true\")'
alias remove-failed='remove-failed-containers ; remove-failed-images'
alias clean-docker='kill-containers ; remove-containers ; remove-images'
alias remove-untagged-images='docker rmi $(docker images -q -f dangling=true)'
alias throwaway-run='docker run --rm -i -t'
alias latest-container='docker ps -l -q'
alias stop-latest-container='docker stop $(docker ps -l -q)'
alias remove-latest-container='docker ps -l -q | xargs docker stop | xargs docker rm'


#-- DOCKER COMPOSE --#
alias compose='docker-compose'

#-- DOCKER MACHINE --#
alias machine='docker-machine'
alias machines='docker-machine ls'
alias create-vb='docker-machine create --driver virtualbox'
alias create-drop='docker-machine create --driver digitalocean --digitalocean-access-token $DIGITALOCEAN_MACHINE_TOKEN'
alias activate='docker-machine active'
alias env-for='docker-machine env'
alias start-machine='docker-machine start'
alias stop-machine='docker-machine stop'
alias remove-machine='docker-machine rm'

#-- EMACS --#
alias e='emacsclient -c --create-frame'
alias kill-emacs='emacsclient -e "(kill-emacs)"'
alias ke='kill-emacs'

#-- GIT --#
alias g='git'
alias status='git status'
alias add-all='git add -A'
alias push='git push -u origin'
alias commit='git commit -m'
alias commit-all='add-all; commit'
alias incorporate='git checkout master; git merge --squash'
alias temporary-commit='git commit -a -m'
alias rebase-to-master='git rebase master'
alias rebase-to-staging='git rebase staging'
alias rebase-to-production='git rebase production'
alias promote-to-staging='git rebase master staging'
alias promote-to-production='git rebase master production'
alias find-commit-with='git log -p -S'

#-- TMUX --#
alias kmux='tmux kill-session'
alias km='kmux'

#-- TMUX START --#
alias mux='tmuxstart'
alias edit-emacs='tmuxstart edit-emacs'
alias edit-alias='tmuxstart edit-alias'
alias edit-boot='tmuxstart edit-boot'
alias edit-envars='tmuxstart edit-envars'
alias edit-tmux='tmuxstart edit-tmux'
alias edit-zsh='tmuxstart edit-zsh'
alias add-fns-zsh='tmuxstart add-fns-zsh'
alias add-fns-emacs='tmuxstart add-fns-emacs'
alias work-on-dotfiles='tmuxstart work-on-dotfiles'

#-- ZSH --#
alias reload-zsh='source ~/.zshrc'
alias rez='reload-zsh'
alias reload-completions='rm -f ~/.zcompdump; compinit'

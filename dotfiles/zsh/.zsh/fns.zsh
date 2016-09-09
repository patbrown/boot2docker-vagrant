function mcd () {
    mkdir -p $1
    cd $1
}
function prime-repl () {
    drip -cp $CLJ_JAR_LOCATION clojure.main -e '(for [x '$1'] (load-file x))' -r
}

 function add-alias  () {
     eval $(printf "echo alias %s=\'%s\'" "$1" "$2") >> $ZSH_ALIAS_FILE
 }


 function new-go-project () {
     mkdir $GOUSERDIRECTORY/$1 && touch $GOUSERDIRECTORY/$1/$1.go
 }

 function quickbuild-go () {
     go build github.com/user/$1
 }

 function add-envar  () {
     eval $(printf "echo export %s=%s" "$1" "$2") >> $ZSH_ENVARS_FILE
 }

 function publish () {
     add-all; commit $1; push
 }

 function _work-on-helper () {
     if git rev-parse --verify $1 2> /dev/null; then
         git checkout $1
     else
         git checkout -b $1 $2
     fi
 }
 function work-on () {
     _work-on-helper $1 master
 }
 function work-on-staging () {
     _work-on-helper $1 staging
 }
 function work-on-production () {
     _work-on-helper $1 production
 }
 function find-issue () {
     git log -p --grep="Ticket #$1"
 }

 function tmp-commit () {
     git commit -a -m "TMP: $1"
 }

 #-- DOCKER FUNCTIONS --#
 function point-to () {
     eval "$(docker-machine env $1)"
 }
 function generate-machine-local () {
     create-vb $1 && activate $1 && point-to $1 && add-to-hosts $1
 }


 function path () {
     echo $PATH | tr ":" "\n" | \
         awk "{
sub(\"/usr\",   \"$fg_no_bold[green]/usr$reset_color\"); \
sub(\"/bin\",   \"$fg_no_bold[blue]/bin$reset_color\"); \
sub(\"/opt\",   \"$fg_no_bold[cyan]/opt$reset_color\"); \
sub(\"/sbin\",  \"$fg_no_bold[magenta]/sbin$reset_color\"); \
sub(\"/local\", \"$fg_no_bold[yellow]/local$reset_color\"); \
print }"
 }

 function extract () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)  tar         xjf   $1;;
             *.tar.gz)   tar         xzf   $1;;
             *.bz2)      bunzip2           $1;;
             *.rar)      rar         x     $1;;
             *.gz)       gunzip            $1;;
             *.tar)      tar         xf    $1;;
             *.tbz2)     tar         xjf   $1;;
             *.tgz)      tar         xzf   $1;;
             *.zip)      unzip             $1;;
             *.Z)        uncompress        $1;;
             *)          echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
 }

 newdirs() {
     I=1
     while ( [[ $I -le $1 ]] ) ; do
         ls -ld *(/om[$I])
         let I++
     done;
 }

 newfiles() {
     I=$1
     let I++
     ls -Alht | head -$I | tail -$1
 }

 function acd () {
     if [[ -z $2 ]]; then
         if [[ -f $1 ]]; then
             builtin cd $1:h
         else
             builtin cd $1
         fi
     else
         builtin cd $*
     fi
 }

 function cl() { ~/bin/click -x "$1" -y "$2" ;}

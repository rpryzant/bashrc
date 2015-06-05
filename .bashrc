# EXPORTS ###################################
export CFLAGS=-D_FORTIFY_SOURCE=0

# change ls colors
export LSCOLORS=GxFxCxDxBxegedabagaced

# user: location > prompt:
export PS1="\[\e[1m\]\[\033[0;30;32m\]\u:\w\[\e[0m\]> "


# ALIASES ###################################
# ls colors
alias ls='ls -G'
# show top and bottom of files
alias skim="(head -5; echo; tail -5) <"
# Say something
alias say="espeak"
# connect to unix
alias unix="ssh rap1@unix.williams.edu"
# connect to cs.williams
alias rath="ssh 16rap1@rath.cs.williams.edu"


# FUNCTIONS ################################
# perform 'ls' after 'cd' if successful.
cs () {
    cd "$@" && ls
}
alias cd="cs"

# extract all archives
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

# goes up as many dirs as passed arg. 1 is default
# cd ../../../.. => up 4
up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}

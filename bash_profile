# export GIT_PS1_SHOWDIRTYSTATE=y
# export GIT_PS1_SHOWSTASHSTATE=y
# export GIT_PS1_SHOWUNTRACKEDFILES=y

# export PS1='\u@\h:\[\e[33;40m\]\w \[\e[34;1m\]$(__git_ps1 "(%s) ")\[\e[33;1m\]\$ \[\e[0m\]'

export PATH=/usr/local/bin:/usr/local/mysql/bin:$PATH

# check if a domain is registered
function isreg {
  dig soa $1 | grep -q ^$1 && echo "Yes" || echo "No"
}

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
rvm use 1.9.2
ruby -v

source ~/.aliases

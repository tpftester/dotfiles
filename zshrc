export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="josh"
plugins=(rails git textmate ruby lighthouse osx)

export unsetopt correct_all
export skip_global_compinit=1
export LC_CTYPE=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

# ========================================================================
# Paths
# ========================================================================
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export CATALINA_HOME=/Library/Tomcat
export TOMCAT_HOME=${CATALINA_HOME}

# ========================================================================
# Paths
# ========================================================================
# Add my bin directory to the PATH
export PATH=~/bin:$PATH

# And the path to cabal binaries for Haskell
export PATH=~/w.cabal/bin:$PATH

# ========================================================================
# Maven
# ========================================================================
export M2_HOME=/usr/local/apache-maven-3.0.1
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
export MAVEN_OPTS="-Xms256m -Xmx512m"

# ========================================================================
# Shortcuts
# ========================================================================
# Shows a sorted listing of how big files/directories are
alias duse='du -k --max-depth=1 | sort +0 -8 -b -n -r'

export SVN_EDITOR='mate -w'
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH
export PATH=/usr/local/var/postgres:$PATH

export GIT_EDITOR="~/bin/mate -w"
export EDITOR="~/bin/mate -w"

alias wrap='cd ~/development/wrap_simulator; rvm use ruby 1.9.2'
alias cable='cd ~/development/cablegate; rvm use system'

alias ccap='rvm use 1.8.7; cd ~/development/ccap'

alias mrs='rvm use 1.8.7; cd ~/development/mrsteamy/server'
alias mrm='rvm use 1.8.7; cd ~/development/mrsteamy/mobile'

alias gams='rvm use 1.8.7; cd ~/development/gama/server'
alias gamm='rvm use 1.8.7; cd ~/development/gama/mobile'
alias gamp='rvm use 1.8.7; cd ~/development/gama/prototype/Server'

alias insp='rvm use 1.8.7; cd ~/development/InspireMFP'

alias mips='rvm use 1.8.7; cd ~/development/mip/server'
alias mipm='rvm use 1.8.7; cd ~/development/mip/mobile'

alias vdb='mysql val_dev -u val_dev -pval_dev'

alias staging='ssh tpf@tpf.dyndns-server.com'
alias prod='ssh tpf@ecl_prod.theprojectfactory.com'

alias inss='ssh inspire_workout@workout.theprojectfactory.com'

# ========================================================================
# Git
# ========================================================================
alias gs='git status'
alias gd='git diff'
alias gb='git branch'
alias gc='git commit'
alias gl='git log'

alias gba='git branch -a'
alias gcv='git cherry -v'
alias gup='git pull'
alias gupr='git pull --rebase'
alias gp='git push'
alias gpom='git push origin master'
alias gout='git log origin/master..master'
alias gin='git log master..origin/master'


# ========================================================================
# TextMate variables
# ========================================================================

export TM_GIT=/usr/local/git/bin/git

# ========================================================================
# nginx
# ========================================================================

alias nginx_restart='kill -HUP `cat /usr/local/var/run/nginx.pid`'

# ========================================================================
# Ruby Version Manager
# ========================================================================
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


cd ~/development


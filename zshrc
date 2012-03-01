export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="josh"
plugins=(rails git textmate ruby lighthouse osx bundler brew cake heroku node npm rails3 rvm terminalapp cap nyan)

export unsetopt=correct_all
export skip_global_compinit=1
export LC_CTYPE=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

# ========================================================================
# Maven
# ========================================================================
export M2_HOME=/usr/local/apache-maven-3.0.1
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"

# ========================================================================
# Paths
# ========================================================================
# Add my bin directory to the PATH
export PATH=~/bin:$PATH

# Maven path
export PATH=$M2:$PATH

# Cabal binaries for Haskell
export PATH=~/w.cabal/bin:$PATH

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/usr/local/var/postgres:$PATH

# Add XCode bin path for gcc
export PATH=$PATH:/Developer/usr/bin

# ========================================================================
# Java
# ========================================================================
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export CATALINA_HOME=/Library/Tomcat
export TOMCAT_HOME=${CATALINA_HOME}

# ========================================================================
# Editors
# ========================================================================
export SVN_EDITOR='mate -w'
export GIT_EDITOR="~/bin/mate -w"
export EDITOR="$HOME/bin/mate -w"

# ========================================================================
# TextMate variables
# ========================================================================
export TM_GIT=/usr/local/git/bin/git

# ========================================================================
# Ruby Version Manager
# ========================================================================
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# export HBASE_HOME=/usr/local/Cellar/hbase/0.90.5/libexec


source ~/.aliases

# These are private project aliases we don't want to give to other people.
if [[ -s "$HOME/.project_aliases" ]]; then
  source "$HOME/.project_aliases"
fi

# These are private startup actions we don't want to give to other people.
if [[ -s "$HOME/.startup_actions" ]]; then
  source "$HOME/.startup_actions"
fi

# Node package manager
export NODE_PATH="/usr/local/lib/node_modules"
export PATH=`npm bin`:$PATH


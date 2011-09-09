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
# Add my bin directory to the PATH
export PATH=~/bin:$PATH

# And the path to cabal binaries for Haskell
export PATH=~/w.cabal/bin:$PATH

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH
export PATH=/usr/local/var/postgres:$PATH

# ========================================================================
# Maven
# ========================================================================
export M2_HOME=/usr/local/apache-maven-3.0.1
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
export MAVEN_OPTS="-Xms256m -Xmx512m"

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
export EDITOR="~/bin/mate -w"

# ========================================================================
# TextMate variables
# ========================================================================
export TM_GIT=/usr/local/git/bin/git

# ========================================================================
# Ruby Version Manager
# ========================================================================
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# ========================================================================
# Default working directory
# ========================================================================
cd ~/development

source ~/.aliases


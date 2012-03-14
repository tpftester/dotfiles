export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="josh"
plugins=(rails git textmate ruby lighthouse osx bundler brew cake heroku node npm rails3 rvm terminalapp cap nyan)

export unsetopt=correct_all
export skip_global_compinit=1
export LC_CTYPE=en_US.UTF-8

if [[ -f $ZSH/oh-my-zsh.sh ]]; then
   source $ZSH/oh-my-zsh.sh
fi

# ========================================================================
# Paths
# ========================================================================
# Add my bin directory to the PATH
export PATH=~/bin:$PATH

# Maven path
export PATH=$M2:$PATH

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
# TextMate variables
# ========================================================================
export TM_GIT=/usr/local/git/bin/git

source ~/.aliases

# These are private project aliases we don't want to give to other people.
if [[ -s "$HOME/.project_aliases" ]]; then
  source "$HOME/.project_aliases"
fi

# These are private startup actions we don't want to give to other people.
if [[ -s "$HOME/.startup_actions" ]]; then
  source "$HOME/.startup_actions"
fi


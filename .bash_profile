# .bash_profile

git_PS1='[\u@\h \A \W$(__git_ps1 " (%s)")]\$ '
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Bash completion
    if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
    if [ -f ~/bin/git-completion.bash ]; then
        . ~/bin/git-completion.bash
        PS1=$git_PS1
    fi
    alias ls='ls --color=auto'
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Bash completion
    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
    fi
    source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
    PS1=$git_PS1
    export JAVA_HOME=$(/usr/libexec/java_home)
fi

. ~/.bash_git_aliases

export EDITOR=vim

export SCALA_HOME=/usr/local/share/scala

# User specific environment and startup programs

PATH=$HOME/.cabal/bin:$PATH
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/Library/Android/sdk/platform-tools:$PATH
PATH=$HOME/Library/Android/sdk/tools:$PATH
PATH=$HOME/Library/Haskell/bin:$PATH
PATH=$HOME/bin/eclipse:$PATH
PATH=$HOME/bin/sbt/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=$HOME/projects/compiler/bazel/output:$PATH
PATH=$HOME/projects/compiler/buildifier/bazel-bin/buildifier:$PATH
PATH=$HOME/projects/gocode/bin:$PATH
PATH=$HOME/projects/lib/flutter/bin:$PATH
PATH=$SCALA_HOME/bin:$PATH
PATH=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/local/opt/go/libexec/bin:$PATH
PATH=/usr/local/texlive/2016/bin/x86_64-darwin:$PATH
PATH=/usr/texbin:$PATH

export PATH

source <(kubectl completion bash)

export GOPATH=~/projects/gocode

# unlimited history
export HISTSIZE=""

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

export HISTTIMEFORMAT="%d/%m/%y %T "
export CLICOLOR=1

# The next line updates PATH for the Google Cloud SDK.
if [ -f /usr/local/bin/google-cloud-sdk/path.bash.inc ]; then
  source '/usr/local/bin/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /usr/local/bin/google-cloud-sdk/completion.bash.inc ]; then
  source '/usr/local/bin/google-cloud-sdk/completion.bash.inc'
fi

alias staging='kubectl --namespace=staging'
alias prod='kubectl --namespace=prod'
alias ci='kubectl --namespace=ci'

alias k='kubectl'
alias t='kubectl --namespace=test'

export ZONE=europe-west1-d
export GCR_REGION=eu.gcr.io # or asia.gcr.io

export ANDROID_HOME=$HOME/Library/Android/sdk

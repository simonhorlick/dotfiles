# .bash_profile

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Bash completion
    if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
    if [ -f ~/bin/git-completion.bash ]; then
        . ~/bin/git-completion.bash
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Bash completion
    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
    fi
    export JAVA_HOME=$(/usr/libexec/java_home)
fi

# Short and sweet.
export PROMPT_COMMAND='PS1="🍉 "'

# Commonly used git aliases.
. ~/.bash_git_aliases

# Set the default editor so we don't accidentally use *shudder* nano.
export EDITOR=vim

export ANDROID_HOME=$HOME/lib/android-sdk
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk-bundle

# Set GOPATH so we build binaries to ~/bin and sources under ~/src.
export GOPATH=$HOME

# Look for binaries everywhere.
PATH=$ANDROID_HOME/tools:$PATH
PATH=$HOME/.cabal/bin:$PATH
PATH=$HOME/.pub-cache/bin:$PATH
PATH=$HOME/Library/Haskell/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=$HOME/src/github.com/flutter/flutter/bin:$PATH
PATH=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/local/opt/go/libexec/bin:$PATH

# Replace system curl.
PATH=/usr/local/opt/curl/bin:$PATH

export PATH

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# Eternal bash history.
export HISTFILESIZE=
export HISTSIZE=
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
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

# Add some more information to the output of ls
alias ls='ls -GFh'
alias ll='ls -GFh'

alias k='kubectl'
alias kk='kubectl get pods'
alias kls='k config get-contexts'
alias kcd='k config use-context'

alias ss='cd ~/src/github.com/simonhorlick; pwd'

source <(kubectl completion bash)

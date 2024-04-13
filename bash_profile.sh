#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Bash completion
    if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
    if [ -f ~/bin/git-completion.bash ]; then
        . ~/bin/git-completion.bash
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    # Bash completion
    if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
        . "$(brew --prefix)/etc/bash_completion"
    fi
fi

# Commonly used git aliases.
. ~/.bash_git_aliases

# Set the default editor so we don't accidentally use *shudder* nano.
export EDITOR=vim

# Set GOPATH so we build binaries to ~/bin and sources under ~/src.
export GOPATH=$HOME

# Look for binaries everywhere.
PATH=$HOME/.cabal/bin:$PATH
PATH=$HOME/.pub-cache/bin:$PATH
PATH=$HOME/Library/Haskell/bin:$PATH
PATH=$HOME/bin:$PATH
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

# Add some more information to the output of ls
alias ls='ls -GFh'
alias ll='ls -GFh'

alias ss='cd ~/src/github.com/simonhorlick; pwd'


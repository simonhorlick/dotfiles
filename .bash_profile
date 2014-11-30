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
        PS1=$git_PS1
    fi
    export JAVA_HOME=$(/usr/libexec/java_home)
fi

. ~/.bash_git_aliases

# Fix stupid AWT behaviour with Xmonad, required for topcoder
export _JAVA_AWT_WM_NONREPARENTING=1
alias topcoder='javaws ~/projects/topcoder/ContestAppletProd.jnlp'

export EDITOR=vim

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/bin/sbt/bin:$HOME/bin/eclipse


export PATH

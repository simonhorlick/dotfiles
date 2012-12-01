# .bash_profile

# Bash completion
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

if [ -f ~/bin/git-completion.bash ]; then
	. ~/bin/git-completion.bash
    PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
fi

. ~/.bash_git_aliases

alias topcoder='javaws ~/projects/topcoder/ContestAppletProd.jnlp'

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

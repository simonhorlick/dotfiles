#!/bin/bash

DOTFILES=$HOME/src/github.com/simonhorlick/dotfiles

ln -sv $DOTFILES/bash_profile.sh $HOME/.bash_profile
ln -sv $DOTFILES/bash_git_aliases.sh $HOME/.bash_git_aliases

# Global gitignore file
mkdir -p $HOME/.config/git
ln -sv $DOTFILES/git/ignore $HOME/.config/git/ignore

#!/bin/bash

DOTFILES=$HOME/projects/dotfiles

ln -sv $DOTFILES/.bash_profile $HOME/.bash_profile
ln -sv $DOTFILES/.bash_git_aliases $HOME/.bash_git_aliases

# Global gitignore file
mkdir -p $HOME/.config/git
ln -sv $DOTFILES/git/ignore $HOME/.config/git/ignore

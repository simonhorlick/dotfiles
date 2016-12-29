#!/bin/bash

DOTFILES=$HOME/projects/dotfiles

ln -sv $DOTFILES/.bash_profile $HOME/.bash_profile
ln -sv $DOTFILES/.bash_git_aliases $HOME/.bash_git_aliases

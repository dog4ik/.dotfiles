#!/usr/bin/env sh
if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="bin,sway,nvim,tmux,alacritty,wallpapers"
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/.dotfiles
fi

STOW_FOLDERS=$STOW_FOLDERS DOTFILES=$DOTFILES $DOTFILES/install


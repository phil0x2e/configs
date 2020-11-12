#!/bin/bash
dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd $dir

mkdir -p ~/.config/alacritty
mkdir -p ~/.config/fish
mkdir -p ~/.config/kitty
mkdir -p ~/.config/termite
mkdir -p ~/.config/bspwm
mkdir -p ~/.config/sxhkd
mkdir -p ~/.config/polybar

ln -sr alacritty/alacritty.yml ~/.config/alacritty
ln -sr fish/config.fish ~/.config/fish
ln -sr zsh/zshrc ~/.config
ln -sr kitty/kitty.conf ~/.config/kitty
ln -sr scripts ~
ln -sr starship/starship.toml ~/.config/
ln -sr termite/termite_config ~/.config/termite
ln -sr bspwm/* ~/.config/bspwm
ln -sr sxhkd/* ~/.config/sxhkd
ln -sr polybar/* ~/.config/polybar

#!/bin/bash
configPath=$XDG_CONFIG_HOME
dotfilesPath="$HOME/dotfiles"
if [ "" == "$configPath" ]; then
  defaultConfigPath=$HOME/.config
  echo "\$XDG_CONFIG_HOME is not set. Which path should I use (default: $defaultConfigPath)?"
  read $configPath
  if [ "" == "$configPath" ]; then
    configPath=$defaultConfigPath
  fi
fi

echo ""
echo "*************"
echo "config path:"
echo " $configPath"
echo "*************"
echo ""

# VIM
ln -si $dotfilesPath/vim/vimrc ~/.vimrc

# NEOVIM
ln -si $dotfilesPath/vim $configPath/nvim
ln -si $dotfilesPath/nyaovim $configPath/nyaovim

# TMUX
ln -si $dotfilesPath/tmux/tmux.conf ~/.tmux.conf

# ZSH
ln -si $dotfilesPath/zsh/zshrc ~/.zshrc

# GIT
ln -si $dotfilesPath/git/gitconfig ~/.gitconfig
if [ ! -e $configPath/git ]; then
  mkdir $configPath/git
fi
ln -si $dotfilesPath/git/config/attributes $configPath/git/attributes

# I3
ln -si $dotfilesPath/i3 $configPath/i3

# KITTY
ln -si $dotfilesPath/kitty $configPath/kitty

# MUTT
ln -si $dotfilesPath/mutt/muttrc $HOME/.muttrc
if [ ! -e $HOME/.mutt ]; then
  mkdir $HOME/.mutt
fi
ln -si $dotfilesPath/mutt/colors $HOME/.mutt/colors
ln -si $dotfilesPath/mutt/macros $HOME/.mutt/macros

# RANGER
if [ ! -e $configPath/ranger ]; then
  mkdir $configPath/ranger
fi
ln -si $dotfilesPath/ranger/scope.sh $configPath/ranger/scope.sh

# ROFI
if [ ! -e $configPath/rofi ]; then
  mkdir $configPath/rofi
fi
ln -si $dotfilesPath/rofi/config $configPath/rofi/config

# ROFI-PASS
if [ ! -e $configPath/rofi-pass ]; then
  mkdir $configPath/rofi-pass
fi
ln -si $dotfilesPath/rofi-pass/config $configPath/rofi-pass/config

# KHAL – CLI calendar
if [ ! -e $configPath/khal ]; then
  mkdir $configPath/khal
fi
ln -si $dotfilesPath/khal/config $configPath/khal/config

# Script to remove dangling docker images
if [ ! -e $HOME/bin ]; then
  mkdir $HOME/bin
fi
ln -si $dotfilesPath/bin/docker-remove-dangling $HOME/bin/docker-remove-dangling

# ABCDE
ln -si $dotfilesPath/abcde/.abcde.conf $HOME/.abcde.conf

# XBINDKEYS
ln -si $dotfilesPath/xbindkeysrc $HOME/.xbindkeysrc

# DUNST desktop notifications
if [ ! -e $configPath/dunst ]; then
  mkdir $configPath/dunst
fi
ln -si $dotfilesPath/dunst/dunstrc $configPath/dunst/dunstrc

# XINITRC
ln -si $dotfilesPath/xinitrc $HOME/.xinitrc

# XMODMAP
ln -si $dotfilesPath/Xmodmap $HOME/.Xmodmap

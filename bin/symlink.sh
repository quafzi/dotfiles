#!/bin/bash
configPath=$XDG_CONFIG_HOME
dotfilesPath="~/dotfiles"
if [ "" == "$configPath" ]; then
  defaultConfigPath="~/.config"
  echo "\$XDG_CONFIG_HOME is not set. Which path should I use (default: $defaultConfigPath)?"
  read $configPath
  if [ "" == "$configPath" ]; then
    configPath=$defaultConfigPath
  fi
fi

# VIM
if [ ! -e $HOME/.vimrc ]; then
  ln -s $dotfilesPath/vim/vimrc ~/.vimrc
  echo "✓ .vimrc"
else
  if [ `readlink $HOME/.vimrc` != "$dotfilesPath/vim/vimrc" ]; then
    echo "✗ ~/.vimrc already exists. You may want to delete it and run this script again."
  else
    echo "∙ .vimrc"
  fi
fi

# NEOVIM
if [ ! -e $configPath/nvim ]; then
  ln -s $dotfilesPath/vim $configPath/nvim
  echo "✓ $configPath/nvim"
else
  if [ "`readlink $configPath/nvim`" != "$dotfilesPath/vim" ]; then
    echo "✗ $configPath/nvim already exists. You may want to delete it and run this script again."
  else
    echo "∙ $configPath/nvim"
  fi
fi

# GIT
if [ ! -e $HOME/.gitconfig ]; then
  ln -s $dotfilesPath/git/gitconfig ~/.gitconfig
  echo "✓ .gitconfig"
else
  if [ "`readlink ~/.gitconfig`" != "$dotfilesPath/git/gitconfig" ]; then
    echo "✗ ~/.gitconfig already exists. You may want to delete it and run this script again."
  else
    echo "∙ ~/.gitconfig"
  fi
fi

# AWESOME
if [ ! -e $configPath/awesome ]; then
  ln -s $dotfilesPath/awesome $configPath/awesome
else
  if [[ ! -L $configPath/awesome || "`readlink $configPath/awesome`" != "$dotfilesPath/awesome" ]]; then
    echo "✗ $configPath/awesome already exists. You may want to delete it and run this script again."
  else
    echo "∙ .vimrc"
  fi
fi

# I3
if [ ! -e $configPath/i3 ]; then
  ln -s $dotfilesPath/i3 $configPath/i3
else
  if [[ ! -L $configPath/i3 || "`readlink $configPath/i3`" != "$dotfilesPath/i3" ]]; then
    echo "✗ $configPath/i3 already exists. You may want to delete it and run this script again."
  else
    echo "∙ .vimrc"
  fi
fi

# RANGER
if [ ! -e $configPath/ranger/scope.sh ]; then
  ln -s $dotfilesPath/ranger/scope.sh $configPath/ranger/scope.sh
else
  if [ "`readlink $configPath/ranger/scope.sh`" != "$dotfilesPath/ranger/scope.sh" ]; then
    echo "✗ $configPath/ranger/scope.sh already exists. You may want to delete it and run this script again."
  else
    echo "∙ $configPath/ranger/scope.sh"
  fi
fi

# ROFI
if [ ! -e $configPath/rofi/config ]; then
  ln -s $dotfilesPath/rofi/config $configPath/rofi/config
else
  if [ "`readlink $configPath/rofi/config`" != "$dotfilesPath/rofi/config" ]; then
    echo "✗ $configPath/rofi/config already exists. You may want to delete it and run this script again."
  else
    echo "∙ $configPath/rofi/config"
  fi
fi

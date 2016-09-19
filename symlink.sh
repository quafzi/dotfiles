#!/bin/bash
configPath=$XDG_CONFIG_HOME
if [ "" == "$configPath" ]; then
  defaultConfigPath="~/.config"
  echo "\$XDG_CONFIG_HOME is not set. Which path should I use (default: $defaultConfigPath)?"
  read $configPath
  if [ "" == "$configPath" ]; then
    configPath=$defaultConfigPath
  fi
fi 
dotfilesPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# VIM
if [ ! -L $HOME/.vimrc ]; then
  ln -s $dotfilesPath/vim/vimrc ~/.vimrc
else
  if [ `readlink $HOME/.vimrc` != "$dotfilesPath/vim/vimrc" ]; then
    echo "~/.vimrc already exists. You may want to delete it and run this script again."
  fi
fi

# NEOVIM
if [ ! -L $configPath/nvim ]; then
  ln -s $dotfilesPath/vim $configPath/nvim
else
  if [ "`readlink $configPath/nvim`" != "$dotfilesPath/vim" ]; then
    echo "$configPath/nvim already exists. You may want to delete it and run this script again."
  fi
fi

# AWESOME
if [ ! -L $configPath/awesome ]; then
  ln -s $dotfilesPath/awesome $configPath/awesome
else
  if [ "`readlink $configPath/awesome`" != "$dotfilesPath/awesome" ]; then
    echo "$configPath/awesome already exists. You may want to delete it and run this script again."
  fi
fi

# I3
if [ ! -L $configPath/i3 ]; then
  ln -s $dotfilesPath/i3 $configPath/i3
else
  if [ "`readlink $configPath/i3`" != "$dotfilesPath/i3" ]; then
    echo "$configPath/i3 already exists. You may want to delete it and run this script again."
  fi
fi

# RANGER
if [ ! -L $configPath/ranger/scope.sh ]; then
  ln -s $dotfilesPath/ranger/scope.sh $configPath/ranger/scope.sh
else
  if [ "`readlink $configPath/ranger/scope.sh`" != "$dotfilesPath/ranger/scope.sh" ]; then
    echo "$configPath/ranger/scope.sh already exists. You may want to delete it and run this script again."
  fi
fi

# ROFI
if [ ! -L $configPath/rofi/config ]; then
  ln -s $dotfilesPath/rofi/config $configPath/rofi/config
else
  if [ "`readlink $configPath/rofi/config`" != "$dotfilesPath/rofi/config" ]; then
    echo "$configPath/rofi/config already exists. You may want to delete it and run this script again."
  fi
fi

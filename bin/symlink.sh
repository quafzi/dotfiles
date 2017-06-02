#!/bin/bash
configPath=$XDG_CONFIG_HOME
dotfilesPath="$HOME/dotfiles"
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
if [ ! -e $configPath/nyaovim ]; then
  ln -s $dotfilesPath/nyaovim $configPath/nyaovim
  echo "✓ $configPath/nyaovim"
else
  if [ "`readlink $configPath/nyaovim`" != "$dotfilesPath/nyaovim" ]; then
    echo "✗ $configPath/nyaovim already exists. You may want to delete it and run this script again."
  else
    echo "∙ $configPath/nyaovim"
  fi
fi

# TMUX
if [ ! -e $HOME/.tmux.conf ]; then
  ln -s $dotfilesPath/tmux/tmux.conf ~/.tmux.conf
  echo "✓ .tmux.conf"
else
  if [ "`readlink ~/.tmux.conf`" != "$dotfilesPath/tmux/tmux.conf" ]; then
    echo "✗ ~/.tmux.conf already exists. You may want to delete it and run this script again."
  else
    echo "∙ ~/.tmux.conf"
  fi
fi

# ZSH
if [ ! -e $HOME/.zshrc ]; then
  ln -s $dotfilesPath/zsh/zshrc ~/.zshrc
  echo "✓ .zshrc"
else
  if [ "`readlink ~/.zshrc`" != "$dotfilesPath/zsh/zshrc" ]; then
    echo "✗ ~/.zshrc already exists. You may want to delete it and run this script again."
  else
    echo "∙ ~/.zshrc"
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
if [ ! -e $configPath/git/attributes ]; then
  ln -s $dotfilesPath/git/config/attributes $configPath/git/attributes
else
  if [[ ! -L $configPath/git/attributes || "`readlink $configPath/git/attributes`" != "$dotfilesPath/git/config/attributes" ]]; then
    echo "✗ $configPath/git/attributes already exists. You may want to delete it and run this script again."
  else
    echo "∙ $configPath/git/attributes"
  fi
fi

# AWESOME
if [ ! -e $configPath/awesome ]; then
  ln -s $dotfilesPath/awesome $configPath/awesome
else
  if [[ ! -L $configPath/awesome || "`readlink $configPath/awesome`" != "$dotfilesPath/awesome" ]]; then
    echo "✗ $configPath/awesome already exists. You may want to delete it and run this script again."
  else
    echo "∙ $configPath/awesome"
  fi
fi

# I3
if [ ! -e $configPath/i3 ]; then
  ln -s $dotfilesPath/i3 $configPath/i3
else
  if [[ ! -L $configPath/i3 || "`readlink $configPath/i3`" != "$dotfilesPath/i3" ]]; then
    echo "✗ $configPath/i3 already exists. You may want to delete it and run this script again."
  else
    echo "∙ $configPath/i3"
  fi
fi

# MUTT
if [ ! -e $HOME/.muttrc ]; then
  ln -s $dotfilesPath/mutt/muttrc $HOME/.muttrc
fi
if [ ! -e $HOME/.mutt/colors ]; then
  ln -s $dotfilesPath/mutt/colors $HOME/.mutt/colors
fi
if [ ! -e $HOME/.mutt/macros ]; then
  ln -s $dotfilesPath/mutt/macros $HOME/.mutt/macros
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

# KHAL – CLI calendar
if [ ! -e $configPath/khal/config ]; then
  if [ ! -e $configPath/khal ]; then
    mkdir $configPath/khal
  fi
  ln -s $dotfilesPath/khal/config $configPath/khal/config
else
  if [ "`readlink $configPath/khal/config`" != "$dotfilesPath/khal/config" ]; then
    echo "✗ $configPath/khal/config already exists. You may want to delete it and run this script again."
  else
    echo "∙ $configPath/khal/config"
  fi
fi

# SMALL SCRIPT TO ADJUST DISPLAY BRIGHTNESS
if [ ! -e /usr/local/bin/brightness ]; then
  ln -s $dotfilesPath/bin/brightness /usr/local/bin/brightness
  echo "Please enable passwordless sudo for /usr/local/bin/brightness."
fi

# Small script to kickoff projects
if [ ! -e $HOME/bin/create-project ]; then
  ln -s $dotfilesPath/bin/create-project $HOME/bin/create-project
fi

# Script to remove dangling docker images
if [ ! -e ~/bin/docker-remove-dangling ]; then
  ln -s $dotfilesPath/bin/brightness ~/bin/docker-remove-dangling
fi

# ABCDE
if [ ! -e $HOME/.abcde.conf ]; then
  ln -s $dotfilesPath/abcde/.abcde.conf $HOME/.abcde.conf
fi

# XBINDKEYS
if [ ! -e $HOME/.xbindkeysrc ]; then
  ln -s $dotfilesPath/xbindkeysrc $HOME/.xbindkeysrc
fi

# XMODMAP
if [ ! -e $HOME/.Xmodmap ]; then
  ln -s $dotfilesPath/Xmodmap $HOME/.Xmodmap
fi

set nocompatible " Be iMproved

" Grab plug.vim if it does not exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()

Plug 'NickLaMuro/vimux'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'corntrace/bufexplorer'
Plug 'digitaltoad/vim-jade'
Plug 'edkolev/tmuxline.vim'
Plug 'godlygeek/tabular'
Plug 'kien/ctrlp.vim'
Plug 'plasticboy/vim-markdown'
Plug 'quafzi/snipmate.vim'
Plug 'scrooloose/nerdtree'

source ~/.vim/functions.vim
source ~/.vim/settings.vim
source ~/.vim/keybindings.vim

call plug#end()

set nocompatible " Be iMproved

" Grab plug.vim if it does not exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'corntrace/bufexplorer'
Plug 'digitaltoad/vim-jade'
Plug 'edkolev/tmuxline.vim'
Plug 'godlygeek/tabular'
Plug 'kien/ctrlp.vim'
Plug 'NickLaMuro/vimux'
Plug 'plasticboy/vim-markdown'
Plug 'quafzi/snipmate.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-abolish'               " :%Subvert/facilit{y,ies}/building{,s}/g
Plug 'tpope/vim-projectionist'
Plug 'marijnh/tern_for_vim'


source ~/.vim/functions.vim
source ~/.vim/settings.vim
source ~/.vim/keybindings.vim

call plug#end()

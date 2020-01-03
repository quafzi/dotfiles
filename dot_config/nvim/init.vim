set nocompatible " Be iMproved

" Grab plug.vim if it does not exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-php-manual'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'diepm/vim-rest-console'
Plug 'digitaltoad/vim-jade'
Plug 'editorconfig/editorconfig-vim'
Plug 'edkolev/tmuxline.vim'
Plug 'francoiscabrol/ranger.vim'       " use ,f to browse file system
Plug 'godlygeek/tabular'
Plug 'GutenYe/json5.vim'               " syntax highlighting for json5
Plug 'isobit/vim-caddyfile'            " Caddyfile syntax support
Plug 'jiangmiao/auto-pairs'
Plug 'johngrib/vim-game-code-break'    " Play an Arkanoid clone with your code ☺
Plug 'joonty/vdebug'
Plug 'junegunn/fzf.vim'                " fuzzy file finder
Plug 'junegunn/vim-emoji'              " emoji support 😏
Plug 'kien/ctrlp.vim'
Plug 'kronos-io/kronos.vim'            " Kronos is a simple task and time manager for vim
Plug 'moll/vim-bbye'                   " close buffer without closing the split it lives in
Plug 'evidens/vim-twig'
Plug 'NickLaMuro/vimux'
Plug 'plasticboy/vim-markdown'
Plug 'pld-linux/vim-syntax-vcl'
Plug 'quafzi/vim-flow-diagram'         " preview for flow diagrams
Plug 'quafzi/snipmate.vim'
Plug 'qpkorr/vim-renamer'              " bulk-rename files using vim (launch via :Renamer in the files folder)
Plug 'rbgrouleff/bclose.vim'           " Autoclose ranger after use in neovim
Plug 'RRethy/vim-hexokinase'           " CSS colors
Plug 'rhysd/committia.vim'             " add status and diff view to commit buffers
Plug 'rhysd/git-messenger.vim'         " show git commit of current cursor position with ,gm
Plug 'lifepillar/vim-mucomplete'       " nice autocompletion
Plug 'Scuilion/markdown-drawer'        " Simplify navigation in large markdown files
" Plug 'scrooloose/syntastic'
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
Plug 'tpope/vim-abolish'               " :%Subvert/facilit{y,ies}/building{,s}/g
Plug 'tpope/vim-fugitive'              " Git integration
Plug 'tpope/vim-projectionist'
Plug 'wavded/vim-stylus'               " stylus syntax highlighting
Plug 'w0rp/ale'                        " On-the-fly syntax check
Plug 'xavierchow/vim-sequence-diagram' " preview for sequence diagrams
Plug 'xolox/vim-misc'                  " dependency of xolox/vim-notes
Plug 'xolox/vim-notes'                 " easy notes

call plug#end()

set rtp+=~/.fzf "fuzzy file finder <https://github.com/justinmk/fzf>
let g:fzf_command_prefix = 'Fz'

runtime functions.vim
runtime settings.vim

" include settings folder recursive (!)
runtime! settings/*.vim

runtime keybindings.vim

" enable per-project configuration files
set exrc
" disable unsafe commands in your project-specific .vimrc
" This will prevent :autocmd, shell and write commands from being run inside
" project-specific .vimrc files unless they’re owned by you.
set secure

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
Plug 'digitaltoad/vim-jade'
Plug 'editorconfig/editorconfig-vim'
Plug 'francoiscabrol/ranger.vim'       " use ,f to browse file system
Plug 'godlygeek/tabular'
Plug 'GutenYe/json5.vim'               " syntax highlighting for json5
Plug 'isobit/vim-caddyfile'            " Caddyfile syntax support
Plug 'jamessan/vim-gnupg'              " edit gpg encrypted text files
Plug 'jiangmiao/auto-pairs'

" Debugging
Plug 'mfussenegger/nvim-dap'           " DAP (Debug Adapter Protocol) client
Plug 'suketa/nvim-dap-ruby'

Plug 'junegunn/fzf.vim'                " fuzzy file finder
Plug 'junegunn/vim-emoji'              " emoji support 😏
Plug 'kien/ctrlp.vim'
Plug 'lifepillar/vim-mucomplete'       " nice autocompletion
Plug 'moll/vim-bbye'                   " close buffer without closing the split it lives in
Plug 'NickLaMuro/vimux'
Plug 'nvim-lua/plenary.nvim'           " required for sindrets/diffview.nvim
Plug 'plasticboy/vim-markdown'
Plug 'pld-linux/vim-syntax-vcl'
Plug 'posva/vim-vue'                   " syntax highlighting for Vue components
Plug 'qpkorr/vim-renamer'              " bulk-rename files using vim (launch via :Renamer in the files folder)
Plug 'rbgrouleff/bclose.vim'           " Autoclose ranger after use in neovim
Plug 'rhysd/committia.vim'             " add status and diff view to commit buffers
Plug 'rhysd/git-messenger.vim'         " show git commit of current cursor position with ,gm
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' } " CSS colors
Plug 'ruby-formatter/rufo-vim'         " Ruby format for vim via rufo
Plug 'Scuilion/markdown-drawer'        " Simplify navigation in large markdown files
Plug 'sindrets/diffview.nvim'          " Show Git diff
Plug 'sotte/presenting.vim'            " Presenting talk slides
Plug 'tpope/vim-abolish'               " :%Subvert/facilit{y,ies}/building{,s}/g
Plug 'tpope/vim-fugitive'              " Git integration
Plug 'tpope/vim-projectionist'
Plug 'wavded/vim-stylus'               " stylus syntax highlighting
Plug 'w0rp/ale'                        " On-the-fly syntax check

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

" init DAP for Ruby
lua require("dap-ruby").setup()

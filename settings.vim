" Colorscheme
set background=dark
colorscheme monokai

" Set UTF-8 as default encoding
set encoding=utf-8

" Automatically read files when they were changed on the filesystem
set autoread

" Set the leader key to comma and <space>
let mapleader=","
nmap <space> <Leader>
vmap <space> <Leader>

" Show line numbers (absolute ones)
" relative ones would be relativenumber
set number

" Enable spell checking
" set spell

" Spell checking languages
set spelllang=de,en

" Mark line breaks with three dots
set showbreak=…

" Natural splitting
set splitbelow
set splitright

" Set tab width, tab width on deletion and of course use spaces instead of tabs
set ts=2 sts=2 sw=2 expandtab

" Highlight current line
set cursorline

" Highlight current column
set cursorcolumn
highlight cursorcolumn cterm=NONE ctermbg=NONE ctermfg=DarkGray

" Highlight max line length
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(121,999),",")
autocmd FileType markdown let &colorcolumn=""

" Airline
let g:airline_powerline_fonts = 1
let g:airline_enable_syntastic = 1
set laststatus=2

" 'Hidden' buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
set hidden

" Show current command in the lower right corner
set showcmd

" Automatically load plugins based on file extension
filetype plugin on

" Automatically indent based on file extension
filetype indent on

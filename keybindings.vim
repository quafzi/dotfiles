" Exit insert mode with jj
map! jj <Esc>

" Toggle NERDtree with ,n
map <Leader>n :NERDTreeToggle<CR>

" Switch to the alternate buffer with ,SPACE
nnoremap <Leader><space> :<Esc>:b#<CR>

" Open vimrc file with ,v
nmap <leader>v :tabedit $MYVIMRC<CR>

" Close buffer with CTRL-C
map <C-c> :bd<CR>

" Search tag with ,s
nmap <Leader>s <Esc>:tag<space>

" Scroll 8 lines before reaching screen edge
set scrolloff=8

" Jump to tag with ,j
nmap <Leader>j <Esc><C-]>

" Create PHPDoc blocks with ,d
noremap <leader>d <Esc>:call PhpDoc()<CR>

" Run exuberant-ctags with ,c (in the current folder)
nmap <Leader>c <Esc>:w<CR>:call BuildTags()<CR>

" Insert Rst Headline marks under the current line
map <Leader>h1 yypVr=o
map <Leader>h2 yypVr-o
map <Leader>h3 yypVr~o

" Save via ,,
map ,, :w<CR>
imap ,, <Esc>:w<cr>

" Disable NUL character
map <Nul> <Nop>
cmap <Nul> <Nop>
imap <Nul> <Nop>
nmap <Nul> <Nop>
vmap <Nul> <Nop>

" Use tab to toggle between matching brackets
nnoremap <tab> %
vnoremap <tab> %

" Use CTRL + direction to move from one split to another
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Use Shift + Cursor to move lines
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Use T to open tig
nmap T :!tig status<CR>

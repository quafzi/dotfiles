" Exit insert mode with jj
map! jj <Esc>

" Toggle NERDtree with ,n
map <Leader>n :NERDTreeToggle<CR>

" Switch to the alternate buffer with ,<space>
nnoremap <Leader><space> :<Esc>:b#<CR>

" Show file history with ,bh
nmap <Leader>bh :FzHistory<CR>
" Show file history in new split with ,bs
nmap <Leader>bs :new<CR>:FzHistory<CR>
" Show file history in new vsplit with ,bv
nmap <Leader>bv :vnew<CR>:FzHistory<CR>

" Show buffers with ,bb
nmap <Leader>bb :FzBuffers<CR>

" Show file selector ,bf
nmap <Leader>bf :FzFiles<CR>

" Open vimrc file with <space>v
nmap <leader>v :tabedit $MYVIMRC<CR>

" Use Enter to toggle folds
nnoremap <expr> <CR> foldlevel('.') ? 'za' : '<CR>'

" Force saving as sudo with ,w
map <Leader>ww :w !sudo tee %<CR>

" Close buffer with CTRL-C
map <C-c> :Bdelete<CR>

" Search tag with ,s
nmap <Leader>s <Esc>:tag<space>

" Replace :emoji_name: into Emoji
nmap <Leader>e <Esc>:%s/:\([^: \/<]\+\):/\=emoji#for(submatch(1), submatch(0))/g<CR>

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

" Insert Datetime (separated by comma)
inoremap <F5> <C-R>=strftime("%F,%H:%M,")<CR>
" Insert Time
inoremap <F6> <C-R>=strftime('%H:%M')<CR><Esc>

" Use T to open tig
nmap T :!tig status<CR>

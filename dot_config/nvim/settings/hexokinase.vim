let g:Hexokinase_highlighters = ['virtual']

set termguicolors

" Default event to trigger and update
let g:Hexokinase_refreshEvents = ['BufWritePost']

" To make it almost live
" This may cause some lag if there are a lot of colours in the file
let g:Hexokinase_refreshEvents = ['TextChanged', 'TextChangedI']

" Enable for specific file types
let g:Hexokinase_ftAutoload = ['css', 'html', 'js', 'styl', 'xml']

" Enable by default
autocmd BufNewFile,BufRead * HexokinaseRefresh

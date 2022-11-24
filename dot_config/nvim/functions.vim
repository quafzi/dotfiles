" Compile rst document and open pdf file
function! CompileRst()
    let cmd = '!rst2pdf ' . expand('%s')
    let outfile = substitute(expand('%s'), '.rst', '.pdf', '')
    silent! execute cmd

    if has('mac') || has('macunix')
        let open = '!open ' . outfile
    else
        let open = '!gnome-open ' . outfile . ' &'
    endif

    silent! execute open
endfunction

" Builds tags file
function! BuildTags()
    let cmd = '!ctags -R --totals=yes --tag-relative=yes .'
    execute cmd
endfunction

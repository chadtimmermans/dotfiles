" (.html) FILETYPE SETTINGS
" ==========================
    colorscheme obsidian

    " Set tab spacing to 2
    setlocal tabstop=2
    setlocal softtabstop=2
    setlocal shiftwidth=2

    setlocal matchpairs+=<:>    " highlight pairs. use '%' to jump between
    setlocal noignorecase       " use case-sensitive for better tag searching

    " Open file in firefox
    nnoremap <F9> <Esc>:w<CR>:exec '!firefox' shellescape(@%, 1)<CR><CR>    
    " Open file in firefox as localhost (needs apache)
    "nnoremap <F9> :silent update<Bar>silent !firefox %:p:s?\(.\{-}/\)\{4}?http://localhost/?<CR>

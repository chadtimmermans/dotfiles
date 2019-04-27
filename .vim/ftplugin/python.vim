" (.py) FILETYPE SETTINGS
" ========================
    " Highlight whitespace
    highlight BadWhiteSpace ctermbg=red
    match BadWhiteSpace /^\t\+/	  " flag tabs
    match BadWhiteSpace /\s\+$/	  " flag trailing whitespace

    setlocal foldmethod=indent    " fold on indents
    setlocal foldlevel=99         " nesting in folds

    " Open file in python3
    "nnoremap <F9> :w !/usr/bin/env python3<CR>  " only works with GUI programs
    nnoremap <silent><buffer> <F9> <Esc>:w<CR>:exec '!/usr/bin/env python3' shellescape(@%, 1)<CR>

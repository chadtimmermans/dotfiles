" Config File
" ==================

" Plugin Manager (Vundle)
" ==========================
" commands:
"     PluginInstall   install plugins
"     PluginClean     remove commented plugins
"     PluginList      list configured plugins
"     PluginSearch    search for plugin
"
" required for vundle:
      set nocompatible
      filetype off
      set rtp+=~/req/vim/bundle/Vundle.vim " path to vundle


" List of Plugins
" ===============
      call vundle#begin('~/req/vim/bundle') " path to install plugins
      Plugin 'VundleVim/Vundle.vim'         " let vundle manage itself

      Plugin 'ycm-core/YouCompleteMe'       " auto-completion
      Plugin 'sheerun/vim-polyglot'         " better syntax highlighting
      Plugin 'scrooloose/nerdtree'          " nerdtree file manager
      Plugin 'Xuyuanp/nerdtree-git-plugin'  " nerdtree git integration
      Plugin 'jistr/vim-nerdtree-tabs'      " change nerdtree behavior with tabs open
      Plugin 'w0rp/ale'                     " asynchronous linting

      " C++
      Plugin 'vhdirk/vim-cmake'             " Better CMake usage
"       Plugin 'soramugi/auto-ctags.vim'
"       Plugin 'xolox/vim-easytags'
"       Plugin 'xolox/vim-misc'
"       Plugin 'xavierd/clang_complete'       " C++ Completion

      " Python
      Plugin 'tmhedberg/SimpylFold'         " better python folding
      Plugin 'plytophogy/vim-virtualenv'    " python venv support for python
      Plugin 'vim-scripts/indentpython.vim' " python pip8 indentation for multiline statements

      call vundle#end()

      let mapleader=',' " this must go first

" Plugin Settings
" ====================
      " YouCompleteMe
      " -----------------
      let g:ycm_auto_trigger=1
      let g:ycm_key_invoke_completion='<C-Space>'
      let g:ycm_min_num_of_chars_for_completion=99  " Make completion only trigger on syntax, default=2
"       let g:ycm_complete_in_comments=1
      let g:ycm_show_diagnostics_ui=0  " show gutter warnings and errors, default=1

"       let g:ycm_max_num_candidates=99  " default=50
"       let g:ycm_max_num_identifier_candidates=5  " default=10
      let g:ycm_goto_buffer_command='split'  " open YCM buffers in a split, default=window
      let g:ycm_add_preview_to_completeopt=1
      let g:ycm_autoclose_preview_window_after_completion=1
      let g:ycm_collect_identifiers_from_tags_files=1

      nnoremap <silent><C-]> <ESC>:YcmCompleter GoToDeclaration<CR>
      nnoremap <silent><leader><C-]> <ESC>:YcmCompleter GoToDefinition<CR>
      nnoremap <silent><leader><C-d> <ESC>:YcmCompleter GetDoc<CR>
      nnoremap <silent><leader><C-T> <ESC>:YcmCompleter GetType<CR>
"       nnoremap <silent><leader>F <ESC>:YcmCompleter FixIt<CR>

      let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
      let g:ycm_confirm_extra_conf=0
      let g:ycm_python_interpreter_path = ''
"       let g:ycm_seed_identifiers_with_syntax=1  " complete syntax keywords
      let g:ycm_extra_conf_vim_data = [ 'g:ycm_python_interpreter_path', ]

      " EasyTags
      " -----------------
"       set tags=./.tags;,~/req/vim/tags
"       let g:easytags_file = ~/req/vim/tags
"       let g:easytags_always_enabled=1  " lags without async
"       let g:easytags_resolve_links=1
"       let g:easytags_async=1
"       let g:easytags_auto_highlight=0
"       let g:easytags_dynamic_files=1

      " Clang_Complete
      " -----------------
"       let g:clang_library_path='/usr/lib/llvm-6.0/lib/libclang.so.1'
"       let g:clang_complete_auto=1  " enable completion after ->, ., ::, default=1
"       let g:clang_close_preview=1  " close preview window after completion, default=0
"       let g:clang_user_options='-g -Wall -std=c++1z'
"       let g:clang_complete_patterns=1  " complete code patterns like loop constructers, default=0
"       let g:clang_snippets=1  " small snippets on code placehodlers like argument, etc. default=0
"       let g:clang_jumpto_delcaration_in_preview_key='<C-]>'  " default <C-W>]

      " VIM-CMake
      " -----------------
      let b:build_dir="../build"
      let g:cmake_build_type="Debug"
      let g:cmake_cxx_compiler='g++'

      " SimpylFold
      " -----------------
      let g:SimpylFold_docstring_preview=1  " show first line of docstring in fold

      " NERDTree
      " -----------------
      nnoremap <silent><C-n> <ESC>:NERDTreeToggle %<CR>  " toggle nerdtree on/off
"       let g:NERDTreeDirArrowExpandable = '_'   " icon of expandable folder
"       let g:NERDTreeDirArrowCollapsible = 'v'  " icon of collapsed folder
      let g:NERDTreeShowHidden=1                " show hidden files
      let g:NERDTreeWinSize=23                  " adjust nerdtree size, default=31

      " filetype highlighting
      function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
      exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
      exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
      endfunction
      call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
      call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
      call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
      call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
      call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
      call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
      call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
      call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

      " ALE Linter
      " ----------------
      nnoremap <silent><F5> <ESC>:ALEToggle<CR><CR>           " toggle ale on/off
      nnoremap <silent><F6> <ESC>:call ToggleList()<CR>   " toggle ale-list on/off
      nnoremap <silent> <C-k> <Plug>(ale_previous_wrap)   " jump to previous sign
      nnoremap <silent> <C-j> <Plug>(ale_next_wrap)       " jump to next sign

"       let g:ale_set_highlights=0              " disable lint highlighting        
"       let g:ale_open_list=1                   " ale list, disabled for toggling function
      let g:ale_list_window_size=3            " size of list
      let g:ale_set_loclist=1                 " use loclist (per buffer)...
      let g:ale_set_quickfix=0                " ...instead of quickfix (global)
      let g:ale_lint_on_text_changed=0        " don't lint while typing, laggy
      let g:ale_lint_on_enter=1               " lint when entering insert mode
      let g:ale_lint_on_insert_leave=1        " lint when leaving insert mode
      let g:ale_lint_on_filetype_changed=1    " lint on filetype change
      let g:ale_lint_on_save=1                " lint when file saved
      let g:ale_echo_cursor=0                 " disable lint output on command line, makes cursor dissapear
      let g:ale_sign_error='EE'               " gutter sign for errors
      let g:ale_sign_warning='WW'             " gutter sign for warnings
      let g:ale_change_sign_column_color=1    " enable gutter color changes

      " gutter sign colors
      highlight ALESignColumnWithoutErrors ctermbg=black
      highlight ALESignColumnWithErrors ctermbg=black ctermfg='1'
      highlight ALEError ctermbg='1' ctermfg='15'

      " list of linters
      let b:ale_linters = {'python':['flake8']}

      " list toggling:
      let s:mapping_state=1
      function! ToggleList()
        if s:mapping_state  " (swap copen/close to use quickfix instead of loclist)
          execute "silent! lopen "
        else
          execute "silent! lclose "
        endif
        let s:mapping_state = !s:mapping_state
      endfunction


" Behavior
" =========
      filetype plugin indent on
      set directory=~/.vim/backup/    " put swap files here
      set backupdir=~/.vim/backup/    " put backup files here
      set encoding=utf-8
      set mouse=a                     " enable mouse in all modes
      set backspace=indent,eol,start  " enable backspace to delete certain characters
      set splitbelow splitright       " open splits below/right, default is above/left
      set noerrorbells                " disable sound on errors
      set novisualbell                " disable window flash on errors
      set confirm                     " prompt for confirmation on certain actions
      set history=100                 " command history, default is 20
      set scrolloff=5                 " scroll x amount of lines past buffer
      set wildmenu                    " command line autocompletion
      set wildmode=longest:list,full
"       set whichwrap+=h,l              " movement keys wrap on end of line
"       set noswapfile                 " disable swap file
"       set clipboard=unnamed          " set system clipboard as default
"       set undofile                   " persistent undo history
"       set undodir=~//undodir         " designate undo directory


" Appearance
" ===========
      colorscheme code-one      " set syntax colorscheme
      syntax on                 " syntax highlighting
      set showcmd               " show current command
      set cmdheight=1           " command bar height
      set title                 " window title reflects current file
      autocmd VimResized * wincmd = " uniformly auto resize splits
"       set nowrap                " disable word wrapping
"       set textwidth=0           " wrap text after x amount of chars
"       set noshowmode            " mode is displayed in custom statusline

      " Disable automatic line breaks
      set textwidth=0
      set wrapmargin=0

      " Highlighting colors
      highlight Folded ctermfg=002 ctermbg=235    " Color of folds
      highlight Pmenu ctermfg=238 ctermbg=0       " Color of omnicomplete
      highlight PmenuSel ctermfg=102 ctermbg=234
      highlight PmenuSbar ctermfg=238 ctermbg=0
      highlight PmenuThumb ctermfg=102 ctermbg=234
      highlight QuickFixLine ctermfg=250 ctermbg=238  " Color of Ale's list

      " Line Numbering
"       set number                " show line numbers
"       set cursorline            " line number highlighting 
"       set relativenumber        " possibly laggy, numbers are relative to current line
      
      " Highlight current line number
"       highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
"       highlight CursorLineNR ctermfg=3 ctermbg=234 cterm=BOLD
      
      " Change cursor in insert mode
"       let &t_ti.="\e[1 q"
"       let &t_SI.="\e[5 q"
"       let &t_EI.="\e[1 q"
"       let &t_te.="\e[0 q"


" Status Line
" ============
      set laststatus=1        " 2 = always on, 1 = always on if multiple windows, 0 = always off
      hi StatusLine ctermfg=102 ctermbg=234 cterm=NONE
      hi LineNr ctermfg=238 ctermbg=0
      let g:currentmode={'n':'Normal', 'no':'Normal-Operator Pending', 'v':'Visual', 'V':'V-Line', '^V':'V-Block', 's':'Select', 'S':'S-Line',
                        \'^S':'S-Block', 'i':'Insert', 'R':'Replace', 'Rv':'V-Replace', 'c':'Command', 'cv':'Vim Ex', 'ce':'Ex', 'r':'Prompt',
                        \'rm':'More', 'r?':'Confirm', '!':'Shell', 't':'Terminal',}
      set statusline=
      set statusline+=\ %n\ %*    " buffer number
      set statusline+=%t%*        " file path, use F for full path
      set statusline+=\ %y%*      " file type
      set statusline+=%m%*        " modified flag
      set statusline+=\ -%{virtualenv#statusline()}   " name of active python venv
      set statusline+=%=          " separator for left-right
      set statusline+=L:%l%*      " current line
      set statusline+=/%L%*       " total lines
      set statusline+=\ \ C:%v    " column number
      set statusline+=\ %p%%\ \   " current line's percentage in file
      set statusline+=%0*\|\ %{toupper(g:currentmode[mode()])}\   " current mode


" OmniComplete
" ===============
      set pumheight=6  " height of completion menu

      " Plugin, YouCompleteMe
      setlocal omnifunc=youcompleteme#Complete
      setlocal completefunc=youcompleteme#CompleteFunc
" 
      " Plugin, Clang_Complete
"       setlocal omnifunc=ClangComplete
"       setlocal completefunc=ClangComplete

      " Default
"       setlocal omnifunc=syntaxcomplete#Complete
"       setlocal completefunc=syntaxcomplete#CompleteFunc

      set completeopt=menuone,longest    " appearance of completion list

      " first map <CR> to select word from list, then mappings to keep list open while typing
     noremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>" 
     inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
     inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
      
"       " change completion list movement to <C-j> and <C-k), default is <C-n> and <C-p>
"       inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("<C-j>"))
"       inoremap <expr> <C-k> ((pumvisible())?("\<C-p>"):("<C-k>"))


" Hotkeys
" =================
      nnoremap J 5j
      nnoremap K 5k
      " remove trailing whitespace
      nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>


" Split Resizing
" =================
      " split resizing
      nnoremap <silent><leader>hu <ESC>:resize +8<CR>
      nnoremap <silent><leader>hd <ESC>:resize -8<CR>
      nnoremap <silent><leader>vu <ESC>:vertical resize +8<CR>
      nnoremap <silent><leader>vd <ESC>:vertical resize -8<CR>


" Spellcheck
" ===============
      " use '=z' for corrections:
      nnoremap <leader>spell <ESC>:setlocal spell! spelllang=en_us<CR>
      nnoremap <silent><Space> za  " folding
      nnoremap <silent><CR> :nohlsearch<CR><CR>  " turn off search highlighting


" Block Commenting
" =================
      " Mapped to <leader>cc and <leader>cu
      autocmd FileType javascript,c,cpp,java,scala    let b:comment_leader = '// '
      autocmd FileType javascript,c,cpp,java,scala    setlocal comments-=:// comments+=b://
      autocmd FileType sh,ruby,python,conf,fstab      let b:comment_leader = '# '
      autocmd FileType sh,ruby,python,conf,fstab      setlocal comments-=:# comments+=b:#
      autocmd FileType tex                            let b:comment_leader = '% '
      autocmd FileType tex                            setlocal comments-=:% comments+=b:%
      autocmd FileType vim                            let b:comment_leader = '" '
      autocmd FileType vim                            setlocal comments-=:" comments+=b:"
      " comment, <leader>cc
      noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>     " comment block
      " uncomment, <leader>cu
      noremap <silent> <leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>  " uncomment block


" Skeleton Files
" =================
      nnoremap <silent>\html :-1read ~/.vim/skeletons/skeleton.html<CR>5j9l
      nnoremap <silent>\python :-1read ~/.vim/skeletons/skeleton.py<CR>3jo


" Tab Indentation
" ================
      set tabstop=2               " number of spaces per tab
      set softtabstop=2           " number of spaces per tab while editing
      set shiftwidth=2            " number of spaces with << and >>
      set expandtab               " make tab key use spaces
      set shiftround              " < and > commands use shiftwidth value
      set autoindent              " try to auto indent
      set copyindent              " copy indentation from previous line

      " Markers for tabs/spaces:
"       set list                   " enable markers
"       set listchars=tab:>\ ,trail:•,extends:-,nbsp:.  " marker characters


" Searching
" ==========
      set hlsearch                " highlight matching search
      set incsearch               " jump to next logical match while typing
      set ignorecase              " match uppercase in lowercase search
      set smartcase               " match only uppercase in uppercase search


" Netrw Directory Tree
" =====================
      " use ':edit dir_name' to open tree view
      let g:netrw_banner=0        " disable annoying top banner
      let g:netrw_liststyle=3     " tree view
      let g:netrw_browse_split=2  " open selection in vertical split
      let g:netrw_altv=1          " open splits to the right

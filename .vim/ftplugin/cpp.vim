" (.cpp) FILETYPE SETTINGS
" ========================
  " Run the project with either the compiler, CMake or a Makefile
"    nnoremap <F7> <Esc>:wa <CR>:!make && echo "----------------------------------------------------" && echo && %:h/main && rm %:h/main<CR>
   nnoremap <F7> <Esc>:wa <CR>:CMake .. <CR>:make <CR>
   nnoremap <F8> <Esc>:!../build/main<CR>
   "nnoremap <F9> :wa <CR>:!g++ -Wall -Wextra -pedantic -std=c++17 %:h/*.cpp -o %:h/main && %:h/main && rm %:h/main<CR>

  " Debugger, uses either g++, CMake, or a Makefile
  " First it adds the vim package and builds the project. 
  " The debugger is then called and screens are vertically split.
"    nnoremap <F8> <Esc>:packadd termdebug <CR>:wa <CR>:make <CR>:Termdebug <CR><C-w>2k<C-w>L<C-w>h<C-w>x file main<CR> 
   nnoremap <F9> <Esc>:packadd termdebug <CR>:wa <CR>:CMake .. <CR>:make <CR>:Termdebug <CR><C-w>2k<C-w>L<C-w>h<C-w>x file ../build/main<CR>
   " nnoremap <F10> <Esc>:packadd termdebug <CR>:wa <CR>:!g++ -g -Wall -Wextra -pedantic -std=c++17 %:h/*.cpp -o %:h/main <CR> <Esc>:Termdebug<CR> <C-w>2k<C-w>L<C-w>h<C-w>x file main<CR>

   let g:ale_cpp_clang_options = '-std=c++17 -Wall -Wextra -pedantic'
   let g:ale_cpp_gcc_options = '-std=c++17 -Wall -Wextra -pedantic'
   let g:ale_cpp_clangtidy_checks = ["-*","modernize-*","performance-*","readability-*", "-readability-avoid-const-params-in-decls", "-readability-braces-around-statements", "-modernize-pass-by-value",]

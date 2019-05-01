" =========================
" code-one ColorScheme
" Author: Chad Timmermans
" =========================

" Setup
" ======
  set background=dark
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
  let g:colors_name="code-one"  " name that vim recognizes
  

" Colors
" =======
  let s:base00=['235']  " Grey15
  let s:base01=['237']  " Grey23 
  let s:base02=['240']  " Grey35
  let s:base03=['244']  " Grey50
  let s:base04=['145']  " Grey69
  let s:base05=['251']  " Grey78
  let s:base06=['252']  " Grey82
  let s:base07=['253']  " Grey85
  let s:base08=['25']   " DeepSkyBlue4
  let s:base09=['58']   " Orange4
  let s:base0A=['221']  " LightGoldenrod2
  let s:base0B=['35']   " SpringGreen3
  let s:base0C=['137']  " LightSalmon3
  let s:base0D=['31']   " DeepSkyBlue3
  let s:base0E=['25']   " DeepSkyBlue4 
  let s:base0F=['133']  " MediumOrchid3
  let s:base10=['15']   " White
  let s:base11=['1']     " Red


" Highlight Function
" ===================
function! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " ctermfg=" . a:fg[0]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " ctermbg=" . a:bg[0]
  endif
  if a:attr != ""
    exec "hi " . a:group . " cterm=" . a:attr
  endif
endfunction


" Buffer
" =======
  " call <sid>:hi(group, fg, bg, attr)
  call <sid>hi('Bold',                       '',       '',       'bold')
  call <sid>hi('Debug',                      s:base0E, '',       '')
  call <sid>hi('Directory',                  s:base0D, '',       '')
  "call <sid>hi('ErrorMsg',                   s:base0E, s:base00, '')
  call <sid>hi('Exception',                  s:base0E, '',       '')
  call <sid>hi('FoldColumn',                 s:base0D, s:base00, '')
  call <sid>hi('Folded',                     s:base03, s:base01, '')
  "call <sid>hi('Folded',                     s:base03, s:base01, 'italic')
  call <sid>hi('IncSearch',                  s:base01, s:base09, '')
  call <sid>hi('Italic',                     '',       '',       'italic')
  "call <sid>hi('Macro',                      s:base0E, '',       '')
  call <sid>hi('MatchParen',                 s:base03, s:base01, '')
  call <sid>hi('ModeMsg',                    s:base0B, '',       '')
  "call <sid>hi('MoreMsg',                    s:base0B, '',       '')
  call <sid>hi('Question',                   s:base0D, '',       '')
  call <sid>hi('Search',                     s:base06,       s:base0E, '')
  "call <sid>hi('Search',                     s:base03, s:base0A, 'italic')
  call <sid>hi('SpecialKey',                 s:base03, '',       '')
  call <sid>hi('TooLong',                    s:base0E, '',       '')
  call <sid>hi('Underlined',                 s:base0E, '',       '')
  call <sid>hi('Visual',                     s:base03,       s:base00, '')
  call <sid>hi('VisualNOS',                  s:base0E, '',       '')
  "call <sid>hi('WarningMsg',                 s:base0E, '',       '')
  call <sid>hi('WildMenu',                   s:base10, s:base0D, '')
  call <sid>hi('Title',                      s:base0D, '',       '')
  call <sid>hi('Conceal',                    s:base0D, s:base00, '')
  call <sid>hi('Cursor',                      s:base00, s:base11, '')
  call <sid>hi('NonText',                    s:base03, '',       '')
  call <sid>hi('Normal',                     s:base05, '', '')
  "call <sid>hi('EndOfBuffer',                s:base05, s:base00, '')
  call <sid>hi('LineNr',                     s:base03, '', '')
  call <sid>hi('SignColumn',                 s:base00, '', '')
  "call <sid>hi('StatusLineNC',               s:base03, s:base01, '')
  "call <sid>hi('VertSplit',                  s:base00, s:base02, '')
  call <sid>hi('ColorColumn',                '',       s:base01, '')
  call <sid>hi('CursorColumn',               '',       s:base01, '')
  call <sid>hi('CursorLine',                 '',       s:base01, '')
  call <sid>hi('CursorLineNR',               s:base00, s:base00, '')
  call <sid>hi('CursorLineNr',               s:base03, s:base01, '')
  call <sid>hi('TabLine',                    s:base03, s:base01, '')
  call <sid>hi('TabLineFill',                s:base03, s:base01, '')
  call <sid>hi('TabLineSel',                 s:base0B, s:base01, '')
  call <sid>hi('helpExample',                s:base0A, '',       '')
  call <sid>hi('helpCommand',                s:base0A, '',       '')


" Syntax
" =======
  call <sid>hi('Boolean',                    s:base09, '',       '')
  call <sid>hi('Character',                  s:base0E, '',       '')
  "call <sid>hi('Comment',                    s:base03, '',       'italic')
  call <sid>hi('Comment',                    s:base03, '',       '')
  call <sid>hi('Conditional',                s:base0E, '',       '')
  call <sid>hi('Constant',                   s:base09, '',       '')
  call <sid>hi('Define',                     s:base0E, '',       '')
  call <sid>hi('Delimiter',                  s:base0F, '',       '')
  call <sid>hi('Float',                      s:base09, '',       '')
  call <sid>hi('Function',                   s:base0D, '',       '')
  call <sid>hi('Identifier',                 s:base0C, '',       '')
  call <sid>hi('Include',                    s:base0D, '',       '')
  call <sid>hi('Keyword',                    s:base0E, '',       '')
  call <sid>hi('Label',                      s:base0A, '',       '')
  call <sid>hi('Number',                     s:base09, '',       '')
  call <sid>hi('Operator',                   s:base05, '',       '')
  call <sid>hi('PreProc',                    s:base0A, '',       '')
  call <sid>hi('Repeat',                     s:base0A, '',       '')
  call <sid>hi('Special',                    s:base0C, '',       '')
  call <sid>hi('SpecialChar',                s:base0F, '',       '')
  call <sid>hi('Statement',                  s:base0E, '',       '')
  call <sid>hi('StorageClass',               s:base0A, '',       '')
  call <sid>hi('String',                     s:base0B, '',       '')
  "call <sid>hi('String',                     s:base0B, '',       'italic')
  call <sid>hi('Structure',                  s:base0E, '',       '')
  call <sid>hi('Tag',                        s:base0A, '',       '')
  call <sid>hi('Todo',                       s:base0A, s:base01, '')
  call <sid>hi('Type',                       s:base0A, '',       '')
  call <sid>hi('Typedef',                    s:base0A, '',       '')
  call <sid>hi('SpellBad',                   '',       '',       'undercurl')
  call <sid>hi('SpellLocal',                 '',       '',       'undercurl')
  call <sid>hi('SpellCap',                   '',       '',       'undercurl')
  call <sid>hi('SpellRare',                  '',       '',       'undercurl')


" Language Plugins
" =================
  call <sid>hi('csClass',                    s:base0A, '',       '')
  call <sid>hi('csAttribute',                s:base0A, '',       '')
  call <sid>hi('csModifier',                 s:base0E, '',       '')
  call <sid>hi('csType',                     s:base0E, '',       '')
  call <sid>hi('csUnspecifiedStatement',     s:base0D, '',       '')
  call <sid>hi('csContextualStatement',      s:base0E, '',       '')
  call <sid>hi('csNewDecleration',           s:base0E, '',       '')
  call <sid>hi('cOperator',                  s:base0C, '',       '')
  call <sid>hi('cPreCondit',                 s:base0E, '',       '')

  call <sid>hi('cssColor',                   s:base0C, '',       '')
  call <sid>hi('cssBraces',                  s:base05, '',       '')
  call <sid>hi('cssClassName',               s:base0E, '',       '')

  call <sid>hi('DiffAdd',                    s:base0B, s:base01, '')
  call <sid>hi('DiffChange',                 s:base03, s:base01, '')
  call <sid>hi('DiffDelete',                 s:base0E, s:base01, '')
  call <sid>hi('DiffText',                   s:base0D, s:base01, '')
  call <sid>hi('DiffAdded',                  s:base10, s:base0B, '')
  call <sid>hi('DiffFile',                   s:base0E, s:base00, '')
  call <sid>hi('DiffNewFile',                s:base0B, s:base00, '')
  call <sid>hi('DiffLine',                   s:base0D, s:base00, '')
  call <sid>hi('DiffRemoved',                s:base10, s:base0E, '')
  call <sid>hi('gitCommitOverflow',          s:base0E, '',       '')
  call <sid>hi('gitCommitSummary',           s:base0B, '',       '')

  call <sid>hi('htmlBold',                   s:base0A, '',       '')
  call <sid>hi('htmlItalic',                 s:base0E, '',       '')
  call <sid>hi('htmlTag',                    s:base0C, '',       '')
  call <sid>hi('htmlEndTag',                 s:base0C, '',       '')
  call <sid>hi('htmlArg',                    s:base0A, '',       '')
  call <sid>hi('htmlTagName',                s:base07, '',       '')

  call <sid>hi('javaScript',                 s:base05, '',       '')
  call <sid>hi('javaScriptNumber',           s:base09, '',       '')
  call <sid>hi('javaScriptBraces',           s:base05, '',       '')

  call <sid>hi('markdownCode',               s:base0B, '',       '')
  call <sid>hi('markdownCodeBlock',          s:base0B, '',       '')
  call <sid>hi('markdownHeadingDelimiter',   s:base0D, '',       '')
  "call <sid>hi('markdownItalic',             s:base0E, '',       'italic')
  call <sid>hi('markdownItalic',             s:base0E, '',       '')
  "call <sid>hi('markdownBold',               s:base0A, '',       'italic')
  call <sid>hi('markdownBold',               s:base0A, '',       '')
  "call <sid>hi('markdownCodeDelimiter',      s:base0F, '',       'italic')
  call <sid>hi('markdownCodeDelimiter',      s:base0F, '',       '')
  call <sid>hi('markdownError',              s:base05, s:base00, '')
  call <sid>hi('markdownError',              s:base05, s:base00, '')

  call <sid>hi('NeomakeErrorSign',           s:base0E, s:base00, '')
  call <sid>hi('NeomakeWarningSign',         s:base0A, s:base00, '')
  call <sid>hi('NeomakeInfoSign',            s:base10, s:base00, '')
  call <sid>hi('NeomakeError',               s:base0E, '',       'undercurl')
  call <sid>hi('NeomakeWarning',             s:base0E, '',       'undercurl')

"   call <sid>hi('ALEErrorSign',               s:base0E, s:base00, s:bold)
"   call <sid>hi('ALEWarningSign',             s:base0A, s:base00, s:bold)
"   call <sid>hi('ALEInfoSign',                s:base10, s:base00, s:bold)
  call <sid>hi('ALEErrorSign',               s:base10, s:base11, 'bold')
  "call <sid>hi('ALEWarningSign',             s:base0A, s:base00, s:bold)
  "call <sid>hi('ALEInfoSign',                s:base10, s:base00, s:bold)

  call <sid>hi('NERDTreeExecFile',           s:base05, '',       '')
  call <sid>hi('NERDTreeDirSlash',           s:base0D, '',       '')
  call <sid>hi('NERDTreeOpenable',           s:base0D, '',       '')
  call <sid>hi('NERDTreeFile',               '',       '',   '')
  call <sid>hi('NERDTreeFlags',              s:base0D, '',       '')

  call <sid>hi('phpComparison',              s:base05, '',       '')
  call <sid>hi('phpParent',                  s:base05, '',       '')
  call <sid>hi('phpMemberSelector',          s:base05, '',       '')

  call <sid>hi('pythonRepeat',               s:base0E, '',       '')
  call <sid>hi('pythonOperator',             s:base0E, '',       '')

  call <sid>hi('rubyConstant',               s:base0A, '',       '')
  call <sid>hi('rubySymbol',                 s:base0B, '',       '')
  call <sid>hi('rubyAttribute',              s:base0D, '',       '')
  call <sid>hi('rubyInterpolation',          s:base0B, '',       '')
  call <sid>hi('rubyInterpolationDelimiter', s:base0F, '',       '')
  call <sid>hi('rubyStringDelimiter',        s:base0B, '',       '')
  call <sid>hi('rubyRegexp',                 s:base0C, '',       '')

  call <sid>hi('sassidChar',                 s:base0E, '',       '')
  call <sid>hi('sassClassChar',              s:base09, '',       '')
  call <sid>hi('sassInclude',                s:base0E, '',       '')
  call <sid>hi('sassMixing',                 s:base0E, '',       '')
  call <sid>hi('sassMixinName',              s:base0D, '',       '')

  call <sid>hi('vimfilerLeaf',               s:base05, '',       '')
  call <sid>hi('vimfilerNormalFile',         s:base05, s:base00, '')
  call <sid>hi('vimfilerOpenedFile',         s:base0D, '',       '')
  call <sid>hi('vimfilerClosedFile',         s:base0D, '',       '')

  call <sid>hi('GitGutterAdd',               s:base0B, s:base00, 'bold')
  call <sid>hi('GitGutterChange',            s:base0D, s:base00, 'bold')
  call <sid>hi('GitGutterDelete',            s:base0E, s:base00, 'bold')
  call <sid>hi('GitGutterChangeDelete',      s:base0E, s:base00, 'bold')

  call <sid>hi('SignifySignAdd',             s:base0B, s:base00, 'bold')
  call <sid>hi('SignifySignChange',          s:base0D, s:base00, 'bold')
  call <sid>hi('SignifySignDelete',          s:base0E, s:base00, 'bold')
  call <sid>hi('SignifySignChangeDelete',    s:base0E, s:base00, 'bold')
  call <sid>hi('SignifySignDeleteFirstLine', s:base0E, s:base00, 'bold')

  call <sid>hi('xmlTag',                     s:base0C, '',       '')
  call <sid>hi('xmlTagName',                 s:base05, '',       '')
  call <sid>hi('xmlEndTag',                  s:base0C, '',       '')

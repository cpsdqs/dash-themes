highlight clear

set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "Dash"

let s:white = ['#dbe5ed', 189]
let s:gray5 = ['#c5c5c8', 188]
let s:gray4 = ['#9ca8b4', 146]
let s:gray3 = ['#586b7e', 102]
let s:grayS = ['#384b5e', 80]
let s:gray2 = ['#232b32', 59]
let s:gray1 = ['#181d22', 23]

let s:red = ['#f54784', 205]
let s:orange = ['#ed9b50', 216]
let s:yellow = ['#ffb91b', 221]
let s:teal = ['#46c999', 79]
let s:green = ['#4ebc6b', 114]
let s:cyan = ['#43c5e5', 80]
let s:blue = ['#5b85ff', 111]
let s:indigo = ['#637bc5', 104]
let s:purple = ['#8c63d9', 140]

" magic code stolen from quantum.vim
function! s:HL(group, fg, bg, attr)
  if !empty(a:fg)
    exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
  endif
  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
  endif
  if a:attr != ''
    exec 'hi ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
  endif
endfun

" see :h hitest.vim
call s:HL('ColorColumn',                    '',         s:gray2,    '')
call s:HL('Conceal',                        '',         s:gray2,    '')
call s:HL('Cursor',                         s:gray2,    s:gray5,    '')
call s:HL('CursorIM',                       s:gray2,    s:gray5,    '')
call s:HL('CursorColumn',                   '',         s:gray2,    '')
call s:HL('CursorLine',                     '',         s:gray2,    'none')
call s:HL('CursorLineNr',                   s:cyan,     s:gray2,    'none')
call s:HL('Directory',                      s:blue,     '',         '')
call s:HL('DiffAdd',                        s:green,    s:gray2,    'none')
call s:HL('DiffChange',                     s:orange,   s:gray2,    'none')
call s:HL('DiffDelete',                     s:red,      s:gray2,    'none')
call s:HL('DiffText',                       s:blue,     s:gray1,    'none')
call s:HL('EndOfBuffer',                    s:gray3,    s:gray1,    'none')
call s:HL('ErrorMsg',                       s:red,      s:gray1,    'bold')
call s:HL('VertSplit',                      s:gray1,    s:gray4,    '')
call s:HL('FoldColumn',                     s:gray4,    s:gray2,    '')
call s:HL('SignColumn',                     s:gray4,    s:gray2,    '')
call s:HL('Folded',                         s:gray3,    s:gray1,    '')
call s:HL('IncSearch',                      s:yellow,   '',         '')
call s:HL('LineNr',                         s:gray3,    '',         '')
call s:HL('CursorLineNr',                   s:gray4,    '',         '')
call s:HL('MatchParen',                     s:cyan,     s:gray1,    'underline')
call s:HL('ModeMsg',                        s:gray4,    '',         '')
call s:HL('MoreMsg',                        s:gray4,    '',         '')
call s:HL('NonText',                        s:grayS,    '',         'none')
call s:HL('Normal',                         s:gray5,    s:gray1,    'none')
call s:HL('Pmenu',                          '',         s:gray3,    '')
call s:HL('PmenuSbar',                      '',         s:gray2,    '')
call s:HL('PmenuSel',                       s:gray2,    s:cyan,     '')
call s:HL('PmenuThumb',                     '',         s:gray4,    '')
call s:HL('Question',                       s:blue,     '',         'none')
call s:HL('QuickFixLine',                   s:gray1,    s:yellow,   'none')
call s:HL('Search',                         s:gray1,    s:yellow,   '')
call s:HL('SpecialKey',                     s:grayS,    '',         '')
call s:HL('SpellCap',                       s:blue,     '',         'undercurl')
call s:HL('SpellBad',                       s:red,      '',         'undercurl')
call s:HL('StatusLine',                     s:gray5,    s:gray3,    'none')
call s:HL('StatusLineNC',                   s:gray2,    s:gray4,    '')
call s:HL('TabLine',                        s:gray4,    s:gray2,    'none')
call s:HL('TabLineFill',                    s:gray4,    s:gray2,    'none')
call s:HL('TabLineSel',                     s:yellow,   s:gray3,    'none')
call s:HL('Title',                          s:green,    '',         'none')
call s:HL('Visual',                         '',         s:grayS,    '')
call s:HL('WarningMsg',                     s:red,      '',         '')
call s:HL('WildMenu',                       s:gray2,    s:cyan,	    '')

" see :h w18
call s:HL('Constant',                       s:orange,   '',         '')
call s:HL('String',                         s:green,    '',         '')
call s:HL('Character',                      s:green,    '',         '')
call s:HL('Number',                         s:orange,   '',         '')
call s:HL('Boolean',                        s:orange,   '',         '')
call s:HL('Float',                          s:orange,   '',         '')
call s:HL('Identifier',                     s:red,      '',         'none')
call s:HL('Function',                       s:blue,     '',         '')
call s:HL('Statement',                      s:purple,   '',         'none')
call s:HL('Conditional',                    s:white,    '',         'bold')
call s:HL('Repeat',                         s:white,    '',         'bold')
call s:HL('Label',                          s:white,    '',         'bold')
call s:HL('Keyword',                        s:white,    '',         'bold')
call s:HL('Exception',                      s:white,    '',         'bold')
call s:HL('Operator',                       s:gray4,    '',         'bold')
call s:HL('PreProc',                        s:gray4,    '',         '')
call s:HL('Include',                        s:blue,     '',         '')
call s:HL('Define',                         s:purple,   '',         'none')
call s:HL('Macro',                          s:purple,   '',         'italic')
call s:HL('PreCondit',                      s:gray4,    '',         '')
call s:HL('Type',                           s:blue,     '',         '')
call s:HL('StorageClass',                   s:blue,     '',         'bold')
call s:HL('Structure',                      s:blue,     '',         'bold')
call s:HL('Typedef',                        s:white,    '',         'bold')
call s:HL('Special',                        s:cyan,     '',         '')
call s:HL('Underlined',                     s:blue,     '',         'none')
call s:HL('Error',                          s:red,      s:gray1,    'bold')
call s:HL('Todo',                           s:orange,   s:gray1,    'bold')
call s:HL('Comment',                        s:gray3,    s:gray1,    'italic')
call s:HL('ParenSep',                       s:gray4,    '',         '')
call s:HL('Attribute',                      s:gray3,    '',         '')
call s:HL('Param',                          s:orange,   '',         'italic')
hi link LineComment Comment
hi link CommentLine Comment
hi link Command Keyword
hi link Func Function
hi link Highlight Identifier

hi link vimUserFunc Function
hi link vimParenSep ParenSep

hi link rustModPathSep Operator
hi link rustCommentLineDoc Comment
hi link rustCommentLine Comment
hi link rustAttribute Attribute
hi link rustDerive Attribute
hi link rustIdentifier Identifier
hi link rustEnumVariant StorageClass
hi link rustMacroVariable Identifier
hi link rustSelf Identifier
call s:HL('rustDeriveTrait',                s:blue,     '',         '')
call s:HL('rustSigil',                      s:gray4,    '',         '')

hi link javascriptClassKeyword Keyword
hi link javascriptReserved Keyword
hi link javascriptFuncArg Param
hi link javascriptMethod Function
hi link javascriptProp Identifier
call s:HL('javascriptClassName',            s:yellow,   '',         '')

hi link rubyLocalVariableOrMethod Identifier
hi link rubyPseudoVariable Identifier

" Vim-Fugitive
call s:HL('diffAdded',                      s:green,    '',         '')
call s:HL('diffRemoved',                    s:red,      '',         '')

" Vim-Gittgutter
call s:HL('GitGutterAdd',                   s:green,    '',         '')
call s:HL('GitGutterChange',                s:yellow,   '',         '')
call s:HL('GitGutterDelete',                s:red,      '',         '')
call s:HL('GitGutterChangeDelete',          s:orange,   '',         '')


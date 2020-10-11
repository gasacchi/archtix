" ===========================================
" _   _    __    ___  _  _  ____  _  _  ___  
"( )_( )  /__\  / __)( )/ )(_  _)( \( )/ __) 
" ) _ (  /(__)\( (__  )  (  _)(_  )  (( (_-. 
"(_) (_)(__)(__)\___)(_)\_)(____)(_)\_)\___/.
" ===========================================
" File: hacking.vim
" Maintener: 6asacchi@gmail.com
" Licence: MIT
" ===========================================

highlight clear

if exists("syntax_on")
  syntax reset
endif

set background=dark

let g:colors_name="hacking"

function! Hi(group, guibg, guifg, gui)
  exec "hi " . a:group . " guibg=" . a:guibg ." guifg=" . a:guifg . " gui=" . a:gui
endfunction

" {{{ Theme
let s:bg='#030D00'
let s:comment='#022400'
let s:darker='#003B00'
let s:dark='#005200'
let s:light='#00C729'
let s:lighter='#80E544'
let s:warn='#FFCB47'
let s:danger='#E83151'
" }}}

" {{{ Basic: Grup                 bg                    fg                    gui

" Comment
call Hi(     'Comment',            'none',                s:comment,       'italic,bold' )
" Constant
call Hi(     'Normal',              s:bg,                 s:dark,               'none' )
call Hi(     'Constant',            'none',                s:dark,       'bold' )
call Hi(     'String',            'none',                s:lighter,       'none' )
call Hi(     'Character',            'none',                s:light,       'bold' )
call Hi(     'Number',            'none',                s:lighter,       'bold' )
call Hi(     'Boolean',            'none',                s:dark,       'bold' )
call Hi(     'Float',            'none',                s:lighter,       'italic' )
" Identifier
call Hi(     'Identifier',            'none',                s:light,       'none' )
call Hi(     'Function',            'none',                s:dark,       'bold' )
" Statement
call Hi(     'Statement',            'none',                s:lighter,       'bold' )
call Hi(     'Conditional',            'none',                s:light,       'italic,bold' )
call Hi(     'Repeat',            'none',                s:light,       'italic,bold' )
call Hi(     'Label',            'none',                s:light,       'bold' )
call Hi(     'Operator',            'none',                s:lighter,       'none' )
call Hi(     'Keyword',            'none',                s:dark,       'bold' )
call Hi(     'Exception',            'none',                s:dark,       'bold' )
" PreFroc
call Hi(     'PreProc',            'none',                s:dark,       'bold,italic' )
call Hi(     'Include',            'none',                s:dark,       'bold,italic' )
call Hi(     'Define',            'none',                s:dark,       'bold,italic' )
call Hi(     'Macro',            'none',                s:dark,       'bold,italic' )
call Hi(     'PreCondit',            'none',                s:dark,       'bold,italic' )
" Type
call Hi(     'Type',            'none',                s:lighter,       'italic' )
call Hi(     'StorageClass',            'none',                s:dark,       'bold,italic' )
call Hi(     'Structure',            'none',                s:dark,       'bold,italic' )
call Hi(     'Typedef',            'none',                s:dark,       'bold,italic' )
" Special
call Hi(     'Special',            'none',                s:dark,       'bold' )
call Hi(     'SpecialChar',            'none',                s:dark,       'bold' )
call Hi(     'Tag',            'none',                s:dark,       'italic' )
call Hi(     'Delimiter',            'none',                s:light,       'bold' )
call Hi(     'SpecialComment',            'none',                s:lighter,       'bold,italic' )
call Hi(     'Debug',            'none',                s:dark,       'bold,italic' )
" Underline
call Hi(     'Underlined',            'none',                s:light,       'italic' )
" Ignore
call Hi(     'Ignore',            'none',                s:dark,       'none' )
" Error
call Hi(     'Error',            'none',                s:danger,       'bold' )
" Todo
call Hi(     'Todo',            'none',                s:warn,       'bold' )
" }}}

" {{{ Ui
call Hi(     'ColorColumn',      s:darker,                s:light,       'none' )
call Hi(     'Conceal',      s:darker,                s:light,       'none' )
call Hi(     'Cursor',      'none',                s:light,       'bold' )
call Hi(     'CursorColumn',      s:darker,                s:light,       'none' )
call Hi(     'CursorLine',      s:darker,                s:light,       'bold' )
call Hi(     'Directory',      'none',                s:light,       'none' )
call Hi(     'DiffAdd',      s:darker,                s:lighter,       'bold' )
call Hi(     'DiffChange',      s:darker,                s:warn,       'bold' )
call Hi(     'DiffDelete',      s:darker,                s:danger,       'bold' )
call Hi(     'DiffText',      s:darker,                s:light,       'none' )
call Hi(     'EndOfBuffer',      s:bg,                s:darker,       'none' )
call Hi(     'TermCursor',      s:darker,                s:light,       'none' )
call Hi(     'TermCursorNC',      s:darker,                s:warn,       'none' )
call Hi(     'ErrorMsg',      s:bg,                s:danger,       'none' )
call Hi(     'VertSplit',      s:bg,                s:dark,       'bold' )
call Hi(     'Folded',      'none',                s:dark,       'italic' )
call Hi(     'FoldedColumn',      'none',                s:dark,       'italic' )
call Hi(     'SignColumn',      'none',                s:dark,       'bold' )
call Hi(     'IncSearch',      'none',                s:warn,       'bold' )
call Hi(     'Subtitute',      'none',                s:warn,       'bold' )
call Hi(     'LineNr',      'none',                s:darker,       'bold' )
call Hi(     'CursorLineNr',      'none',                s:warn,       'bold' )
call Hi(     'MatchParen',      'none',                s:danger,       'underline' )
call Hi(     'ModeMsg',      'none',                s:light,       'none' )
call Hi(     'MsgArea',      'none',                s:lighter,       'none' )
call Hi(     'MsgSeparator',      'none',                s:light,       'none' )
call Hi(     'MoreMsg',      'none',                s:light,       'none' )
call Hi(     'NonText',      'none',                s:comment,       'none' )
call Hi(     'NormalFloat',      'none',                s:light,       'none' )
call Hi(     'NormalNC',      'none',                s:darker,       'none' )
call Hi(     'Pmenu',          s:darker,                s:lighter,       'none' )
call Hi(     'PmenuSel',         s:dark,                s:light,       'none' )
call Hi(     'PmenuSbar',          s:lighter,                s:lighter,       'none' )
call Hi(     'PmenuThumb',         s:darker,                s:lighter,       'none' )
call Hi(     'Question',         'none',                s:light,       'none' )
call Hi(     'QuickFixLine',         'none',                s:warn,       'none' )
call Hi(     'Search',         s:warn,                s:darker,       'none' )
call Hi(     'SpecialKey',         'none',                s:light,       'none' )
call Hi(     'SpellBad',         'none',                s:warn,       'none' )
call Hi(     'SpellCap',         'none',                s:light,       'none' )
call Hi(     'SpellLocal',         'none',                s:light,       'none' )
call Hi(     'SpellRare',         'none',                s:light,       'none' )
call Hi(     'StatusLine',         'none',                s:lighter,       'none' )
call Hi(     'StatusLineNC',         'none',                s:light,       'none' )
call Hi(     'TabLine',         'none',                s:light,       'none' )
call Hi(     'TabLineFill',         'none',                s:light,       'none' )
call Hi(     'TabLineSel',         'none',                s:light,       'none' )
call Hi(     'Title',         'none',                s:light,       'none' )
call Hi(     'Visual',         'none',                s:lighter,       'none' )
call Hi(     'VisualNC',         'none',                s:light,       'none' )
call Hi(     'WarningMsg',         'none',                s:danger,       'none' )
call Hi(     'WhiteSpace',         'none',                s:darker,       'none' )
call Hi(     'WildMenu',         'none',                s:light,       'none' )
" }}}

" {{{ Status Line
set laststatus=2
call Hi(     'User1',            'none',              s:warn,      'bold' )
call Hi(     'User2',            'none',              s:darker,      'bold' )
call Hi(     'User3',            'none',              s:light,      'bold' )
call Hi(     'User3',            'none',              s:light,      'bold' )
let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'V·Line ',
       \ '' : 'V·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'Replace ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \}
set statusline=
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%2*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline+=\ %F
set statusline+=\ %{&modified?'[+]':''}
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines

" }}}
"
" {{{ Tabline 
 
"}}}

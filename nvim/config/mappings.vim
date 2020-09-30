" =============================================================================
"               ___    __    ___    __    ___  ___  _   _  ____ 
"              / __)  /__\  / __)  /__\  / __)/ __)( )_( )(_  _)
"             ( (_-. /(__)\ \__ \ /(__)\( (__( (__  ) _ (  _)(_ 
"              \___/(__)(__)(___/(__)(__)\___)\___)(_) (_)(____)
" =============================================================================
"                             _  _  ____  __  __ 
"                            ( \/ )(_  _)(  \/  )
"                             \  /  _)(_  )    ( 
"                              \/  (____)(_/\/\_)
" =============================================================================
"   __  __    __    ____  ____  ____  _  _  ___  ___        _  _  ____  __  __ 
"  (  \/  )  /__\  (  _ \(  _ \(_  _)( \( )/ __)/ __)      ( \/ )(_  _)(  \/  )
"   )    (  /(__)\  )___/ )___/ _)(_  )  (( (_-.\__ \       \  /  _)(_  )    ( 
"  (_/\/\_)(__)(__)(__)  (__)  (____)(_)\_)\___/(___/  ()    \/  (____)(_/\/\_)
" =============================================================================
" Author:  Gasacchi
" website: https://gasacchi.com
" licence: GPL
" =============================================================================

" Disabling arrow key and live with it >.<
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize with alt + hjkl
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
noremap <silent> <M-l>    :vertical resize +2<CR>

" Remap Esc to jk
inoremap nn <ESC>
" Escape command mode
cnoremap nn <C-c>

" Map Leader to space  
let mapleader="\<Space>"
nnoremap <silent> <Leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <Leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" WhichKey Mappings

" Create map to add keys to
let g:which_key_map =  {}

" Single Mapping
let g:which_key_map['/'] =  [':Commentary', 'toggle comment']
let g:which_key_map[' '] =  [':let @/ = ""', 'no highlight search']


" Action Mapping
nmap <Leader>as <Plug>Sneak_s
nmap <Leader>aS <Plug>Sneak_S
let g:which_key_map.a = {
      \ 'name': 'actions',
      \ 'i': [':IndentLinesToggle', 'toogle indentline'],
      \ 'n': [':set number', 'set number'],
      \ 'N': [':set nonumber', 'set no number'],
      \ 'r': [':set relativenumber', 'set relativenumber'],
      \ 'R': [':set norelativenumber', 'set no relativenumber'],
      \ 's': 'sneak foward',
      \ 'S': 'sneak backward',
      \}

" Buffer Mapping
nnoremap <Leader>bD :bdelete<SPACE>
nnoremap <Leader>bg :buffer<SPACE>
let g:which_key_map.b = {
      \ 'name': '+buffers',
      \ 'f': [':bfirst', 'go to first buffer'],
      \ 'l': [':blast', 'go to last buffer'],
      \ 'n': [':bnext', 'go to next buffer'],
      \ 'p': [':bprevious', 'go to previous buffer'],
      \ 'd': [':bdelete %', 'delete current buffer'],
      \ 'S': [':Startify', 'lauch startify'],
      \}
let g:which_key_map.b.g = 'go to buffer'
let g:which_key_map.b.D = 'delete buffer / buffers'

" Coc Mapping
" coc plugin config ~/.config/nvim/config/plugins/coc.vim
" additional mapping on line 80
let g:which_key_map.c = {
      \ 'name': '+coc',
      \ 'a' : ['<Plug>(coc-codeaction)', 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)', 'selected action'],
      \ 'c' : [':CocList commands', 'commands'],
      \ 'C' : [':CocConfig', 'open config file'],
      \ 'd' : ['<Plug>(coc-definition)', 'definition'],
      \ 'D' : [':CocList diagnostics', 'diagnostics'],
      \ 'e' : [':CocList extensions', 'extensions'],
      \ 'f' : ['<Plug>(coc-format)', 'format'],
      \ 'h' : 'hover documentation',
      \ 'i' : ['<Plug>(coc-implementation)', 'implementation'],
      \ 'I' : 'install extension(s)',
      \ 'n' : ['<Plug>(coc-diagnostic-next)', 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)', 'next error'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)', 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)', 'prev error'],
      \ 'r' : ['<Plug>(coc-rename)', 'rename'],
      \ 'R' : [':CocRestart', 'restart'],
      \ 's' : [':CocList outline', 'current document symbols'],
      \ 'S' : [':CocList -I symbols', 'workspace symbols'],
      \ 't' : ['<Plug>(coc-type-definition)', 'type definition'],
      \ 'u' : 'uninstall extension(s)',
      \ 'U' : [':CocUpdate', 'update CoC'],
      \ '^' : ['<Plug>(coc-references)', 'references'],
      \}

" File Mapping
nnoremap <Leader>fe :e<SPACE>
let g:which_key_map.f = {
      \ 'name': '+file',
      \ 'W': [':wq', 'file write and exit'],
      \ 'e': 'edit file(s)',
      \ 'w': [':w', 'file write / save'],
      \ 'x': [':CocCommand explorer', 'open explorer'],
      \}

" Git Mapping
" fugnitive config ~/.config/nvim/config/plugins/fugnitive.vim
" signify config ~/.config/nvim/config/plugins/signify.vim
let g:which_key_map.g = {
      \ 'name': '+git',
      \ 'a': [':Git add %', 'add curent file'],
      \ 'A': [':Git add .', 'add all file'],
      \ 'c': [':Git commit', 'commit'],
      \ 'd': [':Git diff', 'git diff'],
      \ 'D': [':Gdiffsplit', 'git diff split'],
      \ 'g': [':Ggrep', 'git grep'],
      \ 'h': [':SignifyToggle', 'toogle signify'],
      \ 'H': [':SignifyToggleHighlight', 'toogle signify highlight'],
      \ 'j': ['<plug>(signify-next-hunk)', 'next hunk'],
      \ 'k': ['<Plug>(signify-prev-hunk)', 'prev hunk'],
      \ 's': [':Gstatus', 'git status'],
      \ 'l': [':Glog', 'git log'],
      \ 'p': [':Git push', 'push'],
      \ 'P': [':Git pull', 'pull'],
      \ 'r': [':GRemove', 'remover'],
      \}

" Plug Mapping
let g:which_key_map.p = {
      \ 'name': '+plugin',
      \ 's': [':PlugStatus', 'plug show status'],
      \ 'd': [':PlugDiff', 'plug show diff'],
      \ 'c': [':PlugClean', 'plug clean plugin(s)'],
      \ 'i': [':PlugInstall', 'plug install plugin(s)'],
      \ 'u': [':PlugUpdate', 'plug updated plugin(s)'],
      \ 'U': [':PlugUpgrade', 'plug self upgrade'],
      \}

" Exit Mapping
let g:which_key_map.q = {
      \ 'name': '+exit',
      \ 'q': [':q', 'exit'],
      \ 'Q': [':q!', 'exit without save'],
      \}

" Search Mapping
nnoremap <silent><Leader>sb :buffers<SPACE>
let g:which_key_map.s = {
      \ 'name': '+search',
      \ 'c': [':Commands', 'commands'],
      \ 'f': [':Files', 'search files'],
      \ 'g': [':GFiles', 'search git files'],
      \ 'G': [':GFiles?', 'search modified git files'],
      \ 'b': 'search buffers',
      \ 'B': [':Buffers', 'search fzf buffers'],
      \ 'l': [':BLines', 'search lines buffer'],
      \ 'L': [':Lines', 'search lines'],
      \ 'r': [':Rg', 'search text'],
      \ 'h': [':History', 'history'],
      \}

" Terminal Mapping
let g:which_key_map.t = {
      \ 'name': '+terminal',
      \ 'g': [':FloatermNew lazygit', 'lazygit'],
      \ 'f': [':FloatermNew fzf', 'fzf'],
      \ 'p': [':FloatermNew python', 'python'],
      \ 'r': [':FloatermNew ranger', 'ranger'],
      \ 't': [':FloatermToggle', 'toggle terminal'],
      \ 'n': [':FloatermNew node', 'node'],
      \ 'y': [':FloatermNew ytop', 'ytop'],
      \ 'u': [':FloatermNew ncdu', 'ncdu'],
      \ ';': [':FloatermNew --wintype=popup --height=10', 'node'],
      \}

" VIM Config Mapping
let g:which_key_map.v = {
      \ 'name': '+vimconfig',
      \ 'c': [':e $MYVIMRC', 'edit vim config'],
      \ 'r': [':source $MYVIMRC', 'reload vim config'],
      \}

" Window split Mapping
nnoremap <silent><Leader>wV :vsplit<SPACE>
nnoremap <silent><Leader>wH :split<SPACE>
let g:which_key_map.w = {
      \ 'name': '+split',
      \ 'z': [':Goyo', 'Zen Mode'],
      \ 'v': [':vsplit', 'virtual split'],
      \ 'h': [':split', 'horizontal split'],
      \}
let g:which_key_map.w.V = 'vertical split a file'
let g:which_key_map.w.H = 'horizontal split a file'


call which_key#register(' ', "g:which_key_map")

" =============================================================================
"                               ____  _____  ____ 
"                              ( ___)(  _  )( ___)
"                               )__)  )(_)(  )__) 
"                              (____)(_____)(__)  
" =============================================================================

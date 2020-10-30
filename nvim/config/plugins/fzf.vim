" ========================================================================
"             ___    __    ___    __    ___  ___  _   _  ____ 
"            / __)  /__\  / __)  /__\  / __)/ __)( )_( )(_  _)
"           ( (_-. /(__)\ \__ \ /(__)\( (__( (__  ) _ (  _)(_ 
"            \___/(__)(__)(___/(__)(__)\___)\___)(_) (_)(____)
" ========================================================================
"                          _  _  ____  __  __ 
"                         ( \/ )(_  _)(  \/  )
"                          \  /  _)(_  )    ( 
"                           \/  (____)(_/\/\_)
" ========================================================================
"              ____  ____  ____        _  _  ____  __  __ 
"             ( ___)(_   )( ___)      ( \/ )(_  _)(  \/  )
"              )__)  / /_  )__)        \  /  _)(_  )    ( 
"             (__)  (____)(__)    ()    \/  (____)(_/\/\_)
" ========================================================================
" Author:  Gasacchi
" Website: https://gasacchi.com
" Licence: GPL
" ========================================================================

" key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" set to window float
" let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Function'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" =======================================================================
"                              ____  _____  ____ 
"                             ( ___)(  _  )( ___)
"                              )__)  )(_)(  )__) 
"                             (____)(_____)(__)  
" =======================================================================

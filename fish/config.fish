set fish_greeting

# fish syntax highlighting
set fish_color_command 80E544 --bold
set fish_color_quote 00C729 --italic
set fish_color_redirection FFCB47
set fish_color_end E83151
set fish_color_error E83151
set fish_color_param 00C729
set fish_color_comment 005200
set fish_color_selection --background='green'
set fish_color_search_match --background='green'
set fish_color_operator 80E544
set fish_color_escape FFCB47
set fish_color_autosuggestion 003B00
set fish_color_cancel E83151

# Alias 
alias v=nvim
alias vim=nvim

# xbps
alias xu='doas xbps-install -Suv' # update system
alias xi='doas xbps-install -S' # install package
alias xr='doas xbps-remove -R' # remove package
alias xro='doas xbps-remove -o' # remove orphane package
alias xrc='doas xbps-remove -O' # remove package cache
alias xq='xbps-query -Rs' # find remote package
alias xqr='xbps-query -R' # find package and show details
alias xqo='xbps-query -O' # find orphane package
alias xl='xbps-query -l' # list all installed package
alias xf='xbps-query -f' # find local package

# media
alias anime='cd ~/xxx/.anime/'

# rust utilities
alias ls='exa'
alias cat='bat'
alias find='fd'
alias du='dust'
# alias grep='rg'
alias ps='procs'
alias sed='sd'
alias loc='tokei'
alias top='btm' 
# alias grex='grex'

# PATH
# FZF
#export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git --exclude .vim'
# editor
export EDITOR=nvim
# Rust
export PATH="$HOME/.cargo/bin:$PATH"
# Installed from Yarn Global
export PATH="$HOME/.yarn/bin:$PATH"

fish_vi_key_bindings


starship init fish | source

set fish_greeting

# fish syntax highlighting
set fish_color_command 88C0D0 --bold
set fish_color_quote A3BE8C --italic
set fish_color_redirection EBCB8B
set fish_color_end BF616A
set fish_color_error BF616A
set fish_color_param 81A1C1
set fish_color_comment 434C5E
set fish_color_selection --background='#5E81AC'
set fish_color_search_match --background='#5E81AC'
set fish_color_operator 8FBCBB
set fish_color_escape EBCB8B
set fish_color_autosuggestion 81A1C1
set fish_color_cancel BF616A

# Alias 
alias v=nvim
alias vim=nvim
alias dev='cd ~/xxx/.dev'
alias yt='cd ~/xxx/.dev/youtube'

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
# mpd

# rust utilities
alias ls='exa'
alias cat='bat'
alias find='fd'
alias du='dust'
alias grep='rg'
alias ps='procs'
alias sed='sd'
alias loc='tokei'
alias top='btm' 
alias grex='grex'
alias tldr='tldr'
alias hyperfine='hyperfine'

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

# history

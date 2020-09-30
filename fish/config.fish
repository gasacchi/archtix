set fish_greeting

# Alias 
alias v=nvim
alias vim=nvim

alias ls='lsd'

alias anime='cd ~/xxx/.anime/'

# rust utilities
alias cat='bat'
alias find='fd'
alias du='dust'
alias grep='rg'
alias ps='procs'
alias sed='sd'
alias loc='tokei'
alias top='btm' 
alias grex='grex'

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

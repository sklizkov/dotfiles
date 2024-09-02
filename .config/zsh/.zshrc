export ZSH=$HOME/.config/zsh

autoload -Uz compinit && compinit
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]-_}={[:upper:][:lower:]_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' list-colors ''
# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

[[ -f $ZSH/aliases.zsh ]] && source $ZSH/aliases.zsh

# export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

source <(fzf --zsh)


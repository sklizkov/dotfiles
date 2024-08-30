alias q='exit'

alias rr='rm -rf'

alias ll='eza -lh --git --group-directories-first --icons'
alias la='eza -alh --git --group-directories-first --icons'
alias ld='eza -alhD --git --icons'
alias lf='eza -alhf --git --icons'
alias lt='eza -T -L=2 --group-directories-first --icons'

alias cat='ccat'

alias top='htop'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias z='zed'
alias zz='zed .'

alias e='nvim'
alias ee='nvim $(fzf -m --preview "bat --color=always --style=numbers --line-range=:500 {}")'

alias t='tmux'
alias tn='tmux new -s' # session_name
alias tt='tmux new -s $(pwd | sed "s/^.*\///")'
alias tl='tmux attach'
alias ta='tmux attach -t' # session_name
alias td='tmux detach'
alias tk='tmux kill-session -t' # session_name

# alias bonzomatic='~/Playground/Bonzomatic/Bonzomatic.app/Contents/MacOS/Bonzomatic'
# alias bonzoconfig='v ~/Playground/Bonzomatic/config.json'


set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export FZF_DEFAULT_COMMAND="fd"
export PATH=$PATH:/home/$USER/.local/bin

set -o ignoreeof # Same as setting `IGNOREEOF=10` which will exit the shell only after the 10th consecutive Ctrl+d

alias gs="git status"

alias ls='eza -lah -g --icons'

alias lg="lazygit"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias cat="bat"

alias cd="z"
alias cdi="zi"

alias ni="npm i"
alias dev="npm run dev"
alias ns="npm start"

alias tls="tmux ls"
alias ta="tmux attach"
alias tks="tmux kill-server"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(zoxide init bash)"
eval "$(fzf --bash)"
eval "$(oh-my-posh init bash --config ~/dotfiles/oh-my-posh/.robbyrussel-modified.omp.json)"

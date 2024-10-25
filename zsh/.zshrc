# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# ZSH on Windows: https://dev.to/pavlosisaris/windows-command-line-revolution-unleash-zsh-and-oh-my-zsh-a-simple-guide-for-developers-271o

export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_COMMAND="fd"
export PATH=$PATH:/home/$USER/.local/bin

set -o ignoreeof # Same as setting `IGNOREEOF=10` which will exit the shell only after the 10th consecutive Ctrl+d

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias lg="lazygit"

alias gs="git status"

alias ls='eza -lah -g --icons'

alias cat='bat'

alias cd="z"
alias cdi="zi"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ni="npm i"
alias dev="npm run dev"
alias ns="npm start"

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

eval "$(zoxide init zsh)"
source <(fzf --zsh)
eval "$(oh-my-posh init zsh  --config ~/dotfiles/oh-my-posh/.robbyrussel-modified.omp.json)"

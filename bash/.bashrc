set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export FZF_DEFAULT_COMMAND="fd"

alias gs="git status"

alias ls='eza -l -g --icons'

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

eval "$(zoxide init bash)"

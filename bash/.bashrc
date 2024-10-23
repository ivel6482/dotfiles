set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias gs="git status"
alias ls='eza -l -g --icons'
alias lg="lazygit"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cat="bat"
alias cd="z"
alias cdi="zi"

eval "$(zoxide init bash)"

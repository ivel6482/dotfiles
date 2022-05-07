#
# ~/.bashrc
#
set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias gs="git status"
alias ls='ls -lah --color=auto'
alias lg="lazygit"
alias ..="cd .."

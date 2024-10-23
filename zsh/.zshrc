# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias lg="lazygit"

alias gs="git status"

alias ls='eza -l -g --icons'

alias cat='bat'

alias cd="z"
alias cdi="zi"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ni="npm i"
alias dev="npm run dev"
alias ns="npm start"

eval "$(zoxide init zsh)"

set fish_greeting

function fish_user_key_bindings
  fish_vi_key_bindings
end

starship init fish | source

alias ls "exa -l -g --icons"
alias vim "nvim"
alias gs "git status"
alias gi "git init"
alias cat "batcat"
alias history "git log --pretty=format:\"%Cgreen%h %Creset%cd %Cblue[%cn] %Creset%s%C(yellow)%d%C(reset)\" --graph --date=relative --decorate --all"
alias open "hub browse"

# TODO: automate installation of packages
# If a package in the list is already installed on the system, it will be reinstalled even if it is already up to date. This behavior can be overridden with the --needed option.
#
# TODO: Add:
# - nvm
# - tpm (tmux)
# - oh-my-posh
# - oh-my-zsh

sudo pacman -S --needed \
 git                    \
 stow                   \
 ripgrep                \
 make                   \
 unzip                  \
 gcc                    \
 xclip                  \
 fd                     \
 neovim                 \
 lazygit                \
 eza                    \
 zoxide                 \
 fzf                    \
 bat                    \
 htop                   \
 bash                   \
 bc                     \
 coreutils              \
 jq                     \
 playerctl              \
 wezterm                \
 zsh                    \
 zsh-autosuggestions

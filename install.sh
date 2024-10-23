# TODO: automate installation of packages
# If a package in the list is already installed on the system, it will be reinstalled even if it is already up to date. This behavior can be overridden with the --needed option.

sudo pacman -S --needed \
 stow                   \
 ripgrep                \
 make                   \
 unzip                  \
 gcc                    \
 xclip                  \
 lazygit

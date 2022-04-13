#!/bin/bash 

# @@@ TODO: Install the following
# 1. exa
# 2. dotnet
# 3. mongodb
# 4. mongodb-compass
# 5. signal
# 6. i3-gaps
# 7. polybar
# 8. feh
# 9. some cool wallpaper
# 10. picom
# 11. bat
# 12. obs
# 13. syncthing
# 14. z
# 15. typescript
# 16. joplin
# 17. rofi
# 18. Mark Text
# 19. ungoogled chromium
# 20. pandoc
# 21. anki
# 22. insomnia

sudo apt update
sudo apt upgrade

# VMWare tools for full resolution
sudo apt install open-vm-tools

sudo apt install git

# Node Version Manager
# @@@ TODO: Skip if nvm is installed:

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# To use nvm without the need to close the terminal window.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install node
nvm use node

sudo apt install python3-pip

# Rust and cargo
# Need to close terminal to use cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Neovim
# @@@ TODO: If neovim install, skip it
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod +x nvim.appimage
sudo mv ./nvim.appimage /usr/local/bin/nvim

# Lunar Vim
# If lunar vim installed skip it
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) -y

# @@@ TODO: If file contains these lines, skip it.
lvim_alias="alias lvim='/home/manquito/.local/bin/lvim'"
vim_alias="alias vim='lvim'"

is_lunar_vim_aliased_in_bashrc=false
is_vim_aliased_to_lunar_vim=false

bash_rc_path=~/.bashrc

grep -q -x -F "$lvim_alias" "$bash_rc_path" && $is_lunar_vim_aliased_in_bashrc = true || $is_lunar_vim_aliased_in_bashrc = false
grep -q -x -F "$vim_alias" "$bash_rc_path" && $is_vim_aliased_to_lunar_vim = true || $is_vim_aliased_to_lunar_vim = false

if [ $is_lunar_vim_aliased_in_bashrc = true ] ; then
  echo $lvim_alias >> ~/.bashrc
fi

if [ $is_vim_aliased_to_lunar_vim = true ] ; then
  echo $vim_alias >> ~/.bashrc
fi

# Clone dotfiles to Documents/dotfiles
# @@@ TODO: Skip if already cloned
git clone https://github.com/ivel6482/dotfiles.git ~/Documents/dotfiles

# Download and Install Fonts

# Included fonts:
# Iosevka
# Cascadia Code
# Victor Mono
# @@@ TODO: How to download Comic Code automatically

# @@@ TODO: Skip creating directory if it already exists
mkdir ~/.fonts 
cd ~/.fonts/

# @@@ FIXME: [: too many arguments
if [ ! -f ~/.fonts/*Iosevka*.ttf ] ; then
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip 
  unzip Iosevka.zip
  rm -rf Iosevka.zip
  rm *Windows*.ttf
fi

# @@@ FIXME: [: too many arguments
if [ ! -f ~/.fonts/*Caskaydia*.ttf ] ; then
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip
  unzip CascadiaCode.zip
  rm -rf CascadiaCode.zip
  rm *Windows*.ttf
fi

# @@@ FIXME: [: too many arguments
if [ ! -f ~/.fonts/*Victor*.ttf ] ; then
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/VictorMono.zip
  unzip VictorMono.zip
  rm -rf VictorMono.zip
  rm *Windows*.ttf
fi

# Return to home
cd 

# Github cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

sudo apt update

sudo apt install gh

source ~/.bashrc
echo "Done"

# TODO: Symlink dotfiles

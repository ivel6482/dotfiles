# Git lastest version
echo "Installing git..."
add-apt-repository ppa:git-core/ppa -y
apt update
apt install git -y
echo "Successfully installed git"

# Vim-plug (Vim)
echo "Installing vim-plug (vim)..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Successfully installed vim-plug (vim)..."

# Vim-plug (Neovim)
echo "Installing vim-plug (neovim)..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "Successfully installed vim-plug (neovim)..."

# Fish shell

echo "Installing fish shell"
apt-add-repository ppa:fish-shell/release-3
apt-get update
apt-get install fish
echo "Succesfully installed fish shell"

echo "Making fish default shell"
chsh -s /usr/bin/fish
echo "Succesfully changed default shell to fish"

# Fisher
echo "Installing fisher"
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
echo "Successfully installed fisher"

echo "Installing fish plugins"
fisher install jorgebucaran/fisher
fisher install jethrokuan/z
fisher install jorgebucaran/nvm.fish
fisher install jorgebucaran/autopair.fish
fisher install oh-my-fish/theme-robbyrussell
echo "Successfully installed fish plugins"

# NVM
echo "NVM: Installing latest node version"
nvm install latest
echo "NVM: Successfully installed latest node version"

# Exa

# cd ~/Downloads

# https://github.com/ogham/exa/releases/download/v0.10.0/exa-linux-x86_64-v0.10.0.zip

# unzip insert name here

# cd bin

# mv exa /usr/local/bin

# TODO
# install dotnet sdk
# install mongodb
# install vscode
# install insomnia
# install signal
# install discord
# install i3-gaps
# install polybar
# install bat
# install obs
# install firefox-dev
# install mongodb-compass
# install anki
# install syncthing and sync
# install nextcloud
# install spotify
# install slack
# install pomotroid
# install node
# install npm
# install commitizen
# install typescript
# install gimp
# install joplin
# install keepass
# install ungoogled-chromium


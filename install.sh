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

# Material ocean theme (gnome-terminal)
echo "Installing material ocean dark theme (gnome-terminal)"
bash -c "$(wget -qO- https://git.io/vQgMr)"
134
echo "Successfully installed material ocean dark theme (gnome-terminal)..."

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

wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-5.0

# install mongodb

echo "Installing mongodb..."
apt update
# https://repo.mongodb.org/apt/ubuntu/dists/focal/mongodb-org/5.0/multiverse/binary-amd64/mongodb-org-server_5.0.2_amd64.deb
echo "Successfully installed mongodb"


echo "Installing mongodb-compass..."
apt update
# https://downloads.mongodb.com/compass/mongodb-compass_1.28.1_amd64.deb
echo "Successfully installed mongodb-compass"



# install signal

echo "Installing signal..."
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null -y

echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list -y

sudo apt update && sudo apt install signal-desktop -y
echo "Successfully installed signal"

# install i3-gaps

echo "Installing i3-gaps..."
sudo add-apt-repository ppa:regolith-linux/release -y
sudo apt update -y
sudo apt install i3-gaps -y
echo "Successfully installed i3-gaps"

# install polybar

echo "Installing polybar..."
apt install build-essential git cmake cmake-data pkg-config python3-sphinx python3-packaging libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev -y
apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev -y
git clone --recursive https://github.com/polybar/polybar
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
# Optional. This will install the polybar executable in /usr/local/bin
sudo make install
cd ..
echo "Successfully installed polybar"

# install picom

# install postgresql

echo "Installing postgresql..."
sudo apt update
sudo apt install postgresql postgresql-contrib
echo "Successfully installed postgresql..."


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

# install rofi
# install papirus

# TODO(ivel): Research how to install these programs automatically
# install vscode
# install discord

# install insomnia

# https://updates.insomnia.rest/downloads/ubuntu/latest?&app=com.insomnia.app&source=website

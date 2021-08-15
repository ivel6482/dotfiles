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

# install mongodb-compass
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
echo "Installing bat..."
sudo apt install bat -y
echo "Successfully isntalled bat"

# install obs
echo "Installing OBS..."
sudo apt install ffmpeg -y
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio -y
echo "Successfully installed OBS"

# install syncthing
echo "Installing syncthing..."
sudo curl -s -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
printf "Package: *\nPin: origin apt.syncthing.net\nPin-Priority: 990\n" | sudo tee /etc/apt/preferences.d/syncthing
sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get install syncthing
echo "Successfully installed syncthing"

# install spotify
echo "Installing spotify..."
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y
echo "Successfully installed spotify"

# install node
# install npm
echo "Installing node.js..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install latest
nvm use latest
echo "Successfully installed node.js"

# install commitizen
echo "Installing commitizen..."
npm install -g commitizen
echo "Successfully installed commitizen"

# install typescript
echo "Installing typescript"
npm i -g typescript@next
echo "Successfully installed typescript"

# install joplin
echo "Installing joplin..."
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
echo "Successfully installed joplin"

# install rofi
echo "Installing rofi..."
apt install rofi -y
echo "Succesfully installed rofi"

# install papirus
echo "Installing papirus icons..."
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme
echo "Successfully installed papirus icons"

# install vscodium
echo "Installing vscodium..."
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg 
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list
sudo apt update && sudo apt install codium -y
echo "Successfully installed vscodium"

# TODO(ivel): Research how to install these programs automatically
# install vscode
# install discord
# install firefox-dev
# install anki
# install nextcloud
# install slack
# install pomotroid
# install gimp
# install keepass

# install ungoogled-chromium (flatpak)

# install insomnia
# https://updates.insomnia.rest/downloads/ubuntu/latest?&app=com.insomnia.app&source=website

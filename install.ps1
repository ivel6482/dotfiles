# Functions

function Update-Environment-Path {
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") `
        + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
}

function Push-User-Path($userPath) {
    $path = [Environment]::GetEnvironmentVariable('Path', 'User')
    $newpath = "$userPath;$path"
    [Environment]::SetEnvironmentVariable("Path", $newpath, 'User')
    Update-Environment-Path
}

function Check-Command($name) {
    return [bool](Get-Command -Name $name -ErrorAction SilentlyContinue)
}

# Rename PC
$computerName = Read-Host "Enter New Computer Name"

Write-Host "Renaming this computer to: " $computerName -ForegroundColor Magenta
Rename-Computer -NewName $computerName

# Disable Sleep on AC Power
Write-Host ""
Write-Host "Disable Sleep on AC Power..." -ForegroundColor Green
Powercfg /Change monitor-timeout-ac 20
Powercfg /Change standby-timeout-ac 0

# Elevate privilages for this session to choco install the packages
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

if (Check-Command -cmdname 'choco') {
    Write-Host "Choco is already installed, skip installation." -ForegroundColor yellow
}
else {
    Write-Host ""
    Write-Host "Installing Chocolatey for Windows..." -ForegroundColor Green
    Write-Host "------------------------------------" -ForegroundColor Green
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
Update-Environment-Path

Write-Host ""
Write-Host "Installing Applications..." -ForegroundColor Green

$Apps = @(
    #BROWSERS
    "firefox",

    #APPS
    "vlc",
    "dotnetcore-sdk",
    "nuget.commandline",
    "obs-studio",

    #coding
    "postman",

    # languages

    # IDE & TOOL
    "vscode", # includes dotnet
    "microsoft-windows-terminal",
    "neovim",
	"7zip",
	"androidstudio",
	"audacity",
	"anki",
	"autohotkey",
	"bitwarden",
	"blender",
	"discord",
	"f.lux",
	"gimp",
	"gh",
	"heroku-cli",
	"imageglass",
	"insomnia-res-api-client",
	"joplin",
	"kdenlive",
	"keepass",
	"keepassxc",
	"libreoffice-fresh",
	# "logitech-options",
	"marktext",
	"dotnet",
	"visualstudio2019community",
	"visualstudio2022community",
	"mongodb-compass",
	"mongodb",
	"thunderbird",
	"nodejs",
	"paint.net",
	"pandoc",
	"powershell.portable",
	"powertoys",
	"putty",
	"python",
	"qbittorrent",
	"sharex",
	"signal",
	"speccy",
	"spotify",
	"steam-client",
	"synctrayzor",
	"teamviewer9",
	"translucenttb", # TODO: windows 10 only
	"unity",
	"vim",
	"vmware-workstation-player",
	"lazygit",

	



	# TODO: Install vscode extensions
	# TODO: Install vs extensions
	# TODO: Check test status for all these packages
	# TODO: Organize packages in categories
	


    # Database
    "postgresql",

    #PRODUCTIVITY TOOLS
    "slack",
    )


foreach ($app in $Apps) {
    choco install $app -y
    Update-Environment-Path
}

# Installing git
Write-Host ""
Write-Host "Installing git..." -ForegroundColor Green
Write-Host "------------------------------------" -ForegroundColor Green
choco install git --yes --params '/GitAndUnixToolsOnPath /WindowsTerminalProfile'
Update-Environment-Path

# Setting vim as default editor for git
Write-Host ""
Write-Host "Vim as git editor..." -ForegroundColor Green
Write-Host "------------------------------------" -ForegroundColor Green
git config --global core.editor "vim"

# Install typescript globally
Write-Host ""
Write-Host "Installing typescript..." -ForegroundColor Green
Write-Host "------------------------------------" -ForegroundColor Green
npm install -g typescript

# VSCode extensions
Write-Host ""
Write-Host "Installing VSCode extensions..." -ForegroundColor Green
Write-Host "------------------------------------" -ForegroundColor Green

# Get extension list from code --list-extensions

code --install-extension aaron-bond.better-comments
code --install-extension akamud.vscode-theme-onedark
code --install-extension arcticicestudio.nord-visual-studio-code
code --install-extension asvetliakov.vscode-neovim
code --install-extension atomiks.moonlight
code --install-extension azemoh.one-monokai
code --install-extension bourhaouta.tailwindshades
code --install-extension bradlc.vscode-tailwindcss
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension CodeBiscuits.html-biscuits
code --install-extension CodeBiscuits.js-ts-biscuits
code --install-extension dbaeumer.vscode-eslint
code --install-extension dracula-theme.theme-dracula
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension eamodio.gitlens
code --install-extension enkia.tokyo-night
code --install-extension eppz.eppz-code
code --install-extension Equinusocio.vsc-community-material-theme
code --install-extension Equinusocio.vsc-material-theme
code --install-extension equinusocio.vsc-material-theme-icons
code --install-extension esbenp.prettier-vscode
code --install-extension eseom.nunjucks-template
code --install-extension formulahendry.auto-rename-tag
code --install-extension GitHub.github-vscode-theme
code --install-extension Gruntfuggly.todo-tree
code --install-extension heybourn.headwind
code --install-extension hoovercj.vscode-power-mode
code --install-extension icrawl.discord-vscode
code --install-extension jdinhlife.gruvbox
code --install-extension johnpapa.vscode-cloak
code --install-extension kisstkondoros.csstriggers
code --install-extension liviuschera.noctis
code --install-extension mikestead.dotenv
code --install-extension minamarkham.yonce-theme
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-dotnettools.csharp
code --install-extension ms-edgedevtools.vscode-edge-devtools
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode.cpptools
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension msjsdiag.vscode-react-native
code --install-extension PedroFonsecaDEV.dark-plus-colorblind
code --install-extension Perkovec.emoji
code --install-extension PKief.material-icon-theme
code --install-extension pranaygp.vscode-css-peek
code --install-extension ritwickdey.LiveServer
code --install-extension sainnhe.gruvbox-material
code --install-extension sdras.night-owl
code --install-extension sinedied.vscode-windows-xp-theme
code --install-extension sndst00m.starfall-visual-studio-code
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension streetsidesoftware.code-spell-checker-spanish
code --install-extension techer.open-in-browser
code --install-extension thanhtrang.theme-flatland-monokai
code --install-extension tonybaloney.vscode-pets
code --install-extension ulwlu.elly
code --install-extension usernamehw.errorlens
code --install-extension vincaslt.highlight-matching-tag
code --install-extension vscode-icons-team.vscode-icons
code --install-extension vscodevim.vim
code --install-extension vsls-contrib.gistfs
code --install-extension wayou.vscode-todo-highlight
code --install-extension zhuangtongfa.material-theme
code --install-extension Zignd.html-css-class-completion

# Install WSL2
Write-Host ""
Write-Host "Installing WSL2..." -ForegroundColor Green
Write-Host "------------------------------------" -ForegroundColor Green
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

Enable-WindowsOptionalFeature -Online -FeatureName $("VirtualMachinePlatform", "Microsoft-Windows-Subsystem-Linux")
Update-Environment-Path

wsl --set-default-version 2

Invoke-WebRequest https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile "wsl_updateX64.msi"

Start-Process ".\wsl_updateX64.msi"

choco install wsl-ubuntu-2004 --yes

Write-Host ""
Write-Host "Done :)" -ForegroundColor Green

# https://github.com/NikiforovAll/dotfiles/blob/master/src/windows/app_install.ps1

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

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

if (Check-Command -cmdname 'choco') {
    Write-Host "Choco is already installed, skip installation." -ForegroundColor yellow
}
else {
    Write-Host ""
    Write-Host "Installing Chocolate for Windows..." -ForegroundColor Green
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
	"git",
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
	


    # Database
    "postgresql",

    #PRODUCTIVITY TOOLS
    "slack",
    )


foreach ($app in $Apps) {
    choco install $app -y
    Update-Environment-Path
}


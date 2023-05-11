# Check if the script is running with administrator privileges
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
  Write-Host "This script needs to be run with administrator privileges." -ForegroundColor Red
  Exit
}

# Install Chocolaty if it's not already installed
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
  Write-Host "Chocolaty is not installed. Installing now..." -ForegroundColor Yellow
  Set-ExecutionPolicy Bypass -Scope Process -Force
  Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Some Softwares using Chocolaty
Write-Host "Installing WinRAR using Chocolaty..." -ForegroundColor Yellow
choco install winrar -y
choco install adobereader -y
choco install googlechrome -y
choco install firefox -y
choco install 7zip.install -y
choco install vlc -y
choco install treesizefree -y
choco install chocolateygui -y
choco install anydesk.install -y
choco install au -y
#setup win env

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Host "Chocolatey installed. Installing git"

choco install git -y

Write-Host "git installed, installing node"

choco install nodejs-lts -y

Write-Host "Nodejs installed, setup complete"

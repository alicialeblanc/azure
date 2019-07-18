#setup win env

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Host "Chocolatey installed. Installing git"

choco install -y git

Write-Host "git installed, installing node"

choco install nodejs -y

Write-Host "Nodejs installed, installing .NET"

choco install dotnet3.5 -y

Write-Host ".NET installed, setup complete"

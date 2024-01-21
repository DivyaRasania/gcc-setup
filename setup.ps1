Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install vscode -y
choco install mingw -y

code

Start-Process -FilePath "https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack"
Start-Process -FilePath "https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner"

exit

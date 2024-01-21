$currentPid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = new-object System.Security.Principal.WindowsPrincipal($currentPid)
$newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
$newProcess.Arguments = $myInvocation.MyCommand.Definition;
$newProcess.Verb = "runas";
[System.Diagnostics.Process]::Start($newProcess);

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install mingw -y

$answer = Read-Host "Do you want to install Microsoft Visual Studio Code? [Y/N]"
if ($answer -eq "Y" -or $answer -eq "y") {
    Write-Host "Installing Microsoft Visual Studio Code..."
    choco install vscode -y
}

Start-Process -FilePath "https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack"
Start-Process -FilePath "https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner"

Stop-Process -Name powershell

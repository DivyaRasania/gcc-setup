# Setup Microsoft Visual Studio Code and C++ Compiler(gcc) in Windows 10/11
--- 
### How to install?
Open PowerShell window (doesn't matter admin or not) and enter `irm bit.ly/cpp-vscode-setup | iex`

#### What will happen when you run this?
1. The script will check if the current PowerShell window is admin or not. If not it will start itself with admin privialges.
2. Then it will download [chocolately](https://chocolatey.org/) (A package manager for windows).
3. Then it will download MinGW which will install your C++ compiler(gcc)
4. It will ask you if you want to install Microsoft Visual Studio Code or not. If you want then go ahead and type "y" and enter and if not then "n" and enter.
5. Lastly it will also open 2 websites. One of them will be [C++ Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack) a Visual Studio Code extension. And second will be [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner) extension.
6. You have to install both of them and then you are ready to run your C++ code in Visual Studio Code. Just make sure to run your code with Code Runner on top right by clicking on down arrow beside run icon and choosing Run Code.
---
### How to uninstall
To uninstall MinGW alone type `choco uninstall mingw` in your PowerShell window.
To uninstall Visual Studio Code alone type `choco uninstall vscode` in your PowerShell window.
To remove chocolately from your system just delete the chocolately folder by going to `C:\ProgramData\chocolatey` or by typing `rm C:\ProgramData\chocolatey` in elevated(admin) PowerShell window.

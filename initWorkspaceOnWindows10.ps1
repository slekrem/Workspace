#Powershell erlauben scripts auszuführen
Set-ExecutionPolicy Unrestricted 

#Installiere Chocolaty Paket-Manager
(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')))>$null 2>&1

#Installiere Tools 
choco install google-chrome-x64


#Powershell wieder verbieten
Set-ExecutionPolicy Restricted 

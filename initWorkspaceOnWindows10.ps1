#Installiere Chocolaty Paket-Manager
(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')))>$null 2>&1

#Installiere Tools 
choco install google-chrome-x64 -y
choco install notepadplusplus.install -y
choco install visualstudio2015enterprise -y

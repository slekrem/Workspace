#install Chocolaty Paket-Manager
(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')))>$null 2>&1

#install Tools 
choco install google-chrome-x64 -y

choco install notepadplusplus.install -y
choco install atom -y
choco install visualstudio2015enterprise -y
choco install intellijidea-community -y
choco install mysql.workbench -y
choco install aspnet5 -y
choco install sourcetree -y
choco install nodejs.install -y

choco install unity -y
choco install unitywebplayer -y 

choco install teamspeak -y
choco install skype -y

choco install virtualbox -y

choco install steam -y

choco install 7zip.install -y

#install atom plugins
apm install omnisharp-atom
apm install pigments
apm install minimap
apm install autocomplete-plus
apm install language-cshtml
apm install linter
apm install linter-docker
apm install language-docker
apm install language-yaml

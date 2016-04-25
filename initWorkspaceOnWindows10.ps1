#install Chocolaty Paket-Manager
(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')))>$null 2>&1

#install Tools 
choco install google-chrome-x64 -y -v

choco install notepadplusplus.install -y -v
choco install atom -y -v
choco install visualstudio2015enterprise -y -v
choco install intellijidea-community -y -v
choco install jdk8 -y -v
choco install android-sdk -y -v
choco install mysql.workbench -y -v
choco install aspnet5 -y -v
choco install sourcetree -y -v 
choco install nodejs.install -y -v 
choco install texstudio -y -v

choco install unity -y -v 
choco install unitywebplayer -y -v  

choco install teamspeak -y -v 
choco install skype -y -v 

choco install virtualbox -y -v 

choco install steam -y -v 

choco install 7zip.install -y -v
choco install filezilla -y -v
choco install vlc -y -v
choco install adobereader -y -v

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

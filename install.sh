#!/bin/bash
clear
echo -e '\e[1;33m
 _______   ____ ___.____    .____       _________              
 \      \ |    |   \    |   |    |     /   _____/ ____   ____  
 /   |   \|    |   /    |   |    |     \_____  \_/ __ \_/ ___\ 
/    |    \    |  /|    |___|    |___  /        \  ___/\  \___ 
\____|__  /______/ |_______ \_______ \/_______  /\___  >\___  >
        \/NULLSecurity Team\/       \/        \/     \/     \/ \e[1;34m
'
sudo apt-get install exif libimage-exiftool-perl libstring-crc32-perl libgd-perl -y
echo "[✔] Checking directories...";
if [ -d "/usr/share/doc/phisherprice" ] ;
then
echo "[◉] A directory phisherprice was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "/usr/share/doc/phisherprice"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/sircryptic/phisherprice.git /usr/share/doc/phisherprice;
 echo "#!/bin/bash 
 bash /usr/share/doc/phisherprice/phisherprice.sh" '${1+"$@"}' > phisherprice;
 chmod +x phisherprice;
 sudo cp phisherprice /usr/bin/;
 rm phisherprice;


if [ -d "/usr/share/doc/phisherprice" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔]      All is done!! You can execute tool by typing phisherprice  !  [✔]"; 
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation failed![✘] ";
  exit
fi
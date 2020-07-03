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
echo "[✔] Checking directories...";
if [ -d "/usr/share/doc/phisherprice" ] ;
then
echo "[◉] A directory phisherprice was found! Do you want to replace it? [Y/n]:" ; 
read selection
if [ $selection == "y" ] ; 
then
 rm -r "/usr/share/doc/phisherprice"
else
 exit
fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/NULL-Security-Team/phisherprice /usr/share/doc/phisherprice;
sudo cp /usr/share/doc/phisherprice/sshscan.py /usr/bin/;
echo "#!/bin/bash 
bash /usr/share/doc/phisherprice/phisherprice.sh" '${1+"$@"}' > phisherprice;
echo "#!/bin/bash 
python /usr/share/doc/phisherprice/sshscan.py" '${1+"$@"}' > sshscan;
chmod +x phisherprice.sh;
sudo cp phisherprice.sh /usr/bin/;
sudo cp sshscan.py /usr/bin/;
rm phisherprice;
if [ -d "/usr/share/doc/phisherprice" ] ;
then
echo -e '\e[1;33m
__________.__    .__       .__                __________        .__              
\______   \  |__ |__| _____|  |__   __________\______   \_______|__| ____  ____  
 |     ___/  |  \|  |/  ___/  |  \_/ __ \_  __ \     ___/\_  __ \  |/ ___\/ __ \ 
 |    |   |   Y  \  |\___ \|   Y  \  ___/|  | \/    |     |  | \/  \  \__\  ___/ 
 |____|   |___|  /__/____  >___|  /\___  >__|  |____|     |__|  |__|\___  >___  >
               \/        \/     \/     \/ PhisherPrice || Version 2.1   \/    \/\e[1;34m
                                
                                Created by "Sir Cryptic ~ NULLSec"
                    NULL Security Forums | https://nullsec.online\e[1;31m
  Usage of PhisherPrice for attacking targets without prior mutual consent is ILLEGAL. 
  The Developer is NOT responsible for any damage caused by this script.
  PhisherPrice is intented FOR EDUCATIONAL PURPOSES ONLY!
[✔]====================================================================[✔]
[✔]               phisherprice installed successfully!                 [✔]
[✔]====================================================================[✔]
[✔] ✔✔✔  You can execute the script by typing sudo phisherprice.sh !  [✔]
[✔]====================================================================[✔]
\e[1;36m
'
else
  echo "[✘] Installation failed![✘] ";
  exit
fi

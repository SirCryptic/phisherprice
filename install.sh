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
sudo echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
wget -q -O - archive.kali.org/archive-key.asc | sudo apt-key add -
sudo apt update
clear
echo "added kali repo, were good to go ladies & gents"
git clone https://github.com/NULL-Security-Team/phisherprice /usr/share/doc/phisherprice;
sudo cp /usr/share/doc/phisherprice/sshscan.py /usr/bin/;
echo "#!/bin/bash 
bash /usr/share/doc/phisherprice/phisherprice.sh" '${1+"$@"}' > phisherprice;
chmod +x phisherprice.sh;
sudo cp phisherprice.sh /usr/bin/;
sudo cp sshscan.py /usr/bin/;
rm phisherprice;
sudo apt install -y libjson-perl
sudo apt install -y curl
sudo apt install -y python
sudo apt install -y postgresql
sudo apt install -y hash-identifier
sudo apt install -y nmap
sudo apt install -y yersinia
sudo apt install -y hashcat
sudo apt install -y hydra
sudo apt install -y sqlmap
sudo apt install -y wifite
sudo apt install -y kismet
sudo apt install -y aircrack-ng
sudo apt install -y sqldict
sudo apt install -y john
sudo apt install -y fern-wifi-cracker
sudo apt install -y enum4linux
sudo apt install -y tlssled
sudo apt install -y whois
sudo apt install -y wifi-honey
sudo apt install -y cisco-global-exploiter
curl -k -L "https://raw.githubusercontent.com/g0tmi1k/mpc/master/msfpc.sh" > /usr/local/bin/msfpc
chmod 0755 /usr/local/bin/msfpc
git clone https://github.com/ZerBea/hcxtools.git
cd hcxtools
make
sudo make install
echo "Alomost Done."
cd
sudo apt-get install python-dev -y
sudo apt-get install libssl-dev libz-dev libpcap-dev -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py -y
sudo python get-pip.py
rm get-pip.py
pip install psycopg2 -y
sudo apt install arp-scan
git clone https://github.com/trustedsec/social-engineer-toolkit/ set/
cd set
pip install -r requirements.txt
cd
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
cd
git clone https://github.com/Moham3dRiahi/Th3inspector.git
cd Th3inspector
chmod +x install.sh && ./install.sh

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

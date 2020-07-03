#!/bin/bash
# NULLSec beta requirements Script v1.0 [BETA]
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root - sudo su" 
   exit 1
fi
clear
echo -e '\e[1;33m
 _______   ____ ___.____    .____       _________              
 \      \ |    |   \    |   |    |     /   _____/ ____   ____  
 /   |   \|    |   /    |   |    |     \_____  \_/ __ \_/ ___\ 
/    |    \    |  /|    |___|    |___  /        \  ___/\  \___ 
\____|__  /______/ |_______ \_______ \/_______  /\___  >\___  >
        \/NULLSecurity Team\/       \/        \/     \/     \/ \e[1;34m
'
echo "NULLSec Setup Script v1.0.4"
echo "Created By ~SirCryptic"
echo "would you like to install? [y/n]"

	read input

	if [ $input == "n" ]; then
	echo "Nothing was installed!"
	echo "Bye!"
	elif [ $input == "y" ]; then
	echo "installing please wait...."
  
  

sudo echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
wget -q -O - archive.kali.org/archive-key.asc | sudo apt-key add -
sudo apt update
clear
echo -e '\e[1;33m
 _______   ____ ___.____    .____       _________              
 \      \ |    |   \    |   |    |     /   _____/ ____   ____  
 /   |   \|    |   /    |   |    |     \_____  \_/ __ \_/ ___\ 
/    |    \    |  /|    |___|    |___  /        \  ___/\  \___ 
\____|__  /______/ |_______ \_______ \/_______  /\___  >\___  >
        \/ Null Security   \/       \/        \/     \/     \/ 
'
echo -e '\e[1;36m added kali repo, were good to go ladies & gents
'
clear
echo "installing exif"
sudo apt-get install exif libimage-exiftool-perl libstring-crc32-perl libgd-perl -y
clear
echo "installing python 3"
sudo apt install python3
echo "installing python3 pip"
sudo apt install -y python3-pip
clear
echo "installing h8mail"
sudo pip3 install h8mail
clear
echo "installing libjson-perl"
sudo apt install -y libjson-perl
clear
echo "installing curl lmao can you believe this shit"
sudo apt install -y curl
clear
echo "installing python"
sudo apt install -y python
clear
echo "installing postgresql....  much needs"
sudo apt install -y postgresql
clear
echo "install hash-identifier"
sudo apt install -y hash-identifier
clear
echo "installing nmap"
sudo apt install -y nmap
clear
echo "installing yersinia"
sudo apt install -y yersinia
clear
echo "installing hashcat"
sudo apt install -y hashcat
clear
echo "installing hyrda"
sudo apt install -y hydra
clear
echo "installing sqlmap"
sudo apt install -y sqlmap
clear
echo "installing wifite"
sudo apt install -y wifite
clear
echo "installing kismet"
sudo apt install -y kismet
clear
echo "installing aircrack-ng"
sudo apt install -y aircrack-ng
clear
echo "installing sqldict"
sudo apt install -y sqldict
clear
echo "installing john-the-ripper"
sudo apt install -y john
clear
echo "installing fern-wifi-cracker"
sudo apt install -y fern-wifi-cracker
clear
echo "installing enum4linux"
sudo apt install -y enum4linux
clear
echo "installing tlssled"
sudo apt install -y tlssled
clear
echo "installing whois"
sudo apt install -y whois
clear
echo "installing wifi-honey"
sudo apt install -y wifi-honey
clear
echo "installing cisco global exploiter"
sudo apt install -y cisco-global-exploiter
clear
echo "installing msf payload creator"
curl -k -L "https://raw.githubusercontent.com/g0tmi1k/mpc/master/msfpc.sh" > /usr/local/bin/msfpc
chmod 0755 /usr/local/bin/msfpc
clear
echo "installing hcxtools much needs for wifite..."
git clone https://github.com/ZerBea/hcxtools.git
cd hcxtools
make
sudo make install
clear
figlet Alomost Done
echo "Yes install is long i know sorry."
cd
clear
echo "installing python dev tools"
sudo apt-get install python-dev -y
clear
echo "installing libssl-dev libz-dev libpcap-dev"
sudo apt-get install libssl-dev libz-dev libpcap-dev -y
clear
echo "installing python pip"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py -y
sudo python get-pip.py
rm get-pip.py
clear
echo "installing psycopg2 much needs for wifite....."
pip install psycopg2 -y
clear
echo "installing arp scan"
sudo apt install arp-scan
clear
echo "installing social engineer toolkit"
git clone https://github.com/trustedsec/social-engineer-toolkit/ set/
cd set
pip install -r requirements.txt
cd
clear
echo "installing metasploit"
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
cd
clear
echo "installing Th3inspector"
git clone https://github.com/Moham3dRiahi/Th3inspector.git
cd Th3inspector
chmod +x install.sh && ./install.sh


clear
echo -e '\e[1;33m
 _______   ____ ___.____    .____       _________              
 \      \ |    |   \    |   |    |     /   _____/ ____   ____  
 /   |   \|    |   /    |   |    |     \_____  \_/ __ \_/ ___\ 
/    |    \    |  /|    |___|    |___  /        \  ___/\  \___ 
\____|__  /______/ |_______ \_______ \/_______  /\___  >\___  >
        \/ Null Security   \/       \/        \/     \/     \/ 
'
echo "fully installed everything!,Greetz From ~Sir Cryptic"
echo "sudo phisherprice.sh"
echo "This Requirements Tool Installer Is BETA"

		exit 1
	fi
	if [[ -z "$dldir" ]]; then
		dldir=OpenCV
	fi
	if ! sudo true; then
		exit 1
	fi
	set -e

#!/bin/bash
# NULLSec beta requirements Script v1.0.5 [BETA]
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
echo "NULLSec Setup Script v1.0.5"
echo "Created By ~SirCryptic"
echo "would you like to install? [y/n]"

read input

if [ $input == "n" ]; then
    echo "Nothing was installed!"
    echo "Bye!"
    exit 1
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
        \/NULLSecurity Team\/       \/        \/     \/     \/ \e[1;34m
'
    echo -e '\e[1;36m added kali repo, were good to go ladies & gents
'
    clear
    echo "installing exif"
    if command -v exiftool >/dev/null 2>&1 ; then
        echo "exif is already installed, skipping installation step"
    else
        sudo apt-get install exif libimage-exiftool-perl libstring-crc32-perl libgd-perl -y
    fi
    clear
    echo "installing python 3"
    if command -v python3 >/dev/null 2>&1 ; then
        echo "python3 is already installed, skipping installation step"
    else
        sudo apt install python3
    fi
    echo "installing python3 pip"
    if command -v pip3 >/dev/null 2>&1 ; then
        echo "python3 pip is already installed, skipping installation step"
    else
        sudo apt install -y python3-pip
    fi
    clear
    echo "installing h8mail"
    if command -v h8mail >/dev/null 2>&1 ; then
        echo "h8mail is already installed, skipping installation step"
    else
        sudo pip3 install h8mail
    fi
    clear
    echo "installing libjson-perl"
    if command -v libjson-perl >/dev/null 2>&1 ; then
        echo "libjson-perl is already installed, skipping installation step"
    else
        sudo apt install -y libjson-perl
    fi
    clear
    echo "installing curl"
    if command -v curl >/dev/null 2>&1 ; then
        echo "curl is already installed, skipping installation step"
    else
        sudo apt install -y curl
    fi
    clear
    echo "installing python"
    if command -v python >/dev/null 2>&1 ; then
        echo "python is already installed, skipping installation step"
    else
        sudo apt install -y python
    fi
    clear
    echo "installing postgresql"
    if command -v postgresql >/dev/null 2>&1 ; then
        echo "postgresql is already installed, skipping installation step"
    else
        sudo apt install -y postgresql
    fi
       clear
    echo "install hash-identifier"
    if command -v hash-identifier >/dev/null 2>&1 ; then
        echo "hash-identifier is already installed, skipping installation step"
    else
        sudo apt install -y hash-identifier
    fi
    clear
    echo "installing nmap"
    if command -v nmap >/dev/null 2>&1 ; then
        echo "nmap is already installed, skipping installation step"
    else
        sudo apt install -y nmap
    fi
    clear
    echo "installing yersinia"
    if command -v yersinia >/dev/null 2>&1 ; then
        echo "yersinia is already installed, skipping installation step"
    else
        sudo apt install -y yersinia
    fi
    clear
    echo "installing hashcat"
    if command -v hashcat >/dev/null 2>&1 ; then
        echo "hashcat is already installed, skipping installation step"
    else
        sudo apt install -y hashcat
    fi
    clear
    echo "installing hyrda"
    if command -v hydra >/dev/null 2>&1 ; then
        echo "hyrda is already installed, skipping installation step"
    else
        sudo apt install -y hydra
    fi
    clear
    echo "installing sqlmap"
    if command -v sqlmap >/dev/null 2>&1 ; then
        echo "sqlmap is already installed, skipping installation step"
    else
        sudo apt install -y sqlmap
    fi
    clear
    echo "installing wifite"
    if command -v wifite >/dev/null 2>&1 ; then
        echo "wifite is already installed, skipping installation step"
    else
        sudo apt install -y wifite
    fi
    clear
    echo "installing kismet"
    if command -v kismet >/dev/null 2>&1 ; then
        echo "kismet is already installed, skipping installation step"
    else
        sudo apt install -y kismet
    fi
    clear
    echo "installing aircrack-ng"
    if command -v aircrack-ng >/dev/null 2>&1 ; then
        echo "aircrack-ng is already installed, skipping installation step"
    else
        sudo apt install -y aircrack-ng
    fi
    clear
    echo "installing sqldict"
    if command -v sqldict >/dev/null 2>&1 ; then
        echo "sqldict is already installed, skipping installation step"
    else
        sudo apt install -y sqldict
    fi
    clear
    echo "installing john-the-ripper"
    if command -v john >/dev/null 2>&1 ; then
        echo "john-the-ripper is already installed, skipping installation step"
    else
        sudo apt install -y john
    fi
    clear
    echo "installing fern-wifi-cracker"
    if command -v fern-wifi-cracker >/dev/null 2>&1 ; then
        echo "fern-wifi-cracker is already installed, skipping installation step"
    else
        sudo apt install -y fern-wifi-cracker
    fi
    clear
    echo "installing enum4linux"
    if command -v enum4linux >/dev/null 2>&1 ; then
        echo "enum4linux is already installed, skipping installation step"
    else
        sudo apt install -y enum4linux
    fi
    clear
    echo "installing tlssled"
    if command -v tlssled >/dev/null 2>&1 ; then
        echo "tlssled is already installed, skipping installation step"
    else
        sudo apt install -y tlssled
    fi
    clear
    echo "installing whois"
    if command -v whois >/dev/null 2>&1 ; then
        echo "whois is already installed, skipping installation step"
    else
        sudo apt install -y whois
    fi
    clear
    echo "installing wifi-honey"
    if command -v wifi-honey >/dev/null 2>&1 ; then
        echo "wifi-honey is already installed, skipping installation step"
    else
        sudo apt install -y wifi-honey
    fi
    clear
    echo "installing cisco global exploiter"
    if command -v cisco-global-exploiter >/dev/null 2>&1 ; then
        echo "cisco global exploiter is already installed, skipping installation step"
    else
        sudo apt install -y cisco-global-exploiter
    fi
    clear
    echo "installing msf payload creator"
    if command -v msfpc >/dev/null 2>&1 ; then
        echo "msf payload creator is already installed, skipping installation step"
    else
        curl -k -L "https://raw.githubusercontent.com/g0tmi1k/mpc/master/msfpc.sh" > /usr/local/bin/msfpc
        chmod 0755 /usr/local/bin/msfpc
    fi
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

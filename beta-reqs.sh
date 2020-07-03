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
  
  

echo "add something here........................................................................."


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
echo "fatrat to execute fatrat & sudo phisherprice.sh"
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

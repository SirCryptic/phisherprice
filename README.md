<p align="center">
    <img width="300" src="https://user-images.githubusercontent.com/48811414/222840263-798ae8dc-a8c2-4f9c-a7e1-b08f49d37e45.png" alt="Null Security Team">
</p>
<h3 align="center"> Multi-Functional Pentest Tool, Command Them All From One Script.</h3>

<div align="center">
  <img src="https://user-images.githubusercontent.com/48811414/86191653-8233fb80-bb3f-11ea-8b2c-5e8737da4464.png">
  <img src="https://user-images.githubusercontent.com/48811414/86414182-29896d80-bcbb-11ea-9b0b-de6b57eb583d.png">
  <img src="https://user-images.githubusercontent.com/48811414/86414184-2a220400-bcbb-11ea-89a8-89890f2e3775.png">
</div>

<div align="center">
    <a href="https://github.com/sircryptic/phisherprice/stargazers"><img src="https://img.shields.io/github/stars/sircryptic/phisherprice.svg" alt="GitHub stars"></a>
    <a href="https://github.com/sircryptic/phisherprice/network"><img src="https://img.shields.io/github/forks/sircryptic/phisherprice.svg" alt="GitHub forks"></a>
    <a href="https://github.com/sircryptic/phisherprice/watchers"><img src="https://img.shields.io/github/watchers/sircryptic/phisherprice.svg?style=social" alt="GitHub watchers"></a>
    <br>
    <a href="https://github.com/sircryptic/phisherprice/blob/re-write/LICENSE.md"><img src="https://img.shields.io/badge/license-CUSTOM-green.svg" alt="License"></a>
</div>

<h1 align="center"> How To Install</h1>

```
git clone https://github.com/SirCryptic/phisherprice
```
```
cd phisherprice
```
```
chmod +x phisherprice.sh
```

```
sudo ./phisherprice.sh
```
### or
```
sudo bash phisherprice.sh
```
### Then run the update option and you can type ```sudo pp``` in any terminal


<h1 align="center"> Installing Dependencies (Optional) </h1>

```
sudo bash reqs.sh
```

<h1 align="center"> How do i run the script? </h1>

```
sudo pp   //  from any terminal once you run the update option from inside the script
```



<h1 align="center"> Changing the API Keys </h1>

```
cd /usr/local/bin/phisherprice
```

- use `nano` or `gedit` eg: `sudo nano phisherprice.sh`
```
replace "REPLACE_ME_WITH_YOUR_API_KEY" with your api keys the list of api's is below you will also find info about this on the wiki page eventually

https://rapidapi.com/blackbunny/api/bank-card-bin-num-check
https://apilayer.com/marketplace/email_verification-api
https://apilayer.com/marketplace/number_verification-api
https://www.shodan.io
```

<h1 align="center"> Change Log </h1>

<center>

<details>
  <summary>Click to expand!</summary>

- 09/03/2023
- complete overhaul of the menu

- 04/03/2023
- Command history and arrow key support (its the little things in life that matter most ☕👨‍💻

- 03/03/2023
- Added Bluetooth Toolkit
- Added Archive Cracker
- Made Dos Toolkit Menu accessible from menu
- Changed how the script updates
- Added another email cracker that doesnt use hyrda but i dont intend people to use this and is just a mere idea for future refrence so i have left it out of the menu display options
- Minor Improvments / Fix's
  
- 1/03/2023
- <del> Added DoS Toolkit Menu as a easter egg sub menu (this is so skids dont abuse it thinking they're 1337 although most methods are well protected against now days) </del>

- 28/02/2023
- Complete Re-Write Of almost every function Enjoy 👨‍💻😮‍💨☕
  
- 20/02/2023
- Added a shodan search for vulnrable IOT devices connected to the internet

- 18/02/2023
- updated how API keys are stored

- 16/02/2023
- Implemented a ssh scanner to scan for weak ciphers/macs/kex

- 11/02/2023
- updated how API keys are stored
- added email validator
- added BIN Checker

- 10/02/2023
- Fixed the following:
- phone number lookup (Feel free To add your own api key instead)
- Wi-Fi Honeypot Cracker + Update ✌️
- Also removed duplicate code 🤦

- NOTE: next update will more than likely include a gui overhaul while some features will be either removed or replaced
 
- 21/04/2022

- removed stealth ping ( required a key )
- removed needing a word before option
- removed website

- 06/06/20~23:00

- Added metasploit Nmap vuln script // all tests
- Added Linux Data Dump
- Added Sub Menu For Scanners In Auto Exploits Menu
- Added wifi honeypot cracker
- Added WP Auto Brute


30/06/20~@23:40

- Changed Phone API 
- Added Some Dependencies into installer // Majority Of Them Just A Few Left
-  Also Added Banner For Option Picker Enjoy 😎

- SUB MENU DEDICATED TO HYDRA || SUN/24/MAY/2020
-  Complete Overhaul / re-write
-  added tons more features too many to list

[WIKI](https://github.com/NULL-Security-Team/phisherprice/wiki)

- 2021/4/12
- Updated The Credits
  
</details>

</center>

<h1 align="center"> Old Preview</h1>

<center>

<details>
  <summary>Click to expand!</summary>
  
![phisherprice](https://user-images.githubusercontent.com/48811414/86302115-ad7e1f80-bbff-11ea-8da0-d3f7a6746eb2.gif)
  
</details>

</center>

<h1 align="center">  Credits </h1>

<p align="center">  ⭐ SirCrypic, phisherprice - Version: ALPHA</p>

  <h1 align="center"> Foot Notes</h1>
  
This tool also works on termux as expected since it is based on bash (i do aim for cross platform 🙋‍♂️✅) , but i assume and expect limited functionality , your more than welcome to pull a issue request regarding os & or function and i will try my best to get back to you & or update the tool if there is enough interest.

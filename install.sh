#!/bin/bash
date
echo " "
echo "This will only work on Linux Distros and not in Termux or UserLand !"
echo "Checking for sudo..."
#Checking if you are root as the script will install pip and it needs root access to do so
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root !" 
   exit 1
fi
sleep 2s
echo " "
echo "OK ! We are root !" #check for root is completed !
echo " "
echo " "
figlet OSINT Installer ! # some cool text
echo " "
echo " "
echo "This tool was created by snjm.exe !" #follow me on instagram lol
echo " "
echo "Pip will be installed first to carry on the rest of the process smoothly and not cause errors" #installing pip 
echo "Time Initiated :" $(date)
apt-get install python3-pip -y
echo " "
echo "PIP was installed successfully !"
echo "Time Of Completion:" $(date)
sleep 3s
echo "All the tools will be installed in the root directory !" #do sudo su to get to root and pass > ls < command
echo "Some basic tools for osint will be installed now" #a heads up for the install
echo " "
echo " "
echo "Time for tool install initiation -" $(date)
echo "Tool 1 - PhoneInfoGa - Phone Number OSINT tool" 
sleep 3s
cd
git clone https://github.com/la-deep-web/Phoneinfoga
cd Phoneinfoga/
chmod +x *
cd
echo "PhoneInfoGa has been installed !"
echo "Testing PhoneInfoGa now !"
sleep 2s
cd Phoneinfoga/ && python3 phoneinfoga.py -n +18123014992
echo " "
echo " "
echo " "
echo "PhoneInfoGa is working !"
echo "Syntax - python3 phoneinfoga.py -n +91XXXXXXXXXX [make sure you add country code]"
echo " "
echo " "
echo " "
sleep 3s
echo "Tool 2 - Osi.Ig - Instagram OSINT"
cd
git clone https://github.com/th3unkn0n/osi.ig
cd osi.ig/
chmod +x *
pip3 install -r requirements.txt
cd
echo "Checking Osi.Ig..."
sleep 3s
cd osi.ig/ && python3 main.py -u snjm.exe
echo " "
echo " "
echo "Osi.Ig is working !"
echo "Syntax - python3 main.py -u username [Add any instagram username here]"
sleep 2s
echo "Osi.Ig was succesfully installed"
echo " "
echo " "
clear
echo "Tool 3 - InfoSploit - Website And IP OSINT"
echo " "
echo " "
cd
git clone https://github.com/CybernetiX-S3C/InfoSploit
cd InfoSploit
chmod +x *
./install
cd
echo " "
echo " "
echo "InfoSploit was succefully installed !"
echo "Syntax - python2 infosploit.py and the rest will be option based !"
echo " "
echo " "
echo "Time taken to install all tools and dependencies -" $(date)
echo "OK !"
echo "All tools have been installed ! Happy Hacking !"
figlet DONE !
echo " "
echo " "
echo "To access these tools, just do > sudo su < to get a root terminal, you can then > cd < and type > ls < to see all your tools there"
echo "Exiting In 10 seconds..."
echo " "
echo "Support the creator here -"
echo "Instagram - @snjm,exe"
echo "Instagram 2 - @hack_snack"
echo " "
echo "Thank You For Using My Script !"
sleep 10s
exit 1
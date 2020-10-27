#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config-lamp/main/run/personal.sh | bash

# Color Reset
Color_Off='\033[0m'       # Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

# Update
echo -e "\n ${Cyan} Updating package repositories.. ${Color_Off}"
sudo apt -qq update 

# Yes Default
# --yes | -y
# --force-yes
# --assume-yes - yes to all
# $ sudo apt -y install [package]

# Remove App
# sudo apt-get remove [package] 
# Run these commands to delete all words and settings:
# sudo rm ~/"[package-word]" -Rf
# sudo rm ~/.config/[package-word]/ -Rf
# sudo apt-get remove --purge [package] 

# Purge App
# Remove a software completely from your system with its configuration or data files so that no longer personalized settings will be available during reinstallation
# sudo apt purge <package>
# sudo apt remove --purge <package> 

# Autoremove
# Remove any unnecessary packages. Unnecessary means, whenever you install an application, the system will also install the software that this application depends on.
# sudo apt autoremove

# Case
# read -p "Continue (y/n)?" choice
# case "$choice" in 
#   y|Y ) echo "yes";;
#   n|N ) echo "no";;
#   * ) echo "invalid";;
# esac

# If
# read -p "Continue (y/n)?" CONT
# if [ "$CONT" = "y" ]; then
#   echo "yaaa";
# else
#   echo "booo";
# fi

# If Y/y
# read -p "Are you sure? " -n 1 -r
# echo    # (optional) move to a new line
# if [[ $REPLY =~ ^[Yy]$ ]]
# then
#    # do dangerous stuff
# fi

echo "Please talk to me ..."
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	hello)
		echo "Hello yourself!"
		;;
	bye)
		echo "See you again!"
		break
		;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac
done
echo 
echo "That's all folks!"

# -p = prompt -n = number chars, choice = variable
read -p "Continue (y/n)?" -n 1 choice 
case $choice in 
  y|Y) echo "yes";;
  n|N) echo "no";;
  x|X) ls;;
  *) echo "invalid";;
esac

exit 1;

# Install FLATPAK
echo -e "\n ${Cyan} Flatpak.. ${Color_Off}"
sudo apt -y install flatpak

# Install SNAP
echo -e "\n ${Cyan} Snap Snapd.. ${Color_Off}"
sudo apt -y install snapd
sudo apt -y install snap

# Faster Open Apps - Preload on RAM
echo -e "\n ${Cyan} Preload.. ${Color_Off}"
sudo apt -y install preload

# Git
echo -e "\n ${Cyan} Git.. ${Color_Off}"
sudo apt -y install git

# cUrl
echo -e "\n ${Cyan} cUrl.. ${Color_Off}"
sudo apt -y install curl

# GNOME packages
echo -e "\n ${Cyan} Gnome Packagekit (to open: \$ gpk-application).. ${Color_Off}"
sudo apt install gnome-packagekit -y
# To open: gpk-application

# Keepass
echo -e "\n ${Cyan} Install Keepass.. ${Color_Off}"
sudo apt -y install keepassxc

# Vim Text Editor
echo -e "\n ${Cyan} Vim Text Editor.. ${Color_Off}"
sudo apt -y install vim

# Nano Text Editor
echo -e "\n ${Cyan} Nano Text Editor.. ${Color_Off}"
sudo apt -y install nano

# VLC
echo -e "\n ${Cyan} VLC.. ${Color_Off}"
sudo apt -y install vlc

# OBS Studio
echo -e "\n ${Cyan} OBS Studio.. ${Color_Off}"
sudo apt -y install obs-studio

# Gnome Boxes Virtual Machine
echo -e "\n ${Cyan} GNOME Boxes Virtual Machine.. ${Color_Off}"
sudo apt -y install gnome-boxes
# sudo flatpak install flathub org.gnome.Boxes
# ***Note: At the time of installation, if any error occurs like the message : “Unable to lock the administration directory (/var/lib/dpkg/) is another process using it?”, then run the following commands to solve this problem.
# $ sudo rm /var/lib/apt/lists/lock
# $ sudo rm /var/cache/apt/archives/lock
# $ sudo rm /var/lib/dpkg/lock

# Virtual Box Machine
# sudo apt-get install virtualbox

# MS Code
echo -e "\n ${Cyan} Install Code Try (1).. ${Color_Off}"
sudo apt install software-properties-common apt-transport-https wget -y 
sudo snap install --classic code --yes  # or code-insiders
# import the Microsoft GPG key using the following
echo -e "\n ${Cyan} Install Code Try (2).. ${Color_Off}"
echo -e "\n ${Green} Key.. ${Color_Off}"
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# enable the Visual Studio Code repository by typing: 
echo -e "\n ${Green} Download Code.. ${Color_Off}"
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt -y install code
# Or
# Download .deb
# https://code.visualstudio.com/Download
# sudo apt install ./<file>.deb

# Final
sudo apt update
sudo apt --fix-broken install --yes
# sudo apt upgrade 

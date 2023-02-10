#!/bin/bash
#This is my main script
#v0.1 - 09/02/2023 (eng)

#CSS presets of colors
RED="31"
GREEN="32"
YELLOW="33"
BLUE="34"
MAGENTA="35"
CYAN="36"
WHITE="37"
DROPCOLOR="m"


#CSS styles
FRAME="\e[1;${MAGENTA}m"
INFO="\e[1;${CYAN}m"
li='\e[1;37m'
ACTIVE="\e[1;${YELLOW}m"
DONE="\e[1;${GREEN}m"
SKIP="\e[1;${RED}m"
LOG="\e[1;${BLUE}m"

#Default values
style1=$li
style2=$li
style3=$li
style4=$li
style5=$li
style6=$li

#============ FUNCTIONS BLOCK STARTS ===============#
###MAIN UI MENU###
printMainMenu(){
clear -x
echo
echo -e "${FRAME}
######################################################
######################################################
###                                                ###
###                    ${INFO}PROGRESS:${FRAME}                   ###
###                                                ###
###         ${style1}1. Updating system${FRAME}                     ###
###         ${style2}2. Installing common tools${FRAME}             ###
###         ${style3}3. Connect NFS${FRAME}                         ###
###         ${style4}4. Installing Node.js${FRAME}                  ###
###         ${style5}5. Installing Docker${FRAME}                   ###
###         ${style6}6. Installing Docker Compose${FRAME}           ###
###                                                ###
###                                                ###
######################################################
######################################################
"
echo
echo -e "${li}"
sleep 1
}
##################
askQuestion(){
   echo -e "${INFO}"
while true; do
    read -p "$1" yn
    case $yn in
        [Yy]* ) return 0;;
        [Nn]* ) return 1;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo -e "${li}"
}

updateSystem(){
   echo -e "${LOG}" 
   sudo apt update && sudo apt upgrade -y
   echo -e "${li}"
}

mainAppsInstall(){
   echo -e "${LOG}" 
   sudo apt install openssh-server git nano wget tar htop nfs-common p7zip-full gpg -y
   echo -e "${li}"
}

desktopAppsInstall(){
   echo -e "${LOG}" 
   sudo apt install qbittorrent audacious -y
   echo -e "${li}"
}

bigSoftInstall(){
   echo -e "${LOG}" 
   wget https://az764295.vo.msecnd.net/stable/441438abd1ac652551dbe4d408dfcec8a499b8bf/code_1.75.1-1675893397_amd64.deb
   sudo dpkg -i code_1.75.1-1675893397_amd64.deb
   sudo rm code_1.75.1-1675893397_amd64.deb

   wget https://downloads.slack-edge.com/releases/linux/4.29.149/prod/x64/slack-desktop-4.29.149-amd64.deb
   sudo dpkg -i slack-desktop-4.29.149-amd64.deb
   sudo rm slack-desktop-4.29.149-amd64.deb

   wget https://zoom.us/client/5.13.7.683/zoom_amd64.deb
   sudo dpkg -i zoom_amd64.deb
   sudo rm zoom_amd64.deb

   wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
   sudo dpkg -i google-chrome-stable_current_amd64.deb
   sudo rm google-chrome-stable_current_amd64.deb
   echo -e "${li}"
}

nodejsInstall(){
   echo -e "${LOG}" 
   sudo curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - && sudo apt install -y nodejs
   echo -e "${li}"
}

nfs(){
   echo -e "${LOG}"
   if [ -d "/media/ryzen4ter" ]
      then
         echo "/media/ryzen4ter exists"
      else
         echo "/media/ryzen4ter does not exist - trying to create ..."
         sudo mkdir /media/ryzen4ter
         if [ -d "/media/ryzen4ter" ]
            then
               echo "/media/ryzen4ter was created!"
            else
               echo -e "${SKIP}"
               echo "!ERROR! /media/ryzen4ter was nor created"
               echo -e "${LOG}"
         fi
   fi
   if [ -d "/media/ryzen2ter" ]
      then
         echo "/media/ryzen2ter exists"
      else
         echo "/media/ryzen2ter does not exist - trying to create ..."
         sudo mkdir /media/ryzen2ter
         if [ -d "/media/ryzen2ter" ]
            then
               echo "/media/ryzen2ter was created!"
            else
               echo -e "${SKIP}"
               echo "!ERROR! /media/ryzen2ter was nor created"
               echo -e "${LOG}"
         fi
   fi

   sudo echo "#AUTOMOUNT NFS SHARE trueNAS ryzen server" >> /etc/fstab
   sudo echo "192.168.0.201:/mnt/ryzen2ter/dataSetRyzen2ter /media/ryzen2ter nfs defaults 0 0" >> /etc/fstab
   sudo echo "192.168.0.201:/mnt/ryzen4ter/dataSetRyzen4ter /media/ryzen4ter nfs defaults 0 0" >> /etc/fstab

echo -e "${li}"
}
#============  FUNCTIONS BLOCK ENDS  ===============#


#============      SCRIPT BODY       ===============#


#RENDER 1: MENU + UPDATE
style1=$ACTIVE
printMainMenu
if askQuestion "1 Would you like to update and upgrade this system? [y/n] "; then
   if askQuestion "  1.1 Would you like to see the command output? [y/n] "; then
      echo -e "${LOG}"
      updateSystem
   else
      updateSystem > /dev/null 2>&1
   fi
      style1=$DONE
else
style1=$SKIP
fi

#RENDER 2: MENU + PACKAGES
style2=$ACTIVE
printMainMenu

if askQuestion "2 Would you like to install any soft? [y/n] ";
   then
      if askQuestion "2.1 Would you like install essential tools? (server: openssh-server, git, nano, wget, tar, htop, nfs-common, p7zip-full, gpg) [y/n] "; then
         if askQuestion "  2.1.1 Would you like to see the command output? [y/n] "; then
            mainAppsInstall
         else
            mainAppsInstall > /dev/null 2>&1
      fi
      style2=$DONE
      fi
      if askQuestion "2.2 Would you like install essential tools? (desktop/laptop: qbittorrent audacious) [y/n] "; then
            if askQuestion "  2.2.1 Would you like to see the command output? [y/n] "; then
               desktopAppsInstall
               else
               desktopAppsInstall > /dev/null 2>&1
            fi
            style2=$DONE
      fi
      if askQuestion "2.3 Would you like install Zoom, Slack, Chrome and VSCode? (desktop/laptop) [y/n] "; then
            if askQuestion "  2.3.1 Would you like to see the command output? [y/n] "; then
               bigSoftInstall
               else
               bigSoftInstall > /dev/null 2>&1
            fi
            style2=$DONE
      fi
      if askQuestion "2.4 Would you like install NodeJS? [y/n] "; then
            if askQuestion "  2.4.1 Would you like to see the command output? [y/n] "; then
               nodejsInstall
               else
               nodejsInstall > /dev/null 2>&1
            fi
            style2=$DONE
      fi
   else
      style2=$SKIP
fi



#RENDER 3: MENU + NFS
style3=$ACTIVE
printMainMenu
if askQuestion "3 Would you like to setup LAN NAS ryzen? (!PRIVATE! - you do not need it) [y/n] ";
   then
      nfs
      style3=$DONE
   else
      style3=$SKIP
fi
#============          END           ===============#





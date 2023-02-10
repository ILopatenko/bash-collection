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
   sudo apt install slack-desktop zoom code -y
   wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
   sudo dpkg -i google-chrome-stable_current_amd64.deb
   sudo rm google-chrome-stable_current_amd64.deb
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
if askQuestion "2.1 Would you like install essential tools? (server: openssh-server, git, nano, wget, tar, htop, nfs-common, p7zip-full, gpg) [y/n] "; then
      if askQuestion "  2.1.1 Would you like to see the command output? [y/n] "; then
         mainAppsInstall
         else
         mainAppsInstall > /dev/null 2>&1
      fi
      style1=$DONE
fi
if askQuestion "2.2 Would you like install essential tools? (desktop: qbittorrent audacious) [y/n] "; then
      if askQuestion "  2.2.1 Would you like to see the command output? [y/n] "; then
         desktopAppsInstall
         else
         desktopAppsInstall > /dev/null 2>&1
      fi
      style1=$DONE
fi
if askQuestion "2.3 Would you like install Zoom, Slack, Chrome and VSCode? [y/n] "; then
      if askQuestion "  2.3.1 Would you like to see the command output? [y/n] "; then
         bigSoftInstall
         else
         bigSoftInstall > /dev/null 2>&1
      fi
      style1=$DONE
fi


#RENDER 3: MENU + NFS
style2=$ACTIVE
printMainMenu
#============          END           ===============#





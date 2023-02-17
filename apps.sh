#!/bin/bash
#This is a script that helps to install some soft
#v0.1 - 02/15/2023 (eng)

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
style7=$li
style8=$li
style9=$li

#============ FUNCTIONS BLOCK STARTS ===============#
###MAIN UI MENU###
printMainMenu(){
clear -x
echo -e "${INFO}        myBashAutomationScript v0.1 (02/10/2023)"
echo -e "${FRAME}
######################################################
######################################################
###                                                ###
###                    ${INFO}PROGRESS:${FRAME}                   ###
###                                                ###
###         ${style1}1. Updating system${FRAME}                     ###
###         ${style2}2. Installing gitLab CE${FRAME}             ###
###         ${style3}3. AAA${FRAME}                         ###
###         ${style4}4. BBB${FRAME}                  ###
###         ${style5}5. CCC${FRAME}                   ###
###         ${style6}6. DDD${FRAME}           ###
###         ${style7}7. EEE             ${FRAME}           ###
###         ${style8}8. FFF${FRAME}          ###
###         ${style9}9. GGG                   ${FRAME}           ###
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

gitlab(){
   echo -e "${LOG}" 
   sudo apt-get update
   sudo apt-get install -y curl openssh-server ca-certificates tzdata perl
   curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
   sudo EXTERNAL_URL="https://gitlab.app.kitqa.com" apt-get install gitlab-ce
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

if askQuestion "2 Would you like to install gitLab CE? [y/n] ";
   then
     gitlab
   else
      style2=$SKIP
fi

######### template
exit
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

#RENDER 4: MENU + NodeJS
style4=$ACTIVE
printMainMenu
if askQuestion "4 Would you like to install NodeJS LTS? [y/n] ";
   then
      nodejsInstall
      style4=$DONE
   else
      style4=$SKIP
fi

#RENDER 5: MENU + Docker
style5=$ACTIVE
printMainMenu
if askQuestion "5 Would you like to install Docker CE? [y/n] ";
   then
      dockerInstall
      style5=$DONE
   else
      style5=$SKIP
fi

#RENDER 6: MENU + Docker Compose
style6=$ACTIVE
printMainMenu
if askQuestion "6 Would you like to install Docker Compose? [y/n] ";
   then
      dockerComposeInstall
      style6=$DONE
   else
      style6=$SKIP
fi

#RENDER 7: MENU + DOCKER DOCKER COMPOSE PORTAINER NGINX NAVIDROME
style7=$ACTIVE
printMainMenu
if askQuestion "7 Would you like to install Docker, Docker Compose, Portainer, NginX and Navidrome? [y/n] ";
   then
      dockerComposeNginX
      style7=$DONE
   else
      style7=$SKIP
fi


#RENDER 8: MENU + VPN
style8=$ACTIVE
printMainMenu
updateSystem > /dev/null 2>&1
if askQuestion "8 Would you like to add this machine to my VPN? [y/n] ";
   then
      vpn
      style8=$DONE
      clear -x
      echo 'Now you need to create a new acces key in Netmaker dashboard. And use provided command to join VPN'
      echo 'Then add this node as Egress Node in Netmaker Dashboard using 192.168.10.0/24 and esn18 or simular (from output below)'
      sudo ip -br -c a
   else
      style8=$SKIP
fi



if askQuestion "Are you ready for the next step? [y/n] ";
   then
      echo "OK let's go!"
      sleep 1
fi


#RENDER 9: MENU + REBOOT
style9=$ACTIVE
printMainMenu
updateSystem > /dev/null 2>&1
if askQuestion "9 Would you like to reboot this machine? [y/n] ";
   then
      sudo reboot
      style9=$DONE
   else
      style9=$SKIP
fi

printMainMenu

echo 'Everythig is DONE!'







#============          END           ===============#





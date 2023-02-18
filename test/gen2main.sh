#!/bin/bash
#Colors library

#COLORS
{

   Color_Off='\033[0m'       # Text Reset

   # Bold
   BBlack='\033[1;30m'       # Black
   BRed='\033[1;31m'         # Red
   BGreen='\033[1;32m'       # Green
   BYellow='\033[1;33m'      # Yellow
   BBlue='\033[1;34m'        # Blue
   BPurple='\033[1;35m'      # Purple
   BCyan='\033[1;36m'        # Cyan
   BWhite='\033[1;37m'       # White

   # Underline
   UBlack='\033[4;30m'       # Black
   URed='\033[4;31m'         # Red
   UGreen='\033[4;32m'       # Green
   UYellow='\033[4;33m'      # Yellow
   UBlue='\033[4;34m'        # Blue
   UPurple='\033[4;35m'      # Purple
   UCyan='\033[4;36m'        # Cyan
   UWhite='\033[4;37m'       # White

   # Background
   On_Black='\033[40m'       # Black
   On_Red='\033[41m'         # Red
   On_Green='\033[42m'       # Green
   On_Yellow='\033[43m'      # Yellow
   On_Blue='\033[44m'        # Blue
   On_Purple='\033[45m'      # Purple
   On_Cyan='\033[46m'        # Cyan
   On_White='\033[47m'       # White

   # Bold High Intensity
   BIBlack='\033[1;90m'      # Black
   BIRed='\033[1;91m'        # Red
   BIGreen='\033[1;92m'      # Green
   BIYellow='\033[1;93m'     # Yellow
   BIBlue='\033[1;94m'       # Blue
   BIPurple='\033[1;95m'     # Purple
   BICyan='\033[1;96m'       # Cyan
   BIWhite='\033[1;97m'      # White

   #CSS MENU ELEMENTS
   frame=${On_Black}${BIPurple}
   defbg=${On_White}
   winbg=${On_Cyan}
   bbg=${On_Black}

   #CSS MENU LINES
   active=${On_Yellow}${BIBlack}
   default=${BIWhite}
   success=${BIGreen}
   skipped=${BIRed}
   part=${BIYellow}
   termQuestion=${BIYellow}
   termLogs=${default}

   #CSS VARIABLES
   style1=${default}
   style2=${default}
   style3=${default}
   style4=${default}
   style5=${default}
   style6=${default}
   style7=${default}


}

#MAIN MENU RENDER
printMainMenu(){
   clear -x
   echo ""
   echo -e "${defbg}                                                        ${bbg}"
   echo -e "${defbg}                                                        ${bbg}"
   echo -e "${defbg}     ${frame}#############################################${defbg}      ${bbg}"
   echo -e "${defbg}     ${frame}##${winbg}                                         ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                         ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                         ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}     ${style1} 1. Update and Upgrade your OS ${winbg}     ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}     ${style2} 2. Setup Desktop/laptop ${winbg}           ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}     ${style3} 3. Setup Server ${winbg}                   ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}     ${style4} 4. My personal settings ${winbg}           ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}     ${style5} 5. Docker Stack ${winbg}                   ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}     ${style6} 6. Docker Soft ${winbg}                    ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}     ${style7} X. RESERVED ${winbg}                       ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                         ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                         ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}##${winbg}                                         ${frame}##${defbg}      "${bbg}
   echo -e "${defbg}     ${frame}#############################################${defbg}      ${bbg}"
   echo -e "${defbg}                                                        ${bbg}"
   echo -e "${defbg}                                                        ${bbg}"
   echo -e "${Color_Off}"
   sleep 1
}

#QUESTIONS
askQuestion(){
   echo -e "${termQuestion}"
   while true; do
      read -p "$1" yn
      case $yn in
         [Yy]* ) return 0;;
         [Nn]* ) return 1;;
         * ) echo "Please answer YES or NO.";;
      esac
   done
   echo -e "${Color_Off}"
}

#FUNCTIONS
updateSystem(){
   echo -e "${termLogs}"
   sudo apt update && sudo apt upgrade -y
   echo -e "${Color_Off}"
}

#DESKTOP/LAPTOP
{
   slack(){
      echo -e "${termLogs}"
      wget https://downloads.slack-edge.com/releases/linux/4.29.149/prod/x64/slack-desktop-4.29.149-amd64.deb
      sudo dpkg -i slack-desktop-4.29.149-amd64.deb
      sudo rm slack-desktop-4.29.149-amd64.deb
      echo -e "${Color_Off}"
   }

   vscode(){
      echo -e "${termLogs}"
      wget https://az764295.vo.msecnd.net/stable/441438abd1ac652551dbe4d408dfcec8a499b8bf/code_1.75.1-1675893397_amd64.deb
      sudo dpkg -i code_1.75.1-1675893397_amd64.deb
      sudo rm code_1.75.1-1675893397_amd64.deb
      echo -e "${Color_Off}"
   }

   zoom(){
      echo -e "${termLogs}"
      wget https://zoom.us/client/5.13.7.683/zoom_amd64.deb
      sudo dpkg -i zoom_amd64.deb
      sudo rm zoom_amd64.deb
      echo -e "${Color_Off}"
   }

   chrome(){
      echo -e "${termLogs}"
      wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
      sudo dpkg -i google-chrome-stable_current_amd64.deb
      sudo rm google-chrome-stable_current_amd64.deb
      echo -e "${Color_Off}"
   }

   nodejs(){
      echo -e "${termLogs}"
      sudo curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - && sudo apt-get install -y nodejs
      echo -e "${Color_Off}"
   }

   desktop(){ 
      echo -e "${termLogs}"
      sudo apt install qbittorrent audacious -y
      echo -e "${Color_Off}"
   }


}

#SCRIPT RENDER

#RENDER MENU 1 - UPDATE
style1=$active
printMainMenu

#QUESTION 1
{
   if askQuestion "1. Would you like to update and upgrade this system? [y/n] "; then
      if askQuestion "  1.1. Would you like to see the command output? [y/n] "; then
         
         updateSystem
      else
         updateSystem > /dev/null 2>&1
      fi
         style1=$success
   else
      style1=$skipped
   fi
}


#RENDER MENU 2 - DESKTOP/LAPTOP
style2=$active
printMainMenu

#QUESTION 2
{
   if askQuestion "2 Would you like to setup your Desktop/Laptop that has Ubuntu/Linux Mint? [y/n] "; then
         if askQuestion "  2.1 Would you like to install Slack, Zoom, VSCode, Chrome and NodeJS? [y/n] "; then
               if askQuestion "     2.1.1 Would you like to install Slack, Zoom, VSCode, Chrome and NodeJS together? [y/n] "; then
                     slack
                     sleep 1
                     clear -x
                     zoom
                     sleep 1
                     clear -x
                     vscode
                     sleep 1
                     clear -x
                     chrome
                     sleep 1
                     clear -x
                     nodejs
                     sleep 1
                     clear -x
                  else
                     if askQuestion "        2.1.1.1 Would you like to install Slack? [y/n] "; then
                           slack
                     fi
                     if askQuestion "        2.1.1.2 Would you like to install Zoom? [y/n] "; then
                           zoom
                     fi
                     if askQuestion "        2.1.1.3 Would you like to install VSCode? [y/n] "; then
                           vscode
                     fi
                     if askQuestion "        2.1.1.4 Would you like to install Chrome? [y/n] "; then
                           chrome
                     fi
                     if askQuestion "        2.1.1.5 Would you like to install NodeJS? [y/n] "; then
                           nodejs
                     fi
                     style2=$part
               fi
            else
               style2=$part
         fi
         if askQuestion "2.2. Would you like to install qbittorrent and audacious? [y/n] "; then
               desktop
            else
               style2=$part
         fi
      else
         style2=$skipped
   fi
}

#RENDER MENU 3 - SERVER
style3=$active
printMainMenu
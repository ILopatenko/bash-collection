#!/bin/bash
#HELPERS SCRIPT
source ./_files/menu.sh
source ./_files/oracle.sh

renderMenuWithSelection(){
   printMainMenu
   dropLineStyles
}

askYesNoQuestion(){
   echo -e "${ult}"
   while true; do
      read -p "$1" yn
      case $yn in
         [Yy]* ) return 0;;
         [Nn]* ) return 1;;
         * ) echo "Please answer Y or N.";;
      esac
   done
   echo -e "${Drop}"
}

askYesNoQuestionWithActions(){
   if askYesNoQuestion "$1 Would you like to $2? [y/n] "; then
      echo -e "${Green}OK. You want to $2${Drop}"
      sleep 1
      $3
   else
      echo -e "${Red}NO. You don't want to $2${Drop}"
      sleep 1
      $4
   fi
}






#########ACTIONS########
updateUpgrade(){
   echo -e "${White}"
   sudo apt update && sudo apt upgrade -y
}






#########QUESTIONS########

#MAIN MENU
Q01="update and upgrade your system"
Q02="setup your ORACLE server"
Q03="setup your local server"
Q04="setup your desktop/laptop"
Q05="setup VPN Netmaker"
Q06="install Docker Stack"
Q07="install Docker Apps"



#######QUESTIOPN MODULES########
QM01(){
   askYesNoQuestionWithActions "1." "$Q01" updateUpgrade
}

QM02(){
   askYesNoQuestionWithActions "2." "$Q02" oracleSubMenu
}

QM03(){
   askYesNoQuestionWithActions "3." "$Q03" serverSubMenu
}

QM04(){
   askYesNoQuestionWithActions "4." "$Q04" desktopSubMenu
}

QM05(){
   askYesNoQuestionWithActions "5." "$Q05" netmakerSubMenu
}

QM06(){
   askYesNoQuestionWithActions "6." "$Q06" dockerStackSubMenu
}

QM07(){
   askYesNoQuestionWithActions "7." "$Q07" dockerAppsSubMenu
}











#!/bin/bash
#QUESTIONS MAIN MODULE

source ./_files/iuMenus.sh
source ./_files/commands.sh
source ./_files/subOracle.sh
source ./_files/subServer.sh


askQuestion(){
   echo -e "${qstn}"
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


#UPDATE && UPGRADE
askFullUpdateQ(){
   if askQuestion "1. Do you want to update and upgrade your machine? [y/n] "; then
      echo -e "${don}OK. You want to update your system ...${Drop}"
      if askQuestion "  0.1 Do you want to see the command logs? [y/n] "; then
      echo -e "${don}  OK. You want to see the logs ...${Drop}"
         fullUpdateUpgrade
      else
         echo -e "${skp}  NO. You don't want to see the logs ...${Drop}"
         fullUpdateUpgradeSilent
      fi
      clear -x
      echo -e "${don}OK. Your system was updated ...${Drop}"
      sleep 1
      sl1=$don
   else
      sl1=$skp
      echo -e "${skp}NO. You don't want to update your OS - let's go the next step ...${Drop}"
      sleep 1
   fi
}

#ORACLE SERVER
askOracleMainQ(){
   if askQuestion "2. Do you want to setup Oracle server? [y/n] "; then
      echo -e "${don}OK. You want to setup your Oracle server ...${Drop}"
      sleep 1
      oracleBranch
      sleep 6
   else
      sl2=$skp
      echo -e "${skp}NO. You don't want to setup your Oracle server... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

#DESKTOP
askDesktopQ(){
   if askQuestion "3. Do you want to setup Linux Desktop/Laptop? [y/n] "; then
      echo -e "${don}OK. You want to setup Linux Desktop/Laptop...${Drop}"
      sleep 1
      echo "Print Desktop main menu - and keep working on Desktop branch"
      sleep 1
   else
      sl3=$skp
      echo -e "${skp}NO. You don't want to setup Linux Desktop/Laptop... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

#SERVER
askServerQ(){
   if askQuestion "4. Do you want to setup your Ubuntu server? [y/n] "; then
      echo -e "${don}OK. You want to setup your Ubuntu server ...${Drop}"
      sleep 1
      serverBranch
   else
      sl4=$skp
      echo -e "${skp}NO. You don't want to setup your Ubuntu server... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

#DOCKER STACK
askDockerSttackQ(){
   if askQuestion "5. Do you want to install Docker Stack (Docker, Docker-Compose, NginX, Portainer, Navidrome)? [y/n] "; then
      echo -e "${don}OK. You want to install Docker Stack...${Drop}"
      sleep 1
      clear -x
      dockerStack
   else
      sl5=$skp
      echo -e "${skp}NO. You don't want to install Docker Stack... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

#DOCKER APPS
askDockerAppsQ(){
   if askQuestion "5. Do you want to install Docker Stack (Docker, Docker-Compose, NginX, Portainer, Navidrome)? [y/n] "; then
      echo -e "${don}OK. You want to install Docker Stack...${Drop}"
      sleep 1
      echo "Docker Apps main menu - and keep working on Docker Apps"
      sleep 1
   else
      sl5=$skp
      echo -e "${skp}NO. You don't want to install Docker Apps... - let's go the next step ...${Drop}"
      sleep 1
   fi
}




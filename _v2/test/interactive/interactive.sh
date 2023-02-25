#!/bin/bash
#MAIN SCRIPT



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


askToEnter(){
    read -p "$1: " value
    echo $value
}

askDockerNFS(){
   if askQuestion "3. Do you want to add NFS to the Docker container? [y/n] "; then
      echo -e "${don}OK. You want to add NFS to the Docker container...${Drop}"
      sleep 1
      dockerIP=$(askToEnter "something")
      sudo ssh test@$dockerIP
      sleep 1
   else
      sl3=$skp
      echo -e "${skp}NO. You don't want to add NFS to the Docker container... - let's go the next step ...${Drop}"
      sleep 1
   fi
}


askDockerNFS
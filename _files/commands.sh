#!/bin/bash
#COMMANDS MODULE


update(){
   sudo apt update
}

upgrade(){
   sudo apt upgrade -y
}

updateSilent(){
   update > /dev/null 2>&1 
}

upgradeSilent(){
   upgrade > /dev/null 2>&1 
}

fullUpdateUpgrade(){
   update
   upgrade
}

fullUpdateUpgradeSilent(){
   fullUpdateUpgrade > /dev/null 2>&1
}

dockerStack(){
   wget https://gitlab.com/bmcgonag/docker_installs/-/raw/main/install_docker_nproxyman.sh
   chmod +X install_docker_nproxyman.sh
   sudo bash install_docker_nproxyman.sh
}

oraclessh(){
   home="/home/slon"
   echo $(ls | grep key)
   privateKeyName=$(find . *.key)
   read -p 'Enter server IP: ' serverIP


   echo "Your workDir is '$home'"
   echo "Your server IP is '$serverIP'"
   echo "Your key is '$privateKeyName'"

   #1 Folder /.ssh
   #Check if $home/.ssh exists
   echo ""
   if [ -d $home"/.ssh" ]; then
      #CASE when folder already exists 
      echo "Folder $home"/.ssh" exists"
   else
      #CASE when folder does not already exists
      echo "Folder $home"/.ssh" does not exist"
      #Create a new folder $home/.ssh
      echo "Try to create a new folder $home"/.ssh" ..."
      sudo mkdir $home/.ssh/
      #Check if a new folder was created
      if [ -d $home"/.ssh" ]; then
        echo "Folder $home"/.ssh" was created"
      else
        echo "ERROR! Can't create a folder!'"
      fi
   fi

   #2 Rename and copy private server key to a new folder
   #2.1 Check if a key exists
   echo ""
   if [ -f "../../$privateKeyName" ]; then 
      #CASE a key exists in start folder
      echo "The private key was found"
      #2.2 copy and rename a key to .ssh folder
      echo "Try to copy and rename a key file to $home"/.ssh" ..."
      sudo cp $privateKeyName $home/.ssh/id_rsa_$serverIP
      #sudo chmod 700 $home/.ssh/id_rsa_$serverIP
      #2.3 check if a key was copied
      if [ -f $home"/.ssh/id_rsa_"$serverIP ]; then
         echo "The private key was copied and renamed"
      else
         echo "ERROR! Can't copy/rename a key file"
      fi
   else
        echo "The private key was not found"
   fi


   #3 Create a config file in /.ssh and add all the information
   #3.1 Check if a config file already exists
   echo ""
   if [ -f "$home/.ssh/config" ]; then
      #CASE a config file exists
      echo "Config file exists"
   else
      #CASE a config file DOES NOT exist
      echo "Config file does not exist"
      echo "Try to create a config file ... "
      sudo touch $home/.ssh/config
      if [ -f "$home/.ssh/config" ]; then
         echo "Config file was created"
      else 
         echo "ERROR! CAN NOT CREATE CONFIG FILE"
      fi
   fi

   #3.2 Add information to a config file
   echo ""
   echo "Try to add all the information to a config file ... "
   echo "Host $serverIP" >> $home/.ssh/config
   echo "HostName $serverIP" >> $home/.ssh/config
   echo "User git" >> $home/.ssh/config
   echo "IdentityFile $home/.ssh/id_rsa_$serverIP" >> $home/.ssh/config
   echo "IdentitiesOnly yes" >> $home/.ssh/config

   #4 Create a file known_hosts
   #4.1 Check if a file known_hosts already exists
   echo ""
   if [ -f "$home/.ssh/known_hosts" ]; then
      #CASE a file known_hosts exists
      echo "known_hosts file exists"
   else
      #CASE a file known_hosts DOES NOT exist
      echo "known_hosts file does not exist"
      echo "Try to create a known_hosts file ... "
      sudo touch $home/.ssh/known_hosts
      if [ -f "$home/.ssh/known_hosts" ]; then
         echo "known_hosts file was created"
         sudo chmod 777 $home/.ssh/known_hosts
      else 
      echo "ERROR! CAN NOT CREATE known_hosts file"
      fi
   fi 

   clear -x
   echo "Use these commands: "
   echo ""
   echo "ssh-add -D && ssh ubuntu@$serverIP"
   echo ""
   echo "apt update && apt install git -y"
   echo ""
   echo "git clone https://github.com/ilopatenko/bash-collection"
   echo ""
   echo "./bash-collection/index.sh"
}

oracleFirstCommands(){
   sudo -i
   fallocate -l 2048M /root/swapfile && ls -lh /root/swapfile && chmod 600 /root/swapfile && mkswap /root/swapfile && swapon /root/swapfile && echo "/root/swapfile none swap sw 0 0" >> /etc/fstab
   sleep 1
}



#####FINAL MENU
finalMenuAnimated(){
   printFinalMenu
   sleep 1
   ftl1=$ftl11
   printFinalMenu
   sleep 1
   ftl2=$ftl12
   printFinalMenu
   sleep 1
   ftl3=$ftl13
   printFinalMenu
   sleep 1
   ftl4=$ftl14
   printFinalMenu
   sleep 1
   ftl5=$ftl15
   printFinalMenu
   sleep 1
   ftl6=$ftl16
   printFinalMenu
   sleep 1
   ftl7=$ftl17
   printFinalMenu
   sleep 1
   ftl8=$ftl18
   printFinalMenu
   sleep 1
   ftl9=$ftl19
   printFinalMenu
   sleep 1
}
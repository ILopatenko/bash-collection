#!/bin/bash
#PRIVATE BRANCH

source ./_files/uiMenus.sh
source ./_files/commands.sh

mountNfs(){
if [[ "$1" == "ryzen2ter" ]]; then
  source="192.168.0.201:/mnt/ryzen2ter/dataSetRyzen2ter"

if [[ "$1" == "ryzen4ter" ]]; then
  source="192.168.0.201:/mnt/ryzen2ter/dataSetRyzen4ter"

if [[ "$1" == "ssdIT" ]]; then
  source="192.168.0.200:/mnt/ssd2terIT/ssd2terITdataSet"

if [[ "$1" == "ssdMedia" ]]; then
  source="192.168.0.200:/mnt/ssd2terVideo/ssd2terVideoDataSet"
fi
    if [ -d "/media/$1" ]
      then
         echo -e "${prt}/media/$1 exists"
      else
         echo -e "${prt}/media/$1 does not exist - trying to create ..."
         sudo mkdir /media/$1
         if [ -d "/media/$1" ]
            then
               echo -e "${don}/media/$1 was created!"
            else
               echo -e "${skp}!ERROR! /media/ryzen4ter was not created"
         fi
   fi
   sudo echo "AUTOMOUNT NFS for $1" >> /etc/fstab
   sudo echo "$source /media/$1 nfs defaults 0 0" >> /etc/fstab
   sudo echo "" >> /etc/fstab
}

mount2ter(){
   mountNfs "ryzen2ter" 
}
mount4ter(){
   mountNfs "ryzen4ter" 
}
mountSsdIT(){
   mountNfs "ssdIT" 
}
mountSsdMedia(){
   mountNfs "ssdMedia" 
}

mountAllNfs(){
   mount2ter
   mount4ter
   mountSsdIT
   mountSsdMedia
}

privateBranch(){
   sl71=${active}
   printPrivateMenu
   askToMountNfsToThisMachine
}

#PRIVATE QUESTIONS
askToMountNfsToThisMachine(){
   if askQuestion "  7.1. Do you want to setup NFS for this computer? [y/n] "; then
      echo -e "${don}  OK. You want to setup NFS for this computer...${Drop}"
      sleep 1
      askToMountAllNFS
      sl41=$don
   else
      sl41=$skp
      echo -e "${skp}  NO. You don't want to setup NFS for this computer... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

askToMountAllNFS(){
   if askQuestion "     Do you want to add all the LAN NFSs? [y/n] "; then
      echo -e "${don}     OK. You want to add all the LAN NFSs...${Drop}"
      sleep 1
      mountAllNfs
      sl41=$don
   else
      sl41=$skp
      echo -e "${skp}     NO. You don't want to add all the LAN NFSs...${Drop}"
      sleep 1
   fi
}

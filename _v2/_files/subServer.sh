#!/bin/bash
#SERVER BRANCH

source ./_files/uiMenus.sh
source ./_files/commands.sh


serverBranch(){
   sl41=${active}
   printServerMenu
   askServerMainTools

   sl42=${active}
   printServerMenu
   askServerNodeJS

   sl43=${active}
   printServerMenu
   askServerNFS

   sl44=${active}
   printServerMenu
   askServerNetmakerClient

   sl45=${active}
   printServerMenu
   askServerDockerStack

   sl4=${prt}
}

#ORACLE QUESTIONS
askServerMainTools(){
   if askQuestion "  4.1. Do you want to install essential tools? (server: openssh-server, git, nano, wget, tar, htop, nfs-common, p7zip-full, gpg) [y/n] "; then
      echo -e "${don}  OK. You want to install essential tools...${Drop}"
      sleep 1
      mainAppsInstall
      sl41=$don
   else
      sl41=$skp
      echo -e "${skp}  NO. You don't want to setup your Oracle server ... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

askServerNodeJS(){
   if askQuestion "  4.2. Do you want to install NodeJS? [y/n] "; then
      echo -e "${don}  OK. You want to install NodeJS...${Drop}"
      sleep 1
      nodejsInstall
      sl42=$don
   else
      sl42=$skp
      echo -e "${skp}  NO. You don't want to install NodeJS - let's go the next step ...${Drop}"
      sleep 1
   fi
}

askServerNFS(){
   if askQuestion "  4.3. Do you want to connect local NFS SHARE (!PRIVATE!)? [y/n] "; then
      echo -e "${don}  OK. You want to connect local NFS SHARE...${Drop}"
      sleep 1
      nfs
      sl43=$don
   else
      sl43=$skp
      echo -e "${skp}  NO. You don't want connect local NFS SHARE... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

askOracleNetmakerClient(){
   if askQuestion "  4.4. Do you want to install Netmaker Client? [y/n] "; then
      echo -e "${don}  OK. You want to install Netmaker Client...${Drop}"
      sleep 1
      oracleNetmakerClient
      sl44=$don
   else
      sl44=$skp
      echo -e "${skp}  NO. You don't want to install Netmaker Client... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

askOracleNginxServer(){
   if askQuestion "  4.5. Do you want to install Docker Stack (to setup NginX Server)? [y/n] "; then
      echo -e "${don}  OK. You want to install Docker Stack (to setup NginX Server)...${Drop}"
      sleep 1
      echo -e "${don}  I'm going to use a greatt scriptt from https://opensourceisawesome.com/ ${Drop}"
      sllep 1
      dockerStack
      sl45=$don
   else
      sl45=$skp
      echo -e "${skp}  NO. You don't want to install Docker Stack (to setup NginX Server)... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

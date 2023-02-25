#!/bin/bash
#DOCKER APPS BRANCH

source ./_files/uiMenus.sh
source ./_files/commands.sh


dockerBranch(){
   sl21=${active}
   printOracleMenu
   askOraclePrepareSSH

   sl22=${active}
   printOracleMenu
   askOracleFirstCommands

   sl23=${active}
   printOracleMenu
   askOracleNetmakerServer

   sl24=${active}
   printOracleMenu
   askOracleNetmakerClient

   sl25=${active}
   printOracleMenu
   askOracleNginxServer

   sl2=${prt}
}

#ORACLE QUESTIONS
askOraclePrepareSSH(){
   source ./_files/commands.sh
   if askQuestion "  2.1. Do you want to prepare SSH keys for your Oracle server? [y/n] "; then
      echo -e "${don}  OK. You want to prepare SSH keys for your Oracle server ...${Drop}"
      sleep 1
      oraclessh
      sleep 5
      sl21=$don
   else
      sl21=$skp
      echo -e "${skp}  NO. You don't want to setup your Oracle server ... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

askOracleFirstCommands(){
   if askQuestion "  2.2. Do you want to setup SWAP? [y/n] "; then
      echo -e "${don}  OK. You want to setup SWAP...${Drop}"
      sleep 1
      oracleFirstCommands
      sl22=$don
   else
      sl22=$skp
      echo -e "${skp}  NO. You don't want to setup SWAP... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

askOracleNetmakerServer(){
   if askQuestion "  2.3. Do you want to install Netmaker Server? [y/n] "; then
      echo -e "${don}  OK. You want to install Netmaker Server...${Drop}"
      sleep 1
      oracleNetmakerServer
      sl23=$don
   else
      sl23=$skp
      echo -e "${skp}  NO. You don't want to install Netmaker Server... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

askOracleNetmakerClient(){
   if askQuestion "  2.4. Do you want to install Netmaker Client? [y/n] "; then
      echo -e "${don}  OK. You want to install Netmaker Client...${Drop}"
      sleep 1
      oracleNetmakerClient
      sl24=$don
   else
      sl24=$skp
      echo -e "${skp}  NO. You don't want to install Netmaker Client... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

askOracleNginxServer(){
   if askQuestion "  2.5. Do you want to install Docker Stack (to setup NginX Server)? [y/n] "; then
      echo -e "${don}  OK. You want to install Docker Stack (to setup NginX Server)...${Drop}"
      sleep 1
      echo -e "${don}  I'm going to use a greatt scriptt from https://opensourceisawesome.com/ ${Drop}"
      sllep 1
      dockerStack
      sl25=$don
   else
      sl25=$skp
      echo -e "${skp}  NO. You don't want to install Docker Stack (to setup NginX Server)... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

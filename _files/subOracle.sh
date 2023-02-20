#!/bin/bash
#ORACLE BRANCH

source ./_files/uiMenus.sh
source ./_files/commands.sh


oracleBranch(){
   sl21=${active}
   printOracleMenu
   askOraclePrepareSSH

   sl22=${active}
   printOracleMenu
   askOracleFirstCommands

   sl23=${active}
   printOracleMenu
   askOracleNettmakerServer

   sl24=${active}
   printOracleMenu
   askOraclePrepareSSH

   sl25=${active}
   printOracleMenu
   askOraclePrepareSSH
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

askOracleNettmakerServer(){
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

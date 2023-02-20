#!/bin/bash
#ORACLE QUESTIONS MAIN MODULE

source ./files/helpers/colors.sh
source ./files/helpers/functions.sh
source ./files/helpers/modules/oracle/oracle.sh
source ./files/helpers/modules/oracle/oracleFunctions.sh


oraclePreconditionsQ(){
   if askQuestion "  2.1. Do you want to prepare SSH keys for your Oracle server? [y/n] "; then
      echo -e "${don}  OK. You want to prepare SSH keys for your Oracle server ...${Drop}"
      sleep 1
      prepareSSH
      sl21=$don
   else
      sl21=$skp
      echo -e "${skp}  NO. You don't want to setup your Oracle server ... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

oracleFirstCommandsQ(){
   if askQuestion "  2.2. Do you want to create SWAP? [y/n] "; then
      echo -e "${don}  OK. You want to create SWAP ...${Drop}"
      sleep 1
      firstCommands
      sl22=$don
   else
      sl22=$skp
      echo -e "${skp}  NO. You don't want to create SWAP ... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

oracleNetmakerServer(){
   if askQuestion "  2.3. Do you want to install Netmaker Server? [y/n] "; then
      echo -e "${don}  OK. You want to install Netmaker Server ...${Drop}"
      sleep 1
      netmakerServer
      sl23=$don
   else
      sl23=$skp
      echo -e "${skp}  NO. You don't want to to install Netmaker Server ... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

oracleNetmakerClient(){
   if askQuestion "  2.4. Do you want to install Netmaker Client? [y/n] "; then
      echo -e "${don}  OK. You want to install Netmaker Client...${Drop}"
      sleep 1
      netmakerClient
      sl24=$don
   else
      sl24=$skp
      echo -e "${skp}  NO. You don't want to install Netmaker Client ... - let's go the next step ...${Drop}"
      sleep 1
   fi
}

nginx(){
   if askQuestion "  2.5. Do you want to install Docker Stack (with NginX)? [y/n] "; then
      echo -e "${don}  OK. You want to install Docker Stack (with NginX)...${Drop}"
      sleep 1
      dockerStack
      sl25=$don
   else
      sl25=$skp
      echo -e "${skp}  NO. You don't want to install Docker Stack (with NginX) ... - let's go the next step ...${Drop}"
      sleep 1
   fi
}
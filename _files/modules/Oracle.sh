#!/bin/bash
#ORACLE MENU MODULE

source ./_files/helpers/questions.sh
source ./_files/helpers/actions.sh

oracleMain(){
   for i in {1..6}; do
   renderOracleMenu $i
   done
}

#ORACLE MENU TITLES
mtT="                     "
mt20="ORACLE MENU          "
mt21="CONNECT WITH SSH     "
mt22="SETUP 2 GB SWAP      "
mt23="ESSENTIAL TOOLS      "
mt24="NETMAKER VPN SERVER  "
mt25="NETMAKER VPN CLIENT  "
mt26="INSTALL DOCKER STACK "
res="       RESERVED      "

#ORACLE MENU QUESTIONS
Q21="connect to your ORACLE server using SSH"
Q22="create 2 GB SWAP partition"
Q23="instal essential tools: openssh-server git nano wget tar htop nfs-common p7zip-full gpg"
Q24="install Netmaker VPN Server"
Q25="install Netmaker VPN Client"
Q26="install Docker Stack"

#ORACLE MENU QUESTION MODULES
QM21(){
   askYesNoQuestionWithActions "1." "$Q21" testConnection
}
QM22(){
   askYesNoQuestionWithActions "2." "$Q22" oracleSwap
}
QM23(){
   askYesNoQuestionWithActions "3." "$Q23" generalTools
}
QM24(){
   askYesNoQuestionWithActions "4." "$Q24" netmakerServer
}
QM25(){
   askYesNoQuestionWithActions "5." "$Q25" netmakerClient
}
QM26(){
   askYesNoQuestionWithActions "6." "$Q26" dockerStack
}


renderOracleMenu(){
   dropLineStyles
   declare -n activeLine=sl$1
   declare -n questionModule=QM2$1
   activeLine=${YellowB}${Black}
   printDefaultMenu7Lines "2." "$mt20" "$mt21" "$mt22" "$mt23" "$mt24" "$mt25" "$mt26" "$res"
   QM2$1
}
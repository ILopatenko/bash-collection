#!/bin/bash
#ORACLE MENU Module

source ./files/modules/oracle/oracleQuestions.sh
source ./files/modules/oracle/oracleFunctions.sh



oracleMenuMain(){
   #RENDER 1 - PRECONDITTIONS
   #User will be able to prepare SSH keys
   style11=${active}
   printOracleMenu
   oraclePreconditionsQ

}
#!/bin/bash
#MAIN SCRIPT

source ./_files/helpers/css.sh
source ./_files/helpers/menu.sh
source ./_files/modules/Main.sh

for i in {1..7}; do
   renderMainMenu $i
done


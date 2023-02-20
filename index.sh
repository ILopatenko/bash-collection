#!/bin/bash
#MAIN SCRIPT

source ./_files/uiMenus.sh
source ./_files/commands.sh
source ./_files/generalQuestions.sh


sl1=${active}
printMainMenu
askFullUpdateQ

sl2=${active}
printMainMenu
askOracleMainQ

sl3=${active}
printMainMenu
askDesktopQ

sl4=${active}
printMainMenu
askServerQ

sl5=${active}
printMainMenu
askDockerSttackQ

sl6=${active}
printMainMenu
askDockerAppsQ

fullUpdateUpgradeSilent

finalMenuAnimated
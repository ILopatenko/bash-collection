if askQuestion "QUESTION? [y/n] "; then
      echo "YES"
   else
      echo "NO"
fi


#2
if askQuestion "QUESTION? [y/n] "; then
      if askQuestion "QUESTION2? [y/n] "; then
            echo "YES2"
         else
            echo "NO2"
      fi
   else
      if askQuestion "QUESTION3? [y/n] "; then
            echo "YES3"
         else
            echo "NO3"
      fi
fi




if askQuestion "2. Would you like to setup your Desktop/Laptop that has Ubuntu/Linux Mint? [y/n] "; then
      if askQuestion "  2.1. Would you like to install Slack, Zoom, VSCode, Chrome and NodeJS? [y/n] "; then
            if askQuestion "  2.1.1. Would you like to install Slack, Zoom, VSCode, Chrome and NodeJS together? [y/n] "; then
                  echo "together"
               else
                  if askQuestion "        2.1.1.1 Would you like to install Slack? [y/n] "; then
                        echo "install Slack"
                  fi
                  if askQuestion "        2.1.1.2 Would you like to install Zoom? [y/n] "; then
                        echo "install Zoom"
                  fi
                  if askQuestion "        2.1.1.3 Would you like to install VSCode? [y/n] "; then
                        echo "install VSCode"
                  fi
                  if askQuestion "        2.1.1.4 Would you like to install Chrome? [y/n] "; then
                        echo "install Chrome"
                  fi
                  if askQuestion "        2.1.1.4 Would you like to install NodeJS? [y/n] "; then
                        echo "NodeJS"
                  fi
            fi
         else
            echo "NO2"
      fi
   else
      if askQuestion "QUESTION3? [y/n] "; then
            echo "YES3"
         else
            echo "NO3"
      fi
fi
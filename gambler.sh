!/bin/bash -x                                                                  
  betAmount=1
  stakeValue=100
  noOfdays=10
  read -p "enter number of game want to play :" noOfgame
    for ((i=0; i<noOfdays ;i++))
     do
      while [ $stakeValue -gt 0 ]
          do
           for ((j=0;j<noOfgame;j++))
             do
               ((stakeValue--))
            done
         done
     done



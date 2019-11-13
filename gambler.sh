#!/bin/bash -x                                                                  
  bet=0
  win=0
  loose=0
  bet1=0
 finalstakeValue=0
  read -p "enter number of days :" noOfdays
  read -p "enter number of game want to play :" noOfgame
    for ((i=0; i<$noOfdays ;i++))
     do    
        stakeValue=100
         for ((j=0; j<noOfgame; j++))
           do
             while [ $bet1 -ne $noOfgame ]
               do
                bet=$((RANDOM%2))
                 ((bet1++))
                 if [ $bet -eq 1 ]
                   then
                    ((win++))
                    ((stakeValue++))
                    echo "after win" $stakeValue
                    else
                    ((lose++))
                    ((stakeValue--))
                    echo "after loose" $stakeValue
                fi
      done     
    done
    bet1=0
    done
     echo "number of dollar " $loose
     echo "number of dollar win " $win
     echo "final Stake value after game :" $stakeValue 

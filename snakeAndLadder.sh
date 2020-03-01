#!/bin/bash -x
echo "Welcome in snake and ladder game"
#Start a game with single player with zero position
#Constant variable
Numberofplayer=1
Startposition=0
#Generate a random value between 1 to 6
randomRollsDie=$((RANDOM%6+1))
echo $randomRollsDie

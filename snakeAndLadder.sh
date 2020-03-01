#!/bin/bash -x
echo "Welcome in snake and ladder game"
#Start a game with single player with zero position
#Constant variable
Numberofplayer=1
Startposition=0
Ladder=0
Snake=1
NoPlay=3
#Generate a random value between 1 to 6
randomRollsDie=$((RANDOM%6+1))
echo $randomRollsDie
checkCase=$((RANDOM%3))
case $checkCase in
	$Ladder)
			position=$(( position + rollDie ))
			echo "Player moves ahead by $rollDie position."
			;;
	$Snake)
			position=$(( position - rollDie ))
			echo "Player moves behind by $rollDie position."
			;;
	$NoPlay)
			position=$positon
			echo "Player is on same $Position."
			;;
esac

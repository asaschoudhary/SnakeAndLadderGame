#!/bin/bash -x
echo "Welcome in snake and ladder game"
#Start a game with single player with zero position
#Constant variable
position=0
ladder=0
noplay=1
snake=2
#using Dictionary
declare -A winningDicePosition
while(($position!=100))
do
	dieCount=$((dieCount+1))
	#Generate a random value between 1 to 6
	randomRollsDie=$((RANDOM%6 + 1))
	checkCase=$((RANDOM%3))
	case $checkCase in
		$ladder)
				if(( (( $position + $randomRollsDie ))>100))
				then
					position=$position
					echo "Stay in same position :"$position
				else
					position=$(( position + randomRollsDie ))
					echo "new position:"$position
				fi
				;;
		$noplay)
				position=$position
				echo "Player is on same $position"
				;;
		$snake)
				if (( $position<0 ))
				then
					position=0
				else
					 position=$(( $position - $randomRollsDie ))
					echo "Player moves behind by  position:$position"

				fi
				;;
	esac
done
	#Count the dic and winning position 
	winningDicPosition[$dieCount]=$position
	echo "Dic position" $dieCount $position 

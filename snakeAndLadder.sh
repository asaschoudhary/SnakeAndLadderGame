#!/bin/bash -x
echo "Welcome in snake and ladder game"
#Start a game with single player with zero position
#Constant variable
position=0
ladder=0
noplay=1
snake=2
#Generate a random value between 1 to 6
while(($position!=100))
do
	randomRollsDie=$((RANDOM%6 + 1))
	checkCase=$((RANDOM%3))
	case $checkCase in
		$ladder)
				position=$(( $position + $randomRollsDie ))
				echo "Player moves ahead by position:$position"
				;;
		$noplay)
				position=$position
				echo "Player is on same $position"
				;;
		$snake)
				position=$(( $position-$randomRollsDie ))
				echo "Player moves behind by  position:$position"
				if (( $position<0 ))
				then
					position=0
				fi
				;;
	esac
done

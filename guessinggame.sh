#!/usr/bin/env bash
# File: guessinggame.sh

function toohighortoolow {
	if [[ $guess -gt $number_of_files ]]
	then 
		echo -n "You guessed too high."
	else 
		echo -n "You guessed too low."
	fi

}


number_of_files=$(ls | wc -l)
echo "What is the number of files in the current directory?"
echo "Take a guess!"
read guess
while [[ $guess -ne $number_of_files ]] 
do
	toohighortoolow
	echo "Try again!"
	read guess
done

echo "Correct! Congratulations! You guessed the number of files in the directory."
echo "See you next time!"

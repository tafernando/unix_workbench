#!/usr/bin/env bash
# File: guessinggame.sh
# The Unix Workbench

count=$(ls -1 | wc -l)

function correct_guess {        
    if [[ $1 -lt $2 ]]          
    then
	echo "Low guess!"
    elif [[ $1 -gt $2 ]]
    then
	echo "Guess too high!"
    else
	echo ""
	echo "YES..  GOOD GUESS!"
    fi
}

while [[ $count -ne $guess ]]    # One loop...
do
    read -p "Can you guess how many files are in the current directory? " guess
    # echo "You entered: $guess"
    echo $(correct_guess $guess $count)
    echo ""
done
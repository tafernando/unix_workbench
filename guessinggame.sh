#!/usr/bin/env bash
# File: guessinggame.sh

dirarray=($(ls -d */))
dircount=${#dirarray[@]}
dirguess=0

function checkguess {
    # Usage of an if statement
    if [[ $1 -lt $2 ]]
    then
    echo "echo Guess Too low"
    elif [[ $1 -gt $2 ]]
    then
    echo "echo Guess Too high"
    fi
}

# Usage of a loop
while [ $dirguess -ne $dircount ]
do
echo "Guess the number of directories!"
# Collecting user response
read dirguess

$(checkguess $dirguess $dircount)

done
echo "Yes that is right..!  Congrats!"

#!/bin/bash

echo "Enter word to print out "
read word

#check for figlet availablity
if ! command -v "figlet" &> /dev/null
then
    echo "figlet could not be found run with sudo"
    sudo apt install figlet
    exit 1
else
    echo "$word" | figlet 
fi

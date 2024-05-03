#!/bin/bash

echo "Enter network portion of IP:"
read netwrkAddr


read -n1 -p "do you want a port scan? [y] or [n]" ch

if [ $ch == 'y' ]
then
    read -p  "from port - upto ? :" -r pRange
fi

read -p  "Enter ip range: " ipRange

for i in $(seq "$ipRange")
do
    echo "---------------------------------$i-----------------------------------------------"
    if [ $pRange ]
    then
	sudo nmap -sV -p 0-$pRange -O $netwrkAddr.$i
    else
	sudo nmap -sV -O -v $netwrkAddr.$i
    fi
done

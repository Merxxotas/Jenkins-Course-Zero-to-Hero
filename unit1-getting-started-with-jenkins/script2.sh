#!/bin/bash

NAME=$1
LASTNAME=$2
SHOW=$3

#======================================================#
#NAME=Brayan
#LASTNAME="Marin Guirales"
#echo $NAME
#======================================================#

if [ "$SHOW" = "true" ] || [ "$SHOW" = "TRUE" ] || [ "$SHOW" = "1" ]; then

	echo "Hello, $NAME $LASTNAME. Current time and date is: $(date)"
	echo "Hello, $NAME $LASTNAME. I gonna update the system"

	apt-get update
	apt dist-upgrade -y

	echo "Hello, $NAME $LASTNAME. System updated"
else
	echo "If you want to see the name, please mark the show option"
fi

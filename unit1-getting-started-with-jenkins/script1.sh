#!/bin/bash

NAME=$1
LASTNAME=$2


#======================================================#
#NAME=Brayan
#LASTNAME="Marin Guirales"
#echo $NAME
#======================================================#

echo "Hello, $NAME $LASTNAME. Current time and date is: $(date)"
echo "Hello, $NAME $LASTNAME. I gonna update the system"

apt-get update
apt dist-upgrade -y

echo "Hello, $NAME $LASTNAME. System updated"


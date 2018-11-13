#!/bin/sh

timedatectl set-ntp true
curl -O https://static.maxrobbins.com/idealFormat.sfdisk
printf "$(lsblk -o size,name -nl)"
printf "\n\nWhat device would you like to use? \n
DRIVE ONLY AKA sda,sdb,sdc NO PART NUMBER!! \n"
read -p "Device Name:" devName
read -p "You entered ${devName} is this correct?" -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 
fi

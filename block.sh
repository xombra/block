#!/bin/bash
# Xombra
# Licence: GPL-2
# block url
# bloquear url

if [[ $USER != root ]]; then
	echo -e "\e[00;31mERROR: You must be root to run script\e[00m"
	exit 1
fi

if [[] -f /etc/hosts ]]; then
# exist
else
	echo 'Host file does not exist will be created'
	touch /etc/hosts
fi

# formato para este archivo:
# IP  domain
# Es valido el uso de comodines en dominio
# It is allowed to use wildcards (*) when specifying the domain.
# Write file /etc/hosts

echo "127.0.0.1" $1 >> /etc/hosts
echo $1 " It was written in the host file" 
exit 0

#!/usr/bin/env bash

{
	read username
	read password
	read vpn_host
} < <(socat - UNIX-CONNECT:/msgbox/sock)

(
	sleep 5
	echo "$username"
	sleep 5
	echo "$password"
	sleep 5
	echo "1"
) | openconnect --protocol=gp "$vpn_host"


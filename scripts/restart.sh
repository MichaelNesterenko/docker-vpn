#!/usr/bin/env bash

vpn_host="$1"

[[ -z "$vpn_host" ]] && echo need to specify target vpn host && exit

echo username:
read username

echo password:
read -s password

echo -e "$username\n$password\n$vpn_host" | socat - UNIX-LISTEN:./msgbox/sock &

docker-compose stop
docker-compose up --no-build -d

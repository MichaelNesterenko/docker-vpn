#!/usr/bin/env bash

if inotifywait -e modify /etc/resolv.conf; then
	kill -s SIGHUP $(ps -eo "%p %c" | grep dnsmasq | awk '{print $1}')
	sockd -f /sockd.conf
else
	echo "failed... no action done"
fi

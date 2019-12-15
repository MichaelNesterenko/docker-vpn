#!/usr/bin/bash

iptables -t nat -I POSTROUTING 1 -o tun0 -j MASQUERADE && \
mkdir -p /dev/net && mknod /dev/net/tun c 10 200 && \
dnsmasq -2 eth0 --clear-on-reload --no-poll && \
(/after_vpn_connect.sh &) && \
. /vpn.sh

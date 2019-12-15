from archlinux/base

entrypoint /ep.sh

run pacman --noconfirm -Syu && \
	pacman --noconfirm --needed -S openconnect net-tools gawk grep bind-tools iputils iptables inetutils dnsmasq procps-ng inotify-tools socat dante && \
	rm /usr/bin/busctl

copy ./fs-content/ /


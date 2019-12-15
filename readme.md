required binaries:
* docker, docker-compose
* socat

commands:
* docker-compose build - to refresh container image
* ./scripts/restart.sh 'vpn-host' - connects to the specified host and starts socks server on localhost:17545

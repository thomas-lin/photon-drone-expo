#!/bin/bash

# startup docker
sudo systemctl enable docker
sudo systemctl start docker
docker --version

# ACCEPT for container communication to host, presist it.
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT

# presist iptables
echo "iptables -P INPUT ACCEPT" > /etc/systemd/scripts/iptables
echo "iptables -P FORWARD ACCEPT" > /etc/systemd/scripts/iptables

# install docker-compose
readonly COMPOSE_VERSION=1.24.0

sudo curl -L "https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
#!/bin/bash
readonly COMPOSE_VERSION=1.24.0

# startup docker
sudo systemctl enable docker
sudo systemctl start docker
docker --version

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

# ACCEPT all INPUT for container communication
sudo iptables -P INPUT ACCEPT
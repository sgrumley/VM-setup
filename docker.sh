#!/bin/bash

# install docker
sudo snap install docker
sudo groupadd docker
sudo usermod -aG docker ${USER}
# needs a restart to work
#sudo chmod 666 /var/run/docker.sock
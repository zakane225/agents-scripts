#!/bin/bash

# Update system packages
sudo yum update -y

# Install required dependencies
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Set up Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to the 'docker' group (optional)
sudo usermod -aG docker $USER

# Verify Docker installation
sudo docker run hello-world

# Print Docker version
docker version


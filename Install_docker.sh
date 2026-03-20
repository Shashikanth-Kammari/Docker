#!/bin/bash

set -e

echo "git installation"
sudo dnf install git -y

echo "Installing required packages..."
sudo dnf install -y dnf-plugins-core

echo "Adding Docker repository..."
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

echo "Installing Docker..."
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Starting Docker service..."
sudo systemctl start docker

echo "Enabling Docker on boot..."
sudo systemctl enable docker

echo "Adding user to Docker group..."
sudo usermod -aG docker $USER

echo "Docker installation completed successfully!"

echo "Docker version:"
docker --version

echo "⚠️ Logout and login again to use Docker without sudo."
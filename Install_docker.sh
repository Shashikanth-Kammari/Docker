#!/bin/bash

echo "===== Installing required tools ====="
sudo dnf install -y yum-utils device-mapper-persistent-data lvm2

echo "===== Adding Docker CE repository ====="
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

echo "===== Installing Docker ====="
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "===== Starting containerd ====="
sudo systemctl enable --now containerd

echo "===== Fixing iptables issue (important for RHEL 9/10) ====="
sudo alternatives --set iptables /usr/sbin/iptables-legacy || true

echo "===== Starting Docker ====="
sudo systemctl enable --now docker

echo "===== Adding user to Docker group ====="
sudo usermod -aG docker $USER

echo "===== Verifying Docker ====="
docker --version

echo "===== Running test container ====="
sudo docker run hello-world

echo "===== Docker installation completed ====="
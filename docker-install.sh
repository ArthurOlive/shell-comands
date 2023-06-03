#!/bin/bash 

# DEPS DOCKER DOWNLOAD
yum install -y yum-utils device-mapper-persistent-data lvm2

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# INSTALL DOCKER
yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# UP DOCKER 
systemctl status httpd enable docker
systemctl start docker
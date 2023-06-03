#!/bin/bash 

yum install -y firewalld

systemctl enable firewalld

systemctl restart firewalld

# ENABLE HTTPS
firewall-cmd --permanent --zone=public --add-service=https

# OPEN PORTS FROM DB AND BACKEND
firewall-cmd --permanent --zone=public --add-port=80/http
firewall-cmd --permanent --zone=public --add-port=8081/http
firewall-cmd --permanent --zone=public --add-port=5433/http

# OPEN PORT FROM CHAT
firewall-cmd --zone=public --add-port=80/tcp

# RELOAD PORTS
firewall-cmd --reload
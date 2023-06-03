#!/bin/bash 

yum install -y epel-release

yum install -y nginx

# START NGINX
systemctl start nginx
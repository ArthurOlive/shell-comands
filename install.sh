#!/bin/bash 

chmod +x ./nginx-install.sh
chmod +x ./docker-install.sh
chmod +x ./firewall-config.sh
chmod +x ./certbot-install.sh

./docker-install.sh
./nginx-install.sh
./firewall-config.sh
./certbot-install.sh
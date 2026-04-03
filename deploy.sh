#!/usr/bin/env bash

SERVER_IP="3.83.3.138"
USER="ubuntu"
KEY="/home/pc/.ssh/private_key.pem"
LOCAL_DIR="/var/www/html/mysite/"
REMOTE_DIR="/var/www/html/"

echo " Deploying website..."

rsync -avz -e "ssh -i private_key.pem -o IdentitiesOnly=yes" /var/www/html/ ubuntu@3.83.3.138:/var/www/html

if [ $? -eq 0 ]; then
    echo " Deployment successful!"
else
    echo " Deployment failed!"
fi

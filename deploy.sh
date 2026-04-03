#!/usr/bin/env bash

SERVER_IP="-----------"
USER="ubuntu"
KEY="/home/key"
LOCAL_DIR="/var/www/html/mysite/"
REMOTE_DIR="/var/www/html/"

echo " Deploying website..."

rsync -avz -e "ssh -i key -o IdentitiesOnly=yes" /var/www/html/ ubuntu@server-ip:/var/www/html

if [ $? -eq 0 ]; then
    echo " Deployment successful!"
else
    echo " Deployment failed!"
fi

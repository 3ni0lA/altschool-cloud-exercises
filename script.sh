#!/bin/bash

# command to update and upgrade our servers

sudo apt update && sudo apt dist-upgrade -y


# the command to install nginx

sudo apt install nginx -y


# the command to overide the nginx html page

echo "<h1>This is my Nginx server $(hostname -f)</h1>" > /var/www/html/index.nginx-debian.html


#the command to enable nginx and restart nginx

sudo systemctl enable nginx && sudo systemctl restart nginx

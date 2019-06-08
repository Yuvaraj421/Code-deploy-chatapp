#!/bin/bash

cp /home/ubuntu/chatapp/chatapp /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/chatapp /etc/nginx/sites-enabled/
nginx -t
rm /etc/nginx/sites-enabled/default
service nginx restart


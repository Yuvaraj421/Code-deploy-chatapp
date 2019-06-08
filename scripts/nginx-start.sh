#!/bin/bash

sudo unlink /etc/nginx/sites-enabled/*
sudo cp /home/ubuntu/chatapp/chatapp /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/chatapp /etc/nginx/sites-enabled/
sudo nginx -t
sudo rm /etc/nginx/sites-enabled/default
sudo service nginx restart


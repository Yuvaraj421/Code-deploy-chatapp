#!/bin/bash

sudo cp /home/ubuntu/code-deploy-chatapp/gunicorn.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn


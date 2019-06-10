#!/bin/bash
cp -r chatapp /home/ubuntu
cd /home/ubuntu/
sudo apt-get install -y python3-pip
sudo apt-get install -y python3-venv
python3 -m venv env
source env/bin/activate
cd /home/ubuntu/chatapp/
sudo pip3 install -r requirement.txt
pip3 install channels
pip3 install psycopg2-binary
pip3 install django 
sudo apt install -y postgresql postgresql-contrib
pip3 install gunicorn
sudo apt-get install nginx -y



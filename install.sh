#!/bin/bash

# Install init.d service
sudo rm /etc/init.d/garage_pi
sudo cp garage_pi.sh /etc/init.d/garage_pi
sudo mkdir /var/opt/garage_pi
pyinstaller --onefile /home/pi/garage-pi/server.py
sudo cp /home/pi/garage-pi/dist/server /var/opt/garage_pi/server
sudo chown pi:pi /var/opt/garage_pi

# Make it executable
sudo chmod +x /etc/init.d/garage_pi

# Make it run at boot time
sudo update-rc.d garage_pi defaults
sudo systemctl daemon-reload

# Install flask
sudo pip install flask flask_restful

# Start the service after installation
sudo service garage_pi start

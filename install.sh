#!/bin/bash

# Install init.d service
sudo rm /etc/init.d/garage_pi
sudo cp garage_pi.sh /etc/init.d/garage_pi
sudo mkdir /var/run/garage_pi
sudo chown pi:pi /var/run/garage_pi
sudo mkdir /var/log/garage_pi
sudo chown pi:pi /var/log/garage_pi

# Make it executable
sudo chmod +x /etc/init.d/garage_pi

# Make it run at boot time
sudo update-rc.d garage_pi defaults

# Install flask
sudo pip install flask flask_restful

# Start the service after installation
sudo service garage_pi start
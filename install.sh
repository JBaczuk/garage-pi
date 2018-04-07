#!/bin/bash

# Install init.d service
sudo cp garage_pi.sh /etc/init.d/garage_pi

# Make it executable
sudo chmod +x /etc/init.d/garage_pi

# Make it run at boot time
sudo update-rc.d garage_pi defaults

# Install flask
sudo pip install flask

# Start the service after installation
sudo service garage_pi start
#!/bin/bash

# Install init.d service
sudo cp garage_py.sh /etc/init.d/garage_py

# Make it executable
sudo chmod +x /etc/init.d/garage_py

# Make it run at boot time
sudo update-rc.d garage_py defaults

# Start the service after installation
sudo service garage_py start
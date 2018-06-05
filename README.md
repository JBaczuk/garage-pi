# Garage Pi

Control your garage with a raspberry pi.  This assumes you have a relay connected between GPIO BCM22 and the button wire on your garage opener.  Message me if you need help finding one.  This is a simple API that toggles a GPIO and runs as a service at boot.

## Installation
```
sudo apt-get install python-dev
sudo pip install pyinstaller
git clone https://github.com/JBaczuk/garage-pi.git
cd garage-pi
sudo ./install.sh
sudo reboot
```

## Usage
Send an HTTP POST request to <ip_address_of_pi>:5000/garage to toggle the garage!

#!/bin/bash

printf '\nUpdating to more secure Python 2.7.10\n'

sudo apt install -y python3 python3-pip

sudo apt install git

# Docker install // messy script that gets the job done
sudo wget -qO- https://get.docker.com/ | sh
# Make docker available to jenkins during its rt
sudo groupadd docker
sudo usermod -aG docker vagrant
sudo usermod -aG docker jenkins
sudo usermod -aG docker $USER

# Selenium server install
sudo apt-get install -y unzip xvfb libxi6 libgconf-2-4

mkdir /home/vagrant/downloads
cd /home/vagrant/downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

#entering sudo bash context to run as root until we can get the sudo dpkg to work as expected
sudo bash
sudo dpkg -i google-chrome-stable_current_amd64.deb
cd /home/vagrant
# exit from sudo bash / root context
exit

sudo apt -y update
sudo apt install jenkins

sudo shutdown -r now

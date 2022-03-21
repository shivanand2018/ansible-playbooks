#!/bin/bash
#Description: bash script to install wget and nginx on multiple servers
#Date: 27-jan-22
wget --version &>/dev/null
if [ $? -eq 0 ]; then
 echo "The package wget is already installed"
else
 sudo apt-get -y install wget
fi
which nginx &>/dev/null
if [ $? -eq 0 ]; then
  echo "nginx already installed"
else
  sudo apt-get install -y nginx
fi




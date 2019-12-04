#!/bin/bash

# system update
sudo apt update
sudo apt --assume-yes upgrade

# git install and setup
sudo apt --assume-yes install git
git config --global user.name "dieselpwr"
git config --global user.email "dieselpwr99@gmail.com"
echo "*.pyc" > ~/.gitignore
git config --global core.excludesfile "~/.gitignore"

# python install
sudo apt --assume-yes install python3.8
python3.8 -m pip install pip --upgrade
python3.8 -m pip install setuptools --upgrade
python3.8 -m pip install pylint --upgrade
python3.8 -m pip install autopep8 --upgrade
python3.8 -m pip install Django -- upgrade
python3.8 -m pip install awsebcli --upgrade

# vscode install
mkdir ~/SOURCE_DRIVE
# manually install Visual Studio Code from Ubuntu Software
# manually install the Python extension
# manually add SOURCE_DRIVE to workspace
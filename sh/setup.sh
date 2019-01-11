#!/bin/bash

# system update
sudo apt update
sudo apt --assume-yes upgrade

# vscode install
sudo apt update
sudo apt --assume-yes install curl apt-transport-https
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt --assume-yes install code
# manually install these extensions: markdownlint, Python, SQLite

# git install and setup
sudo apt --assume-yes install git
git config --global user.name "dieselpwr"
git config --global user.email "dieselpwr99@gmail.com"
echo "*.pyc
*.json
*.sqlite3
venv/" > ~/.gitignore
git config --global core.excludesfile "~/.gitignore"

# python install
sudo apt --assume-yes install python3.7
sudo apt --assume-yes install python3-venv # weird but needed
sudo apt --assume-yes install python3.7-venv
mkdir ~/SOURCE_DRIVE
python3.7 -m venv ~/SOURCE_DRIVE/venv
source ~/SOURCE_DRIVE/venv/bin/activate
python -m pip install pip --upgrade
python -m pip install setuptools --upgrade
python -m pip install wheel --upgrade
python -m pip install pylint --upgrade
python -m pip install autopep8 --upgrade
python -m pip install pipreqs --upgrade
python -m pip install Django -- upgrade
python -m pip install awsebcli --upgrade

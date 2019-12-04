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
sudo apt --assume-yes install python3-venv
sudo apt --assume-yes install python3.8-venv
mkdir ~/SOURCE_DRIVE
python3.8 -m venv ~/SOURCE_DRIVE/venv
source ~/SOURCE_DRIVE/venv/bin/activate
python -m pip install pip --upgrade
python -m pip install setuptools --upgrade
python -m pip install pylint --upgrade
python -m pip install autopep8 --upgrade
python -m pip install Django -- upgrade
python -m pip install awsebcli --upgrade

# vscode install
# manually install Visual Studio Code from Ubuntu Software
# manually install the Python extension
# add the below settings to settings JSON
# "workbench.startupEditor": "newUntitledFile",
# "python.pythonPath": "/home/reguser/SOURCE_DRIVE/venv/bin/python",
# "python.linting.pylintPath": "/home/reguser/SOURCE_DRIVE/venv/bin/pylint",
# "python.formatting.autopep8Path": "/home/reguser/SOURCE_DRIVE/venv/bin/autopep8",
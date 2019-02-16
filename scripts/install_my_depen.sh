#!/bin/bash
echo "\033[1;34m"
echo "    _____                            _                       _   _                    "
echo "     /  '            _/_            | )           _/_       //  //      _/_           "
echo "  ,-/-,   __  __ _   /   __  ,  ,---|/  ____  _   /   __.  //  //  __.  /   o __ ____ "
echo " (_/     / (_(_)/_)_<__ / (_/_   \_/ \_/ / <_/_)_<__ (_/|_</_ </_ (_/|_<__ <_(_)/ / <_"
echo "                           /                                                          "
echo "                          '                                                           "
echo '\033[0m'
sleep 1

packages_default="git sed make wget curl"
tools="vim tmux htop nmap glances zsh python3-pip virtualenv";
node="nodejs npm"
node_packages="@angular/cli @vue/cli express"
python_packages="pipenv"
plugins_zsh="git docker npm python sudo systemd web-search"

#Updating Packages
echo '\033[0;33mUpdating Packages '
sleep 1
apt update 
echo '\033[0m'

# Upgrade Packages
echo '\033[0;33mUpgrade Packages'
sleep 1
apt upgrade
echo '\033[0m'

# Installations Packages

# Default
echo '\033[0;32mInstalling packages default'
sleep 1
apt install $packages_default
echo '\033[0m'

#Tools
echo '\033[1;36mInstalling tools \033[0m' 
sleep 1
apt install $tools
echo '\033[0m'


echo "\033[1;35mInstalling Development Tools"
sleep 1
echo "Installing NodeJs"
apt install $node
echo "Installing node packages"
npm install -g $node_packages
echo "Installing Python Tools"
pip install $python_packages

echo '\033[0m'



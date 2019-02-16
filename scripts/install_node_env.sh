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

#Updating Packages
echo '\033[0;33mUpdating Packages '
sleep 1
apt update 
echo '\033[0m'

# Upgrade Packages
echo '\033[0;33mUpgrade Packages'
sleep 1
#apt upgrade
echo '\033[0m'

node="nodejs npm"

# Installations Packages Node

echo "\033[1;35mInstalling Development Tools"
sleep 1
echo "Installing NodeJs"
apt install $node

echo "Installing node packages (Angular - Vue - Express)"
npm install -g @angular/cli 
npm install -g @vue/cli 
npm install -g express
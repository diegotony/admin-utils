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
tools="vim tmux htop nmap glances zsh python3 python3-pip virtualenv screenfetch";
node="nodejs npm"
python_packages="virtualenv jupyter"
plugins_zsh="git docker npm python sudo systemd web-search"

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
#npm install -g @angular/cli 
#npm install -g @vue/cli 
#npm install -g express

echo "Installing Python Tools"
sleep 1
echo "Installing pipenv"
sudo -H pip3 install --upgrade pip
sudo -H pip3 install pipenv
sleep 1
echo "Installing python packages "
pip install $python_packages
echo '\033[0m'


# Create Repositorios folder
mkdir ~/repositorios
cd ~/repositorios/
git clone https://github.com/diegotony/linux_utils
cd

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# source ~/.zshrc | zsh

cd  ~/repositorios/linux_utils/scripts/
pwd
mv zshrc.txt ~/.zshrc
mv bashrc.txt ~/.bashrc

echo "/_  _/  /7  _   _     /7   __"
echo " / /   / \,'o| / \/7 //_7 (c'"
echo "/_/   /n_/|_,7/_n_/ //\\ /__)"


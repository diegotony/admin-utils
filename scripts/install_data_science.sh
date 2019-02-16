#!/bin/bash
cd
echo Instalando paquetes
virtualenv pandas
source ~/pandas/bin/activate
apt install python-pip
pip install numpy pandas matplotlib ipython jupyter
deactivate

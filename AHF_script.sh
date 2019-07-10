#!/bin/bash
# This script should completely set up AutoHeadFixer on a blank Raspberry pi.
#$ sudo chmod 700 AFH_script.sh
#$ ./AFH_script.sh

PURGE=true #for developing - setting purge =true deletes the created folder recursively

mkdir AutoHeadFixSetup
cd AutoHeadFixSetup

echo "Updating via sudo apt-get update, upgrade"
sudo apt-get update -y
sudo apt-get upgrade -y

echo "downloading AHF repository lever_config branch"
git clone --single-branch --branch lever_config https://github.com/jamieboyd/AutoHeadFix.git


echo "cloning pulsedThread and building makefile"
git clone https://github.com/jamieboyd/pulsedThread.git
cd pulsedThread
sudo make
sudo make install
cd ..


echo "Cloning GPIO_Thread"
git clone https://github.com/jamieboyd/GPIO_Thread.git


sudo apt-get install pypy mysql-server php-mysql -y
python3 -m pip install PyMySQL
pip3 install adafruit-circuitpython-mpr121

if [ "$PURGE"=true ]; then
        echo "Purge requested"
        cd ..
        sudo rm -rf AutoHeadFixSetup

fi

echo "Install complete"

#!/bin/bash
 apt update &&  apt upgrade --yes
 apt-get install sudo --yes
 sudo apt install curl --yes
 sudo apt install git --yes
 curl -L https://foundry.paradigm.xyz | bash
 . /root/.bashrc
 foundryup
 sudo apt install nodejs --yes
 sudo apt install npm --yes
 npm install --global yarn
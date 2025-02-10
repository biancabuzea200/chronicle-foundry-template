#!/bin/bash
 yes | apt update &&  apt upgrade
 apt-get install sudo -y
 yes | sudo apt install curl
 yes | sudo apt install git
 curl -L https://foundry.paradigm.xyz | bash
 source /root/.bashrc
 foundryup
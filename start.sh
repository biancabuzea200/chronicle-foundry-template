#!/bin/bash
 apt update &&  apt upgrade --yes
 apt-get install sudo --yes
 sudo apt install curl --yes
 sudo apt install git --yes
 curl -L https://foundry.paradigm.xyz | bash
 source /root/.bashrc
 foundryup
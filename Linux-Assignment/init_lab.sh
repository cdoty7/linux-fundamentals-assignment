#!/bin/bash

#Updates packages (apt update && apt upgrade).
apt update
apt upgrade

#Installs: curl, wget, tree, htop, git, net-tools.
apt install curl
apt install wget
apt install tree
apt install htop
apt install git
apt install net-tools

#Creates 3 users: devops, qa, intern.
#Adds them to a group engineering.

groupadd engineering

useradd -g engineering devops
useradd -g engineering qa
useradd -g engineering intern

#Sets default passwords (use chpasswd) and forces password change (change).
echo "devops:Computer123" | chpasswd -e
echo "qa:Computer123" | chpasswd -e
echo "intern:Computer123" | chpasswd -e
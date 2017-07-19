#!/usr/bin/env bash

#Install ansible on the guest and run playbook from there
if [ ! -f /usr/bin/ansible-playbook ]
then
apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install -y ansible
fi

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php

sudo apt-get update

ansible-playbook --inventory="localhost," -c local /vagrant/playbook.yml
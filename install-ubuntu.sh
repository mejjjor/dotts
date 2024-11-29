#!/usr/bin/env bash

sudo apt install -y git ansible
if [ -d "dotts" ]; then
    echo "Directory 'dotts' already exists."
else
    git clone https://github.com/mejjjor/dotts.git
fi
cd dotts
ansible-playbook  -i ./inventories/localhost  setup-ubuntu.yml

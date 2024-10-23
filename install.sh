#!/usr/bin/env bash

sudo dnf install -y git ansible
# git clone https://github.com/mejjjor/dotts.git
cd dotts
ansible-playbook  -i ./inventories/localhost  setup.yml
#!/bin/bash
sudo echo ''
echo 'PREPARE [Installing Ansible.] *********************************'
echo ''
sudo apt-get update -y >/dev/null 2>&1
sudo apt-get install git curl python3 python3-pip -y >/dev/null 2>&1
pip3 install ansible > /dev/null 2>&1
#git clone REPO RULE HERE /tmp/repo_folder >/dev/null 2>&1
export PATH=$PATH:/$HOME/.local/bin

echo 'PREPARE [Installing requirements with Ansible-Galaxy.] ********'
echo ''
#ansible-galaxy install -r /tmp/repo_folder/files/requirements.yml >/dev/null 2>&1
ansible-galaxy install -r files/requirements.yml >/dev/null 2>&1
echo 'RUN [Running playbook.] ***************************************'
#ansible-playbook /tmp/repo_folder/main.yml -i /tmp/repo_folder/inventory.yml
ansible-playbook main.yml -i inventory.yml

echo -e '\e[35m[WARNING]: Please reboot the system to apply all changes.'
echo ''
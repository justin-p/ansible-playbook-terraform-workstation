#!/bin/bash
REPO_NAME="ansible-playbook-terraform-workstation"
REPO_URL="https://github.com/justin-p/$REPO_NAME"
FOLDER_NAME=$(tr '-' '_' <<<"$REPO_NAME")
FOLDER_PATH="/tmp/$FOLDER_NAME"
APT_DEPENDENCIES="git curl python3 python3-pip"
PIP_DEPENDENCIES="ansible"

sudo echo ''
echo 'PREPARE [Installing Ansible.] *********************************'
echo ''
sudo apt-get update -y >/dev/null 2>&1
sudo apt-get install $APT_DEPENDENCIES -y >/dev/null 2>&1
pip3 install $PIP_DEPENDENCIES > /dev/null 2>&1
git clone $REPO_URL $FOLDER_PATH >/dev/null 2>&1
export PATH=$PATH:/$HOME/.local/bin

echo 'PREPARE [Installing requirements with Ansible-Galaxy.] ********'
echo ''
ansible-galaxy install -r $FOLDER_PATH/requirements.yml >/dev/null 2>&1
echo 'RUN [Running playbook.] ***************************************'
ansible-playbook $FOLDER_PATH/main.yml -i $FOLDER_PATH/inventory.yml

echo -e '\e[35m[WARNING]: Please reboot the system to apply all changes.'
echo ''

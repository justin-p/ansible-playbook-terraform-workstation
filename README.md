# ansible-terraform-workstation

![Github Actions](https://img.shields.io/github/workflow/status/justin-p/ansible-terraform-workstation/CI?label=Github%20Actions&logo=github&style=flat-square)

A Ansible playbook that configures a workstations for Ansible and Terraform development in VS Code.

I created this playbook so that someone who is not familiar with Ansible or Terraform can easly spin up a environment where the needed tools (I.E: `Ansible`,`Terrform`,`doctl`, `azure-cli`, `aws-cli`, `molecule`) and a IDE are neatly configured for them.

**Note:** Preferably run this in a VM, not on your actual machine. This playbook might overwrite some exisiting settings if you are using some of these tools. Once you are familiar with Ansible just create your own playbook that set these things up for you :wink:

## Installation

### Quick

1. Run `curl https://raw.githubusercontent.com/justin-p/ansible-terraform-workstation/master/setup.sh | bash`
2. Enter sudo password.
3. Reboot the system.

### Manual

1. `git clone https://github.com/justin-p/ansible-terraform-workstation`
2. `cd ansible-terraform-workstation`
4. `sudo apt-get update -y && sudo apt-get install git curl python3 python3-pip`
5. `pip3 install --user ansible `
6. `export PATH=$PATH:/$HOME/.local/bin`
7. `ansible-galaxy install -r files/requirements.yml`
8. `ansible-playbook main.yml -i inventory.yml`
9. Reboot the system.

## Contributing

Feel free to open issues, contribute and submit your Pull Requests. You can also ping me on Twitter ([@JustinPerdok](https://twitter.com/JustinPerdok))

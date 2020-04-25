# This template is used for Ansible and Terraform

### How to use the Ansible template (Ubuntu Linux)

#### Install Ansible:

- (Run commands below) to make sure ~/.local/bin exists and is on your PATH
     - mkdir -p ~/.local/bin
     - echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
     - source ~/.bashrc
     
- install ansible with pip :  "  pip install --user ansible   "

- check that ansible has been installed :  "   ansible --version  "

- for info on how to use Ansible goto to this link: https://docs.ansible.com/ansible/latest/network/getting_started/first_playbook.html

### How to use the Ansible template
- go into the ansible folder and populate the inventory file with your host ip's, Ansible will use this to run its plays

- once the inventory file has been populated open up the playbook.yml file and remove the "#"s to run the specific roles, the roles are referenced by ansible when you run the command below and can be found here /ansible-template/roles

- RUN: "  ansible-playbook -i inventory playbook.yml   "

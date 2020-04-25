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

#### Run Ansible

- go into the ansible folder and populate the inventory file with your host ip's, Ansible will use this to run its plays

- once the inventory file has been populated open up the playbook.yml file and remove the "#"s to run the specific roles, the roles are referenced by ansible when you run the command below and can be found here "  /ansible-template/roles  "

- RUN: "  ansible-playbook -i inventory playbook.yml   "


#### How to use the Terraform template (Ubuntu Linux)

#### Install Terraform: 

- To learn a bit about Terraform check out this link : https://www.terraform.io/intro/index.html

-  Make sure Terraform is installed or follow this link : https://www.slashroot.in/terraform-tutorial-how-install-terraform
 
- You need to configure your provider for terraform to work this example assumes you are using Azure and have the Az Cli installed, you must also be logged in using the "       az login     "  command.

-However this can be changed in the " main.tf "  file.

- Inside the Terraform directory there are 3 folders, each represents infrastructure as code and terraform can orchestrate the creation of these modules.

- to install a Ubuntu Vm change directory into   "    terraform/ubuntu-vm-template    "   

- inside the directory run   "    terraform init    "  this will initialise the terraform directory.

- Now run   "  terraform validate  "   to validate our files.
    - run   "  terraform fmt  "   to format the structure of our files.
    - run   "  terraform plan  "   to show a plan of what terraform will do
    
- Finally to run the actual infrastructure deployment run   "    terraform apply   " 



- This will now create an ubuntu vm and output the IP of the VM. 

- This process can be repeated with the other modules within the  " /terraform  "  Folder.



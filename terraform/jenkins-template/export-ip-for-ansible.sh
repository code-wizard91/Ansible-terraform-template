#!/bin/bash

echo "[myvm]" > ../../ansible-template/inventory
echo $(terraform output jenkins_ip) >> ../../ansible-template/inventory

echo " " >> ../../ansible-template/inventory

echo "[myvm:vars]" >> ../../ansible-template/inventory
echo "ansible_user=mizan" >> ../../ansible-template/inventory
echo "ansible_ssh_common_args='-o StrictHostKeyChecking=no'" >> ../../ansible-template/inventory
echo "ansible_ssh_private_key_file=~/.ssh/id_rsa" >> ../../ansible-template/inventory



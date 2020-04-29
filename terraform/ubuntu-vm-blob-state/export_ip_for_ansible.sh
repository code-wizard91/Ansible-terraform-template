#!/bin/bash


echo " " > ../../ansible-template/inventory
echo "[myvm]" >> ../../ansible-template/inventory
echo $(terraform output pub_ip) >> ../../ansible-template/inventory

echo " " >> ../../ansible-template/inventory

echo "[myvm:vars]" >> ../../ansible-template/inventory
echo "ansible_user=mizan" >> ../../ansible-template/inventory
echo "ansible_ssh_common_args='-o StrictHostKeyChecking=no'" >> ../../ansible-template/inventory
echo "ansible_ssh_private_key_file=~/.ssh/id_rsa" >> ../../ansible-template/inventory

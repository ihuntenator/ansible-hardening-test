#!/usr/bin/env bash
# provision a Centos 7.4 V for Ansible with a variety of roles

# update and utils for project
yum -y update 
yum -y install ansible git bind-utils sshpass

# Roles added
ansible-galaxy install git+https://github.com/openstack/ansible-hardening

# Add hosts to ansible /etc/hosts file, if the complexity of project grows i.e. more VM's will add DNS server

sed -i "2i192.168.56.102  sftp  sftp" /etc/hosts
sed -i "2isftp" /etc/ansible/hosts

# setup SSH keys
echo "vagrant" > ~/password.txt
ssh-keygen -q -t rsa -b 2048 -N "" -C "ansible access target" -f ~/.ssh/id_rsa
sshpass -f ~/password.txt ssh-copy-id -i ~/.ssh/vagrant vagrant@sftp
rm -rf ~/password.txt
cp /vagrant/ansible-known_hosts ~/.ssh/known_hosts

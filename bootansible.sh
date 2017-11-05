#!/usr/bin/env bash
# provision a Centos 7.4 V for Ansible with a variety of roles
yum -y update 
yum -y install ansible git bind-utils 
ansible-galaxy install git+https://github.com/openstack/ansible-hardening

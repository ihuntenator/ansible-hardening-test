#!/usr/bin/env bash
# provision a Centos 7.4 V for SFTP
yum -y update 
yum -y install git bind-utils 
sed -i "2i192.168.56.101  ansible  ansible" /etc/hosts

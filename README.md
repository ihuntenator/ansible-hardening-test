# ansible-hardening-test

This project is to stand up two CentOS 7.4 VM's on a private network.

1. Ansible server with hardening role cloned
2. SFTP server

This is to test to find which is easiest to build and maintaint compareing to vagrant up time.

1. SFTP server provisioned with shell script
2. SFTP server provisioned with ansible

Then the SFTP server is hardened with openstack/ansiblehardening

Ref: https://github.com/openstack/ansible-hardening

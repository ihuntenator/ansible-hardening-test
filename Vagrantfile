# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "ansible" do |ansible|
    ansible.vm.box = "dia/centos7-4"
    ansible.vm.hostname = 'ansible'
    ansible.vm.box_url = "file:////Volumes/seagate/VagrantBaseBoxes/centos-7.4.virtualbox.box"
    ansible.vm.provision :shell, path: "bootansible.sh"
    ansible.vm.network :private_network, ip: "192.168.56.101"
    ansible.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "ansible"]
    end
  end

  config.vm.define "sftp" do |sftp|
    sftp.vm.box = "dia/centos7-4"
    sftp.vm.hostname = 'sftp'
    sftp.vm.box_url = "file:////Volumes/seagate/VagrantBaseBoxes/centos-7.4.virtualbox.box"
    sftp.vm.provision :shell, path: "bootsftp.sh"
    sftp.vm.network :private_network, ip: "192.168.56.102"
    sftp.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "sftp"]
    end
  end
end

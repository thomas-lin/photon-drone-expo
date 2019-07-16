# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "virtualmountain/photon3"
  config.vm.define "photon-drone-expo" do |d|
    d.vm.hostname = "photon-drone-expo"
  end
  config.vm.boot_timeout = 600
  config.disksize.size = '40GB'

  config.vm.network "private_network", ip: "10.1.120.10"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "8192"
  end

  config.vm.provision :shell , path: "bootstrap.sh"

end

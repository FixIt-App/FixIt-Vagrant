# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

# ---- Multi-machine environment --- #

Vagrant.configure("2") do |config|

  # This machine will host the api with Express
  config.vm.define "api" do |api|
    api.vm.box = "ubuntu/xenial64"

    api.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1", id: "API-Server"
  
    # Use an specific IP address and hostname on local network
    api.vm.network "private_network", ip: "172.16.4.101", auto_config: true
    api.vm.hostname = "hs-api"

    # Share additional folders to the guest VM
    api.vm.synced_folder "./projects/server", "/home/ubuntu/projects/server"

    api.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
    end

    api.vm.provision :shell, path: "provision-server.sh", privileged: false
  end

end

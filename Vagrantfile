# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update = false
  #config.vm.network "private_network", ip: "192.168.33.20"
  config.vm.network "forwarded_port", guest: 80, host: 8094
  config.vm.synced_folder ".", "/vagrant"

  config.vm.provider "virtualbox" do |vb|
    #vb.gui = true
    vb.memory = 512
	#vb.cpus = 2
  end
  
  #Install ansible and run the playbook
  config.vm.provision "install_ansible", type: "shell", path: "install_ansible.sh"

end
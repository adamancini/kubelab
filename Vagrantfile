# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.provider :virtualbox do |v|
    # Set the timesync threshold to 10 seconds, instead of the default 20 minutes.
    v.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000]
  end
  config.hostsupdater.remove_on_suspend = false

  config.ssh.shell="bash"
  config.vm.define "manager" do |manager|
    config.vm.provider :virtualbox do |vb|
       vb.customize ["modifyvm", :id, "--memory", "2048"]
       vb.customize ["modifyvm", :id, "--cpus", "1"]
       vb.name = "k8s-manager-node"
    end
    manager.vm.box = "ubuntu/xenial64"
    manager.vm.network "private_network", ip: "172.28.128.60"
    manager.vm.network "forwarded_port", guest: 6443, host: 6443
    manager.vm.hostname = "k8s.landrush"
    # manager.hostsupdater.aliases = ["ucp.landrush", "dtr.landrush"]
    manager.landrush.enabled = true
    manager.landrush.tld = 'landrush'
    manager.vm.provision "shell", inline: <<-SHELL
      sudo cp /vagrant/common.sh .
      sudo cp /vagrant/install_docker.sh .
      sudo cp /vagrant/install_k8s.sh .
      sudo cp /vagrant/init_cluster.sh .
      sudo chmod +x common.sh
      sudo chmod +x install_docker.sh
      sudo chmod +x install_k8s.sh
      sudo chmod +x init_cluster.sh
      sudo ./common.sh
      sudo ./install_docker.sh
      sudo ./install_k8s.sh
      sudo ./init_cluster.sh
      sudo cp -r /root/.kube /home/ubuntu/.kube
      sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube
    SHELL
  end
  config.vm.define "minion-1" do |minion|
    config.vm.provider :virtualbox do |vb|
       vb.customize ["modifyvm", :id, "--memory", "2048"]
       vb.customize ["modifyvm", :id, "--cpus", "1"]
       vb.name = "k8s-minion-node-1"
    end
    minion.vm.box = "ubuntu/xenial64"
    minion.vm.network "private_network", ip: "172.28.128.61"
    minion.vm.hostname = "minion-1.landrush"
    # minion.hostsupdater.aliases = ["ucp.landrush", "dtr.landrush"]
    minion.landrush.enabled = true
    minion.landrush.tld = 'landrush'
    minion.vm.provision "shell", inline: <<-SHELL
      sudo cp /vagrant/common.sh .
      sudo cp /vagrant/install_docker.sh .
      sudo cp /vagrant/install_k8s.sh .
      sudo cp /vagrant/join_cluster.sh .
      sudo chmod +x join_cluster.sh
      sudo chmod +x common.sh
      sudo chmod +x install_docker.sh
      sudo chmod +x install_k8s.sh
      sudo ./common.sh
      sudo ./install_docker.sh
      sudo ./install_k8s.sh
      sudo ./join_cluster.sh
    SHELL
  end
  config.vm.define "minion-2" do |minion|
    config.vm.provider :virtualbox do |vb|
       vb.customize ["modifyvm", :id, "--memory", "2048"]
       vb.customize ["modifyvm", :id, "--cpus", "1"]
       vb.name = "k8s-minion-node-2"
    end
    minion.vm.box = "ubuntu/xenial64"
    minion.vm.network "private_network", ip: "172.28.128.62"
    minion.vm.hostname = "minion-2.landrush"
    # minion.hostsupdater.aliases = ["ucp.landrush", "dtr.landrush"]
    minion.landrush.enabled = true
    minion.landrush.tld = 'landrush'
    minion.vm.provision "shell", inline: <<-SHELL
      sudo cp /vagrant/common.sh .
      sudo cp /vagrant/install_docker.sh .
      sudo cp /vagrant/install_k8s.sh .
      sudo cp /vagrant/join_cluster.sh .
      sudo chmod +x join_cluster.sh
      sudo chmod +x common.sh
      sudo chmod +x install_docker.sh
      sudo chmod +x install_k8s.sh
      sudo ./common.sh
      sudo ./install_docker.sh
      sudo ./install_k8s.sh
      sudo ./join_cluster.sh
    SHELL
  end
  config.vm.define "minion-3" do |minion|
    config.vm.provider :virtualbox do |vb|
       vb.customize ["modifyvm", :id, "--memory", "2048"]
       vb.customize ["modifyvm", :id, "--cpus", "1"]
       vb.name = "k8s-minion-node-3"
    end
    minion.vm.box = "ubuntu/xenial64"
    minion.vm.network "private_network", ip: "172.28.128.63"
    minion.vm.hostname = "minion-3.landrush"
    # minion.hostsupdater.aliases = ["ucp.landrush", "dtr.landrush"]
    minion.landrush.enabled = true
    minion.landrush.tld = 'landrush'
    minion.vm.provision "shell", inline: <<-SHELL
      sudo cp /vagrant/common.sh .
      sudo cp /vagrant/install_docker.sh .
      sudo cp /vagrant/install_k8s.sh .
      sudo cp /vagrant/join_cluster.sh .
      sudo chmod +x join_cluster.sh
      sudo chmod +x common.sh
      sudo chmod +x install_docker.sh
      sudo chmod +x install_k8s.sh
      sudo ./common.sh
      sudo ./install_docker.sh
      sudo ./install_k8s.sh
      sudo ./join_cluster.sh
    SHELL
  end
end

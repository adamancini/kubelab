# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.provider :virtualbox do |v|
    # Set the timesync threshold to 10 seconds, instead of the default 20 minutes.
    v.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000]
  end

  config.vm.define "manager" do |manager|
    config.vm.provider :virtualbox do |vb|
       vb.customize ["modifyvm", :id, "--memory", "2048"]
       vb.customize ["modifyvm", :id, "--cpus", "1"]
       vb.name = "k8s-manager-node"
    end
    manager.vm.box = "ubuntu/xenial64"
    manager.vm.network "private_network", ip: "172.28.128.60"
    manager.vm.hostname = "k8s.local"
    # manager.hostsupdater.aliases = ["ucp.local", "dtr.local"]
    manager.landrush.enabled = true
    manager.landrush.tld = 'local'
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

      mkdir -p $HOME/.kube
      sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
      sudo chown $(id -u):$(id -g) $HOME/.kube/config
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
    # minion.hostsupdater.aliases = ["ucp.local", "dtr.local"]
    minion.landrush.enabled = true
    minion.landrush.tld = 'local'
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
      mkdir -p $HOME/.kube
      sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
      sudo chown $(id -u):$(id -g) $HOME/.kube/config
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
    # minion.hostsupdater.aliases = ["ucp.local", "dtr.local"]
    minion.landrush.enabled = true
    minion.landrush.tld = 'local'
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
      mkdir -p $HOME/.kube
      sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
      sudo chown $(id -u):$(id -g) $HOME/.kube/config
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
    # minion.hostsupdater.aliases = ["ucp.local", "dtr.local"]
    minion.landrush.enabled = true
    minion.landrush.tld = 'local'
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
      mkdir -p $HOME/.kube
      sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
      sudo chown $(id -u):$(id -g) $HOME/.kube/config
    SHELL
  end
end

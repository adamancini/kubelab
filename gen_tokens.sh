#!/usr/bin/env bash
kubeadm token list | awk '{if(NR>1) print $1}' > /vagrant/join_token
hostname -I | awk '{print $2}' > /vagrant/manager_ip

#!/usr/bin/env bash
MANAGER_IP=$(cat /vagrant/manager_ip)
JOIN_TOKEN=$(cat /vagrant/join_token)

kubeadm join --token $JOIN_TOKEN $MANAGER_IP

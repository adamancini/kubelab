#!/usr/bin/env bash
set -x

sysctl net.bridge.bridge-nf-call-iptables=1
kubeadm init \
  --apiserver-advertise-address=172.28.128.60 \
  --token=04fae8.a5b0effb2df4ad33 \
  --pod-network-cidr=10.244.0.0/16 \
  --enable-debugging-handlers

mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.9.1/Documentation/kube-flannel.yml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml

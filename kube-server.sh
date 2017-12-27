#!/usr/bin/env bash

# start up a k8s manager node

echo "start up etcd server..."
docker run -d  --name k8s-etcd -p 8080:8080 gcr.io/google_containers/etcd:3.1.10 etcd --data-dir /var/lib/data

sleep 6

echo "start up apiserver..."
docker run -d --name k8s-apiserver --net container:k8s-etcd gcr.io/google_containers/hyperkube:v1.7.6 /apiserver \
  --etcd-servers=http://127.0.0.1:2379 \
  --service-cluster-ip-range=10.0.0.1/24 \
  --insecure-bind-address=0.0.0.0 \
  --insecure-port=8080 \
  --admission-control=AlwaysAdmit

sleep 6

echo "start up controller-manager..."
docker run -d  --name k8s-controller-manager --net container:k8s-etcd gcr.io/google_containers/hyperkube:v1.7.6 /controller-manager \
  --master=127.0.0.1:8080

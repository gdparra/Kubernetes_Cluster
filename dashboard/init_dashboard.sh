#!/bin/bash
kubectl apply -f dashboard-admin.yaml
kubectl apply -f dashboard-read-only.yaml
sudo ln -s ~/Kubernetes_Cluster/dashboard/dashboard.sh /usr/local/bin/dashboard

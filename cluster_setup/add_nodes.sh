#!/usr/bin/env bash
# Get info to add new nodes
kubectl cluster-info
kubeadm token list
openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //'

# Example
# sudo kubeadm join 10.0.2.9:6443 --token 0bd8fi.sbnfxje8ovjrd3ri --discovery-token-ca-cert-hash sha256:ca8ac9d253f70a6777d3a08a108318e13e5190ccf1ce10f2d3d06d0bc3216f65

# In case no tokens are listed, create a new token and print the join command
# kubeadm token create --print-join-command

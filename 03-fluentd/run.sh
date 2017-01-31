#!/bin/bash

cd configs/ || exit
# kubectl apply -f 01-*.yaml
kubectl create configmap fluentd-config --from-file=fluent.conf --namespace=kube-system

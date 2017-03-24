#!/bin/bash

kubectl create configmap fluentd-config \
  --from-file=fluentd_config/fluent.conf \
  --namespace=kube-system
kubectl apply -f 01-fluentd_ds.yaml

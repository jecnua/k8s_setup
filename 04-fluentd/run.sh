#!/bin/bash

kubectl create configmap fluentd-config \
  --from-file=fluentd_config/fluent.conf \
  --namespace=logs
kubectl apply -f 01-fluentd_ds.yaml

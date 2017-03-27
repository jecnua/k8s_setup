#!/bin/bash

kubectl apply -f 00-namespace_storage.yaml
kubectl create configmap es-config \
  --from-file=config/ \
  --namespace=logs
kubectl apply -f 01-es_ss.yaml
# kubectl apply -f 02-es_svc.yaml
# kubectl apply -f 03-kibana_deploy.yaml
# kubectl apply -f 04-kibana_svc.yaml


kubectl get ns
kubectl get pv
kubectl get cm,pvc,statefulset,pods -n logs

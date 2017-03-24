#!/bin/bash

kubectl create configmap es-config --from-file=config/ --namespace=kube-system
kubectl apply -f 01-es_rc.yaml
kubectl get pods --all-namespaces | grep elastic
kubectl apply -f 02-es_svc.yaml
kubectl apply -f 04-kibana_deploy.yaml
kubectl apply -f 05-kibana_svc.yaml

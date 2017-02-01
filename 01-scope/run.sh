#!/bin/bash

kubectl apply -f 00-weavescope_list.yaml
kubectl apply -f 01-weavescope_svc.yaml
kubectl get ds --all-namespaces | grep weavescope
kubectl get svc --all-namespaces | grep weavescope

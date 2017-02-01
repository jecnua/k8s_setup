#!/bin/bash

kubectl apply -f 00-weavescope_list.yaml
kubectl get ds --all-namespaces | grep weavescope
kubectl get svc --all-namespaces | grep weavescope

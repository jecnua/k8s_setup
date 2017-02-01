#!/bin/bash

kubectl apply -f kubernetes-dashboard.yaml
kubectl get pods --all-namespaces | grep dashboard
kubectl get svc --all-namespaces | grep dashboard
kubectl describe svc kubernetes-dashboard -n kube-system

#!/bin/bash

kubectl apply -f 00-k8s_dashboard_deploy_svc.yaml
kubectl get pods --all-namespaces | grep dashboard
kubectl get svc --all-namespaces | grep dashboard
kubectl describe svc kubernetes-dashboard -n kube-system

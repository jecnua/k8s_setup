#!/bin/bash

kubectl apply -f 00-weavescope_list.yaml
kubectl apply -f 01-weavescope_svc.yaml
kubectl get ds --all-namespaces | grep 'weave-scope-agent'
kubectl get svc --all-namespaces | grep 'weave-scope-app-elb'
kubectl describe svc 'weave-scope-app-elb'

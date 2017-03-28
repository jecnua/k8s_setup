#!/bin/bash

kubectl apply -f 00-weavescope_list.yaml
kubectl get ds --all-namespaces | grep 'weave-scope-agent'
kubectl describe svc 'weave-scope-app'

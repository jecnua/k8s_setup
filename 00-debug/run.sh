#!/bin/bash

kubectl apply -f busybox_po.yaml
kubectl exec -ti busybox -- nslookup kubernetes.default

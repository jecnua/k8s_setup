#!/bin/bash

kubectl apply -f 00-busybox_po.yaml
kubectl exec -ti busybox -- nslookup kubernetes.default

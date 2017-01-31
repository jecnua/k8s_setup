#!/bin/bash

kubectl apply -f configs/busybox.yaml
kubectl exec -ti busybox -- nslookup kubernetes.default

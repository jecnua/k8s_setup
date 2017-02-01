#!/bin/bash

kubectl apply -f 00-busybox_po.yaml
kubectl exec -ti busybox -- nslookup kubernetes.default

kubectl exec -ti busybox -- curl 10.103.237.74

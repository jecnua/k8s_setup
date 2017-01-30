#!/bin/bash

kubectl create configmap fluentd-config-2 --from-file=fluentd.conf --namespace=kube-system

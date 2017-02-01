#!/bin/bash

# kubectl create configmap fluentd-config --from-file=fluent.conf --namespace=kube-system

kubectl create configmap es-config --from-file=config/ --namespace=kube-system
kubectl apply -f 01b-es_rc_5.x.yaml
kubectl get pods --all-namespaces | grep elastic
# kubectl logs elasticsearch-logging-v1-87nwz -n kube-system
#  kubectl exec -it elasticsearch-logging-v1-87nwz -n kube-system -- curl localhost:9200
#  kubectl exec -it elasticsearch-logging-v1-87nwz -n kube-system -- curl localhost:9200/_cat/indices
kubectl apply -f 02-es_svc.yaml
kubectl create configmap fluentd-config --from-file=fluentd_config/fluent.conf --namespace=kube-system

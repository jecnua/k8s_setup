#!/bin/bash

kubectl create configmap es-config --from-file=config/ --namespace=kube-system
kubectl apply -f 01b-es_rc_5.x.yaml
kubectl get pods --all-namespaces | grep elastic
# kubectl logs elasticsearch-logging-v1-87nwz -n kube-system
sleep 5
# kubectl exec -it elasticsearch-logging-xxx -n kube-system -- curl localhost:9200
kubectl apply -f 02-es_svc.yaml
kubectl create configmap fluentd-config --from-file=fluentd_config/fluent.conf --namespace=kube-system
kubectl apply -f 03-fluentd_ds.yaml
sleep 5
# kubectl exec -it elasticsearch-logging-xxx -n kube-system -- curl localhost:9200/_cat/indices
kubectl apply -f 04-kibana_deploy.yaml
kubectl apply -f 05-kibana_svc.yaml

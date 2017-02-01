#!/bin/bash

kubectl create configmap es-config --from-file=config/ --namespace=kube-system

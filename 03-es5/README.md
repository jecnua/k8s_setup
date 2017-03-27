# ES 5 for logging

Get all data:

    kubectl get ns,pv && \
      kubectl get cm,pvc,statefulset,pods,deploy,svc -n logs

## TODO

- Data (Volume) is not encrypted
- Make es clustering work

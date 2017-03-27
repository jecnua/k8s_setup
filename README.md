# Kubernetes setup templates

Some up-to-date templates to set up tools on a new k8s cluster.

- k8s dashboard
- waeve-scope
- prometheus (wip)
- fluentd (ds) + elasticsearch 5 (single node)

## Notes

- YAML are for AWS (I hope you like ELBs :D)

## Usage

Every directory has yaml files with a number in the name.
That usually indicates the order they have to be run.
To have an idea about how, check the _run.sh_.

## Ports

Scope: 30080
ES: 30001
Kibana: 30002

## TODO

- Make all go through Ingress
- Mesh network

# fluentd + elasticsearch

Changed base kibana from the google version to docker hub.

I then removed the old 2.x and made it work with 5.x! :)

https://github.com/fluent/fluentd-kubernetes-daemonset
http://docs.fluentd.org/v0.12/articles/kubernetes-fluentd

## Depends on

- Kibana/ES 5.2.2

Index name or pattern

    kubernetes-*

## TODO

- Move it to his own namespace

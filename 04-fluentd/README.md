# fluentd + elasticsearch

Changed base kibana from the google version to docker hub.

I then removed the old 2.x and made it work with 5.x! :)

https://github.com/fluent/fluentd-kubernetes-daemonset
http://docs.fluentd.org/v0.12/articles/kubernetes-fluentd
## Versions

- Kibana/ES 5.2.0

## TODO

- Make es clustering work
- Make es data survive pod restart/update
- Make kibana internal ELB

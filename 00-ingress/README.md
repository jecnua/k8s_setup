# Ingress controller installation

Source:
https://raw.githubusercontent.com/kubernetes/ingress/master/examples/aws/nginx/nginx-ingress-controller.yaml

I removed the service load balancer.

## Notes

In the ingress I needed to comment this line:

    - --publish-service=$(POD_NAMESPACE)/ingress-nginx

because of this bug https://github.com/kubernetes/ingress/issues/348

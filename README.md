# some-k8s-ymls

This repository is for working with kubernetes's YAMLs and training in katacoda environment.

# Some notes!

* We can see IP Range of k8s on `cluster-info dump`.
* If we want to setup cluster by hard way, we should set IP ranges and other informations.
* By CoreDNS we can discover services on net by their names or by theirs `<pod name>.<service name>`.
* `kubectl exec <pod> -- <command>` is useful for running commands on a pod.

## Types of service

- ClusterIP: Set a static IP in cluster ip range. we can connect to pod inside cluster zone.
- NodePORT: Set a port by node for accessing to pod by node's IP and service's port.
- LoadBalancer: Set a static ip for service by using from network managment service (or something like that!).

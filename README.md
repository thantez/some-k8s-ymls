# Some kubernetes YAMLs

This repository is for working with kubernetes's YAMLs and training in katacoda environment.

# Some notes!

- We can see IP Range of k8s on `cluster-info dump`.
- If we want to setup cluster by hard way, we should set IP ranges and other informations.
- By CoreDNS we can discover services on net by their names or by theirs `<pod name>.<service name>`.
- `kubectl exec <pod> -- <command>` is useful for running commands on a pod.
- `kubectl rollout status <deploy>` shown status of deploy at the moment.
- `kubectl rollout history <deploy>` shown history of status of deploy.

## Types of service

- ClusterIP: Set a static IP in cluster ip range. we can connect to pod inside cluster zone.
- NodePort: Set a port by node for accessing to pod by node's IP and service's port.
- LoadBalancer: Set a static ip for service by using from network managment service (or something like that!).

## Types of deployment strategies

- RollingUpdate: When a new version of app will release, kubernetes by max surge and max unavailable will down pods and up pods of new version.
  - max surge: How much of pods should replace with new versoin.
  - max unavailable: maximum of pods that are down at the moment.
- Recreate: When a new version of app will release, all of pods will down and pods of new version will up.

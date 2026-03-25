# dse-3101-cluster
Projects and code for DSE-3101 working with container clusters

## Kubernetes

### Creating Kind Cluster

```bash
mkdir -p $HOME/.kube
export KUBECONFIG=$HOME/.kube/config
# Create cluster with 1 control plane and 3 worker nodes
kind create cluster --config kind-config.yaml
```
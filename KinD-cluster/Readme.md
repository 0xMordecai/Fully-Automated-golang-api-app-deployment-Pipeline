## configure a Multi-Node Kubernetes Cluster

**let’s bootstrap a multi-node KinD cluster. First, we need to create a KinD `config` file. The KinD `config` file is a simple `YAML` file where you can declare what configuration you want for each node. If we need to bootstrap a single control plane and three worker node clusters, we can add the following configuration:**

```yaml
    kind: Cluster
    apiVersion: kind.x-k8s.io/v1alpha4
    nodes:
    - role: control-plane
    - role: worker
    - role: worker
    - role: worker
```
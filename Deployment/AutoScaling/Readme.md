## Adding Horizontal Pod autoscaling

**to help our deployed application to update `replicas` within the `ReplicaSet` based on certin factors such `CPU`, we are going to use `HorizontalPodAutoscaler` Resource for that.**

we are going to use the following `hpa.yaml` manifast:
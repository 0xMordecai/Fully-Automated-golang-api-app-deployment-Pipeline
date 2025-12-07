## Adding Horizontal Pod autoscaling

**to help our deployed application to update `replicas` within the `ReplicaSet` based on certin factors such `CPU`, we are going to use `HorizontalPodAutoscaler` Resource for that.**

we are going to use the following `hpa.yaml` manifast:
```yaml
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
  name: myapi-hpa
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: myapi-deployment
  minReplicas: 1
  maxReplicas: 3
  mertics:
  - type: Resources
    resource:
      name: cpu
      target: 
        type: Utilization
        averageUtilization: 50%
```

We will use the following command to perform autoscaling:
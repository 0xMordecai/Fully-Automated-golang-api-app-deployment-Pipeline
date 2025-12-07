## Exposing Pod With Kubernetes Services

**After we deploying our containerized API and Add a `HorizontalPodAutoscaler` Service, we have to expose it to the external world and to do that we will use `NodePort Service` resource**

**we will apply this manifest for the `NodePort Service` resource**
```yaml
apiVersion: v1
kind: service
metadata:
  name: myapi-service
spec:
  type: NodePort
  selector:
    app: myapi
  ports:
  - port: 8888
    protocol: TCP
    targetPort: 8888
```

**Let’s apply this manifest to see what we get using the following command:**
```shell
kubectl apply -f service.yaml
```
# kubectl pod

- 容器状态(status)
    - Pending
    - Running
    - Succeeded
    - Failed
    - Unknown
- 容器探针(probe)
    - 存活态探测livenessProbe
    - 就绪态探测readinessProbe
    - 启动探针startupProbe


## 生命周期
- 初始化容器
- 主容器
    -
- 处理函数
    - 容器启动后执行postStart处理函数
    - 容器终止前执行preStop处理函数

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: lifecycle-demo
spec:
  containers:
  - name: lifecycle-demo-container
    image: nginx
    lifecycle:
      postStart:
        exec:
          command: ["/bin/sh", "-c", "echo postStart > /usr/share/message"]
      preStop:
        exec:
          command:  ["/bin/sh", "-c", "echo preStop > /usr/share/message"]

```

---
# pod

```sh

kubectl run pod-name --image=nginx:1.18.0 --port=80 --namespace namespace-name

kubectl get pods --namespace namespace-name

kubectl get pod pod-name --namespace namespace-name --output=yaml

kubectl describe pod pod-name --namespace namespace-name

kubectl delete pod pod-name --namespace namespace-name


```

---
## deployment
> deploy
- deployment监控pod状态，一旦发现pod终止，就会立即重建pod；要想删除pod，要先删除deployment

```sh

kubectl create deployment deployment-name --image=nginx:1.18.0 --namespace namespace-name

kubectl expose deployment deployment-name --port=80 --type=NodePort --namespace namespace-name

kubectl delete deployment deployment-name --namespace namespace-name

kubectl get deployments --namespace namespace-name
kubectl get deployment deployment-name --namespace namespace-name




kubectl create deployment deployment-name --image=nginx:1.18.0 --port=8083 --replicas=3 --namespace namespace-name
# --type=LoadBalancer:
kubectl expose deployment deployment-name --type=LoadBalancer --port=8080 --namespace namespace-name

```

---
## service
> svc
```sh
# --type=NodePort:随机端口
kubectl expose deployment deployment-name --name=service-name --type=NodePort --port=80 --namespace namespace-name
# --type=ClusterIP:集群内部访问IP不变
kubectl expose deployment deployment-name --name=service-name --type=ClusterIP --port=80 --target-port=18080 --namespace namespace-name


kubectl get services --namespace namespace-name

kubectl get service service-name --namespace namespace-name --output=wide

kubectl delete service service-name --namespace namespace-name
```


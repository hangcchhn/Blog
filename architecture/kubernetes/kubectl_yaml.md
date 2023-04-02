# kubectl yaml



---
## 资源
- yaml-name.yaml
```yaml

apiVersion: v1
kind: Namespace
metadata:
  name: namespace-name

---

apiVersion: v1
kind: Pod
metadata:
  name: pod-name
  namespace: namespace-name
spec:
    containers:
        - name: nginx_container
            image: nginx:1.18.0


```
## 命令式对象配置

```sh
kubectl create --filename=yaml-name.yaml
kubectl patch --filename=yaml-name.yaml
kubectl get --filename=yaml-name.yaml
kubectl delete --filename=yaml-name.yaml





```

---
## 声明式对象配置
```sh
kubectl apply --filename=yaml-name.yaml

```

---
- namespace-name.yaml
```yaml
apiVersion: v1
  kind: Namespace
  metadata:
  name: namespace-name

```

---
- pod-name.yaml
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-name
  namespace: namespace-name
spec:
  containers:
    - name: nginx_container
    image: nginx:1.18.0

```
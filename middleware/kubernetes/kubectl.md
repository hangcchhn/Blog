# kubectl

```sh

kubectl command type name flag

```
## command

- create
- expose
- run
- set
- get
- edit
- delete
- explian


## type
- namespace
- node

- deployment
- pod

- job
- cronjob

- service
- ingress


---

```
kubectl version --client --output=yaml



```
---
## namespace
> ns
- --namespace,-n
- --namespace default
```sh

kubectl get namespaces

kubectl create namespace namespace-name

kubectl get namespace namespace-name --output=yaml

kubectl delete namespace namespace-name




```






---

# label

```sh
kubectl label pod pod-name version=1.0 --namespace namespace-name

kubectl label pod pod-name version=2.0 --namespace namespace-name --overwrite

# 根据标签筛选
kubectl get pod --namespace namespace-name --selector version==2.0 --show-labels

# 删除标签
kubectl label pod pod-name version- --namespace namespace-name



```
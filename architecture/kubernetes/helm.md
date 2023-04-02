# Helm

---
安装
```
wget https://get.helm.sh/helm-vXX.YY.ZZ-linux-amd64.tar.gz



```


---
- Chart

- Repository

- Release



---


```

helm search xxx
helm install xxx
helm uninstall xxx

helm status xxx
helm list

helm repo list

helm create xxx
helm package xxx

helm upgrade
helm rollback



```

---
镜像
https://artifacthub.io/


- Bitnami:Kubeapps

```
helm repo add bitnami https://charts.bitnami.com/bitnami
kubectl create namespace kubeapps

```
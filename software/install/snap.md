


---
- ubuntu
```sh
apt install snapd
sudo snap install snap-store snap-store-proxy snap-store-proxy-client

apt remove --autoremove snapd
```
--

- centos
```sh
yum install snapd

systemctl enable --now snapd.socket

systemctl start snapd.service


ln -s /var/lib/snapd/snap /snap

```

---

```sh


snap list

snap find xxx

snap install xxx

snap remove xxx
# 更新
snap refresh xxx
# 回滚
snap revert xxx
```

---


```sh
snap install redis-desktop-manager
snap install portx
snap install postman


snap install sublime-text --classic
snap install sublime-merge --classic


snap install docker
snap restart docker

service snap.docker.dockerd status

```

---

- error: cannot install "xxx": snap "core" has changes in progress

```sh
snap changes

snap abort 5
```
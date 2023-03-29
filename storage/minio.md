# MinIO


- 兼容Amazon S3
- 由Golang编写

- OSS(Object Storage Service)

---

## MinIO安装

```sh


podman pull quay.io/minio/minio

docker pull minio/minio

docker run -p 9000:9000 -p 9001:9001 minio/minio server /data --console-address ":9001"

```
- http://127.0.0.1:9001/login
    - minioadmin:minioadmin
- Bucket
- User
- Group
- Service Account

---
## MinIO SDK
- java
```
<dependency>
    <groupId>io.minio</groupId>
    <artifactId>minio</artifactId>
    <version>8.5.2</version>
</dependency>

```

- python
```python
# pip3 install minio

```


- golang


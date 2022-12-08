# Docker用例

---

## Redis
```
docker pull redis

docker run --name redis-start -p 6379:6379 -d redis

```
- dockerfile
```dockerfile
FROM redis
COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

```

- docker-compose.yml
```yaml


```

---

## Nginx

```


```

---

## MySQL

```



```
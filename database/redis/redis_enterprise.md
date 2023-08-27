




- redislabs

```sh

# Redis
docker pull redislabs/redis:latest

# Redis Modules
docker pull redislabs/redismod:latest

# RedisInsight
docker pull redislabs/redisinsight:latest




docker run -d -p 6379:6379 redislabs/redismod


docker run -d --cap-add sys_resource --name rp -p 8443:8443 -p 9443:9443 -p 12000:12000 redislabs/redis

```




---

- RedisInsight
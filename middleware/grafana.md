# grafana


```sh
./bin/grafana-server  --config=conf/defaults.ini


```

- `http://192.168.10.200:3000/`
- `username/password:admin/admin`




## Loki


## Promtail

```yml
version: "3"

networks:
  loki:

services:
  loki:
    image: grafana/loki:2.2.1
    container_name: loki-service
    volumes:
#    将loki的配置文件挂载到本地 c:/docker/loki 目录
      - c:/docker/loki:/etc/loki/
    ports:
      - "3100:3100"
    command: -config.file=/etc/loki/loki.yml
    networks:
      - loki

  promtail:
    image: grafana/promtail:2.2.1
    container_name: promtail-service
    volumes:
    #  为了读取本地的日志目录，这个是个默认配置目的就是为跑起来，生产肯定不是这样的。
      - c:/docker/log:/var/log/
    #  promtail  的配置文件也挂载到本地 c:/docker/promtail目录
      - c:/docker/promtail:/etc/promtail/
    command: -config.file=/etc/promtail/promtail.yml
    networks:
      - loki

  grafana:
    image: grafana/grafana:latest
    container_name: grafana-service
    ports:
      - "3000:3000"
    networks:
      - loki
```

- https://mp.weixin.qq.com/s?__biz=MzUzMzQ2MDIyMA%3D%3D&idx=2&mid=2247489891&scene=21&sn=712ce17d70e8062f49ffd1a334418f63#wechat_redirect
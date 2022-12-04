# Grafana Loki
## Loki
- 日志的存储和解析

## Promtail
- 日志收集

```yml
version: "3"

networks:
  loki:

services:
  loki:
    image: grafana/loki:2.2.1
    container_name: loki-service
    ports:
      - "3100:3100"
    networks:
      - loki

  promtail:
    image: grafana/promtail:2.2.1
    container_name: promtail-service
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
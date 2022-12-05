# Grafana Loki


---
## Loki
- 日志的存储和解析

```sh
./loki-linux-amd64 --config.file=./loki-config.yaml

```
---
- loki-config.yaml

```yaml
auth_enabled: false

server:
  http_listen_port: 3100
  grpc_listen_port: 9096

common:
  path_prefix: /tmp/loki
  storage:
    filesystem:
      chunks_directory: /tmp/loki/chunks
      rules_directory: /tmp/loki/rules
  replication_factor: 1
  ring:
    instance_addr: 0.0.0.0
    kvstore:
      store: inmemory

schema_config:
  configs:
    - from: 2020-10-24
      store: boltdb-shipper
      object_store: filesystem
      schema: v11
      index:
        prefix: index_
        period: 24h

ruler:
  alertmanager_url: http://0.0.0.0:9093

limits_config:
  enforce_metric_name: false
    reject_old_samples: true
      reject_old_samples_max_age: 168h
        ingestion_rate_mb: 4M
          ingestion_burst_size_mb: 6M


```



---
## Promtail
- 日志收集

```sh
./promtail-linux-amd64 --config.file=./promtail-config.yaml

```



---

- promtail-config.yaml
```yaml
server:
  http_listen_port: 9080
  grpc_listen_port: 0

positions:
  filename: /tmp/positions.yaml

clients:
  - url: http://0.0.0.0:3100/loki/api/v1/push

scrape_configs:
- job_name: application
  static_configs:
  - targets:
      - localhost
    labels:
      job: varlogs
      project: grafana-loki-start
      __path__: /opt/grafana/loki-2.4.2/logs/*.log


```
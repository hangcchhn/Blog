# prometheus
> 普罗米修斯

- `./prometheus --config.file="prometheus.yml" --web.listen-address="0.0.0.0:9090"`
- `http://192.168.10.200:9090`
- prometheus.yml

```yml
scrape_configs:
  - job_name: 'application'
    metrics_path: '/actuator/prometheus'
    # metrics_path defaults to '/metrics'
    # scheme defaults to 'http'.

    static_configs:
      - targets: ["localhost:8090"]

```
---
## menu


- Graph


- Status
    - Targets


- spark-2.4.8
- hadoop-2.7.3

- SparkContext
- SparkConf


- Spark依赖Hadoop环境

```scala



```



---
## Spark主机配置

```sh
--master:local[*],spark://cent01:7077,yarn
```

- Local模式
    - `local`
    - `local[*]`
    - `local[N]`
- Standalone模式
    - `spark://host:port`
    - 默认端口7077
- Yarn模式
    - `yarn client`
    - `yarn cluster`


- mesos

# Spark

- Databricks

- Spark框架是由Scala语言实现的
- 使用Akka框架实现通信

- 内存计算

---
## 组件

- Spark Core
- Spark Streaming
- Spark SQL
- MLlib：机器学习ML
- GraphX：图








---

## 容错机制

- Lineage

- CheckPoint
    - CheckPoint Data
    - Logging Update


---

- Shuffle
    - Shuffle Write
    - Shuffle Fetch

---
## API
- JVM
    - Java语言
    - Scala语言


---

- Python语言PySpark模块
    - py4j

- Java语言
```java
import py4j.GatewayServer;

GatewayServer server = new GatewayServer(app);
server.start();
```

- Python语言
```py
from py4j.java_gateway import JavaGateway

gateway = JavaGateway()
```

---

- R语言SparkR模块




---


- Tachyon分布式文件系统




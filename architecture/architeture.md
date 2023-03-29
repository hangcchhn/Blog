# architeture

## 分布式系统
> distributed system

---
### CAP原则
- Consistency:一致性
- Availability:可用性
- Partition Tolerance:分区容错性

分布式系统中以上三个要素最多只能同时实现两点，不能三者兼顾

---
### BASE

- Basically Available:基本可用
- Soft-state:软状态
- Eventual Consistency:最终一致性


- 柔性事务满足BASE
- 刚性事务满足ACID
---


## 保持一致性的共识算法

---
### Gossip协议
- 广播协议
- 图的广度优先遍历算法


### Raft算法

- Leader节点
- Follower节点
- Candidate候选节点

---
- Leader选举

- Logger复制
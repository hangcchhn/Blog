
# Redis学习

## Redis


- Standalone模式只实现了数据的一致性
- Sentinel模式实现了数据的一致性和可用性
- Cluster模式实现了可用性和分区一致性


---


- `scan`命令

```sh
#
scan cursor match '' count count

```
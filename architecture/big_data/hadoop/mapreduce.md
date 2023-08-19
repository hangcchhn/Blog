# MapReduce




- 分而治之

---

- Map
- Reduce


- MapTask
- ReduceTask


---
- Shuffle






---


- input
- split
- map
- shuffle
- reduce
- output



---
## MapReduce 1.x
- JobTracker
- TaskTracker


- JobClient把所有Hadoop中的Job信息告诉给JobTracker
- JobClient.runJob()实现把input进行split操作分发给map








## MapReduce 2.x

- ApplicationMaster
- ResourceManager
- NodeManager

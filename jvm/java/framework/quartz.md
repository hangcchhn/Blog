# Quartz


- Terracotta并购Quartz项目


- Quartz的1.x与2.x版本差异很大，建议直接学习使用2.x版本

## 前提说明：

- jobDetail和trigger都要使用withIdentity方法配置jobName和jobGroup

## 使用说明：
1. 当jobDetail不存在时scheduleJob和rescheduleJob都失败（抛异常）
需要给jobDetail配置持久化（storeDurably方法）
否则当trigger不在触发失效后与之绑定的jobDetail会被一起清理

2. 当oldTrigger不存在时reschedule会失败，返回firstFireDate为null
JobrescheduleJob获取不到以前的触发器，也就无法替换新的触发器，
这时应该使用scheduleJob重新绑定新的触发器
如果scheduleJob返回返回firstFireDate也为null，说明前提条件不满足



---

- Job
- JobDetail

- Trigger
- Scheduler



---

## JobStore
- RAMJobStore

- JDBCJobStore

- TerracottaJobStore





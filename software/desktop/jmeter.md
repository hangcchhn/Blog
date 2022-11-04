# jmeter



---
## 执行顺序
- 配置元件
- 前置处理器
- 定时器
- 取样器
- 后置处理器
- 断言
- 监听器




---

## 中英翻译
| 英文 | 中文 |
| :-: | :-: |
| Test Plan | 测试计划 |
| Thread Group | 线程组 |
| Sampler | 采样器 |
| Logic Controller | 逻辑控制器 |
| Pre Processors | 前置处理器 |
| Post Processors | 后置处理器 |
| Assertions | 断言 |
| Timer | 定时器 |
| Test Fragment | 测试片段 |
| Config Element | 配置元件 |
| Listener | 监听器 |
| Non-Test Element | 非测试元件 |
| HTTP Mirror Server | 镜像服务器 |
| HTTP(s) Test Script Recorder | 测试脚本录制器 |
| Property Display | 属性显示 |
| 英文 | 中文 |
| 英文 | 中文 |

---

## 体系结构

|  | $Y_1$ | $X_2$ | $Z$ |
| :-: | :-: | :-: | :-: |
| $X_1$ | 采样 | 断言 | 监听 |
| $X_2$ | 前置\|配置\|后置 |  |  |
| $X_3$ | 逻辑 |  |  |
| $X_4$ | 定时 |  |  |
| $X_5$ | 线程 |  |  |


---
## 执行命令
```sh
jmeter -n -t jmeter.jmx -l jmeter.jtl
```
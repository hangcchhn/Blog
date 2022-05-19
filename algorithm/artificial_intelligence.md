
# 人工智能
> AI(artificial intelligence)

- 完备性(Complete)
- 最优性(Optimal)
- 时间复杂度(Time)
- 空间复杂度(Space)

## 无信息搜索
> 盲目搜索

- 宽度/广度优先搜索(Breadth-First Search, BFS)
    - 兄弟
- 深度优先搜索(Depth-First Search, DFS)
    - 子代



- 代价一致搜索(Uniform-Cost Search)
- 深度受限搜索(Depth-Limited Search)

- 迭代深化搜索(Iterative Deepening Search, IDS)
    - 迭代深入深度优先搜索

- 双向搜索

---

- $b$:宽度(Breadth)
- $d$:深度(Depth)
- $m$:最大深度(Maximum Depth)
- $l$:受限深度(Limited Depth)
- $C^*$:最优代价(Cost)

| Search | Breadth-First | Depth-First | Uniform-Cost | Depth-Limited | Iterative Deepening |
| - | - | - | - | - | - |
| Complete | Yes | No | Yes | No | Yes |
| Optimal | Yes | No | Yes | No | Yes |
| Time | $O(b^{d + 1})$ | $O(b^m)$ | $O(b^{C^* / \epsilon})$ | $O(b^l)$ | $O(b^d)$ |
| Space | $O(b^{d + 1})$ | $O(b^m)$ | $O(b^{C^* / \epsilon})$ | $O(bl)$ | $O(bd)$ |

## 有信心搜索
> 启发式搜索

- 启发函数(heuristic function)

启发函数h(n) + 代价函数g(n) = 目标函数f(n)

- 贪婪最佳优先搜索
- $A^*$搜索

- 可采纳性(admissible)
- 一致性(consistency)



## 优化问题
- 最小值
- 最大值


## 局部搜索算法
- 爬山法
    - 局部极值（非全局极值）
    - 随机爬山法
    - 随机重启爬山法

- 模拟退火算法

- 遗传算法
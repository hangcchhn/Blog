# Python特性

- 动态类型




---

## python中*或**的多重含义

- 乘法：`x * y`，乘方（幂）：`x ** y`

### 参数：`*args`，`**kwargs`

- `*args`
    - 形参：多个无名参数，本质是`tuple`元组
    - 实参：集合
```py
args = (value1, value2,)
# args = [value1, value2,]
# args = {value1, value2,}
func(*args)

func(value1, value2,)
```

- `**kwargs`
    - 形参：多个带名参数，本质是`dict`字典
    - 实参：字典
```py
kwargs = {key1:value1, key2:value2,}
func(**kwargs)

func(key1=value1, key2=value2)
```
---


---
### 序列解包

- `zip(iter)`
    - Python2将元素转成元组，整体组成列表
    - Python3将元素转成元组，整体组成对象，对象可转列表

以多个参数的维度的最小值为长度，取每个参数一个元素组成一个元组

- `zip(*iter)=iter`
    - 序列解包:"*表达式"只支持Python3，不支持Python2
    - 使用"*表达式"获取任意长度的Iterable对象中某些固定模式数据
    - "*表达式"可以位于第一个位置、最后一个位置或中间任意的位置

---



---

- `else`语句
    - `if-else`结构
    - `try-else`结构
    - `for-else`结构


---

- `with`语句


---
- `:=`海象运算符：先赋值后使用，使用括号包其他类提高优先级
```py
i = 0
while (i := i + 1) < 10:

    pass


```
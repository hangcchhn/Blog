## Python对象
> object



- 一切皆是对象
    - 变量作为函数参数使用引用传递
    - 变量存储的都是对象的内存地址
    - 参数传入的都是对象的内存地址


---
- 返回对象唯一标识：`id(var)`
- 返回对象数据类型：`type(var)`

- `var0 is var1`：两个变量指向同一对象返回`True`
- `var0 == var1`：两个变量指向同一对象含有相同内容返回`True`
- `id(var0) == id(var1)`：返回`True`也不能说明两个变量是同一对象



- 浅复制：只复制最外层对象
- 深复制：递归复制所有对象

```py
import copy
var1 = copy.copy(var0)  # 浅复制
var2 = copy.deepcopy(var0)  # 深复制
```

- 特别注意，赋值和切片都是浅复制


- 克隆对象：集合属性的浅复制
    - `is`->`False`
    - `==`->`True`

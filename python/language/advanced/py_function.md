# Python函数
> funtion

- 函数也是对象：头等对象(first-class object)
    - 变量
    - 函数参数
    - 函数返回值

- 函数嵌套：闭包
    - 装饰器


---
- 函数Function & 方法Method

---
```py
def function_name(parameters) -> return_type:
    # code
    return ...

```


---
## 函数参数

- 值传递：修改形参，影响实参

---
- 位置参数
- 缺省参数，可选参数
- 可变参数
- 关键字参数(keyword arguments)
- 可变关键字参数

---
### 传入方式

- 按元组方式传入：位置参数`*args`
    - 可不带参数名
- 按字典方式传入：关键字参数`**kwargs`
    - 必须带参数名

### Python 3.8+
- 符号`/`之前的参数必须按元组方式传入
- 符号`*`之后的参数必须按字典方式传入

---
## 返回值

- return & yield

---
##

```py
def function():
    pass


function.__module__

function.__globals__['variable']

```

---
## lambda表达式 -> 匿名函数


```py
def function_name(x):
    return expression(x)

lambda_expression = lambda x: expression(x)



map(lambda x:)
filter(lambda x:)
```


---

- 高阶函数(higher-order function)
    - 函数作为参数传递

- 闭包closure

- 惰性求值(lazy evaluation)

- 函数柯里化(function currying)
    - 将多参数函数转化成嵌套的单参数函数串
    - Python，JavaScript

```py

func(a, b, c, d)

func(a)(b)(c)(d)

```


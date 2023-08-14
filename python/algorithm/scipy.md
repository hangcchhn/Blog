

# scipy

- `pip install scipy`

---

- 优化器：`scipy.optimize`


非线性求极值:scipy.optimize.minimize(),参数

目标函数:fun
def fun(a, b):

    return lambda x0: expression(x0, a, b)

初始猜测:x0
目标函数参数args=(a, b)


算法:method='SLSQP'

边界bounds=


条件constraints=({'type': 'ineq', 'fun': },\
{'type': 'eq', 'fun': , 'jac': , 'args': })

---


- rosenbrock：非凸函数，用于检测优化算法性能
```py
def rosenbrock(x):
    return sum(100.0 * (x[1:] - x[:-1] ** 2.0) ** 2.0 + (1 - x[:-1]) ** 2.0)
```

$$

rosenbrock(x) = \sum\limits_{i = 1}^{N - 1}{
    [100 * (x_{i+1} - x_{i}^2)^2 + (1 + x_i)^2]
}
$$

---


- 在线性约束条件下求解最小化解
    - `scipy.optimize.linprog`
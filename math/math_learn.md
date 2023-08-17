

---
## OLS(Ordinary Least Square)最小二乘法


$$


y = \alpha + \sum\limits_{t = 1}^{T}{\beta_{t} * x_t} + \epsilon

\\

\min\left(
\sum\limits_{t = 1}^{T}{
    \bigg\lgroup
        y - \sum\limits_{t = 1}^{T}{\beta_{t} * x_t}
    \bigg\rgroup^2}\right)
$$

---
## SDS(Standard Deviation Score)标准差比值法


$$
SDS = \sqrt{
    \dfrac{
        \sum\limits_{i = 1}^{N}{(x_i - \bar{x})^2}
    }{N - unbiased}
}
\\

unbiased = 0|1


$$


---
## 泰勒
> Taylor
- 泰勒公式：分解成多项式函数
    - 在点$x_0$处的泰勒多项式
    - 泰勒系数
    - 余项：即为误差
$$
f(x) = \sum\limits_{n = 0}^{N}{
    \dfrac{f^{(n)}(x_0)}{n!}
} (x - x_0)^n + o\Big( (x - x_0)^n \Big)

$$



- 泰勒定理
$$
f(x) = \sum\limits_{n = 1}^{N}{
    \dfrac{f^{(n)}(x)}{n!}
} (\Delta{x})^n + \dfrac{f^{(n + 1)}(\xi)}{(n + 1)!}(\Delta{x})^{n + 1}

$$


- Peano：佩亚诺余项
$$
o\Big( (x - x_0)^n \Big)
$$
- Lagrange：拉格朗日余项
    - $\xi \in (x, x = \Delta{x})$
$$
o\Big( (\Delta{x})^{n + 1} \Big) = \dfrac{f^{(n + 1)}(\xi)}{(n + 1)!}(\Delta{x})^{n + 1}
$$





- 麦克劳林公式
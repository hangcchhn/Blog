
---
### R-squared（拟合优度）
- y:拟合数据
- x:真实数据

$$


R^2 = 1 - \dfrac{
    \sum\limits_{t = 1}^{T}{(y - x) ^ 2}
}{
    \sum\limits_{t = 1}^{T}{(x - \bar{x}) ^ 2}
}
$$

---
### OLS（最小二乘法）


$$


y = \alpha + \sum\limits_{t = 1}^{T}{\beta_{t} * x_t} + \epsilon

\newline

min
\Bigg(
\sum\limits_{t = 1}^{T}{
    \bigg\lgroup
        y - \sum\limits_{t = 1}^{T}{\beta_{t} * x_t}
    \bigg\rgroup^2}
\Bigg)
$$
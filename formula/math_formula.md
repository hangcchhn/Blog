# 数学公式
>


## 标准差
> Standard Deviation
- $\sigma_x$
- 无偏性unbiasedness
$$
StdDev(unbiased) = \sqrt{
    \dfrac{
        \sum\limits_{i = 1}^{N}{(x_i - \bar{x})^2}
    }{N - unbiased}
}
\\

unbiased = 0|1

\\

\sigma_x =

$$

## 方差
> Variance
- $Var(x)$
$$
Var(x) = \sigma_x^2
$$

## 协方差
> Covariance
- $Cov(x, y)$

$$



Cov(x, y) = \dfrac{\sum\limits_{i = 1}^{N}{
    [(x_i - \bar{x}) \times (y_i - \bar{y})]
}}{N}

$$


$$
Cov(x, y) = Cov(y, x)
$$

## 相关系数
> correlation coefficient


- pearson相关系数
- $\rho_{x, y}$
$$
\rho_{x, y} = \dfrac{Cov(x, y)}{\sigma_x \times \sigma_y}

$$


$$

\rho_{x, y} = \rho_{y, x}
$$


## 协方差矩阵
- $\sum$
$$
\sum =
\begin{pmatrix}
   \sigma_1^2 & \cdots & Cov(x_1, x_N) \\
   \cdots & \sigma_i^2 & \cdots \\
   Cov(x_N, x_1) & \cdots & \sigma_N^2
\end{pmatrix}

$$
- 对角元素是所有变量的方差
$$
\rho(x_i, x_i) = 1
\\
Cov(x_i, x_i) = \sigma_i^2
$$
- 非对角元素是所有变量组合的协方差
$$
Cov(x, y) = \rho_{x, y} \times \sigma_x \times \sigma_y
$$








---
## r-squared
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
## OLS（最小二乘法）


$$


y = \alpha + \sum\limits_{t = 1}^{T}{\beta_{t} * x_t} + \epsilon

\\

min
\Bigg(
\sum\limits_{t = 1}^{T}{
    \bigg\lgroup
        y - \sum\limits_{t = 1}^{T}{\beta_{t} * x_t}
    \bigg\rgroup^2}
\Bigg)
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
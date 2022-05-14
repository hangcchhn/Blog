# 数学公式
> math formula




- $N$:总体数量
- $n$:样本数量
- $n < N$
---
## 期望
> Expectation
- 均值(mean)
- $E(X)$
$$
E(X) = E(x_i) = \dfrac{1}{N}\sum\limits_{i = 1}^{N}{x_i}
$$

- 总体期望
$$
\mu = \dfrac{1}{N}\sum\limits_{i = 1}^{N}{x_i}
$$
- 样本期望
$$
\bar{x} = \dfrac{1}{n}\sum\limits_{i = 1}^{n}{x_i}
$$


---
## 方差
> Variance
- $Var(x)$
$$
Var(x) = E\{[X - E(X)]^2\}
$$


- 总体方差
$$
\sigma_x^2 = \dfrac{\sum\limits_{i = 1}^{N}
    {(x_i - \mu)^2}}{N}
$$
- 样本方差

$$
s_x^2 = \dfrac{\sum\limits_{i = 1}^{n}
    {(x_i - \bar{x})^2}}{n - 1}
$$

## 标准差
> Standard Deviation
- $\sigma_x$
- $s_x$
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



---
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








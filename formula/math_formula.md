# 数学公式
>


## 标准差
> Standard Deviation
> $\sigma_x$
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


## 协方差
> Covariance
> $cov(x, y)$
$$

cov(x, y) = \dfrac{\sum\limits_{i = 1}^{N}{
    [(x_i - \bar{x}) \times (y_i - \bar{y})]
}}{N}

\\


$$

## 相关系数
> $\rho_{x, y}$


$$
\rho_{x, y} = \dfrac{cov(x, y)}{\sigma_x \times \sigma_y}

$$


## 协方差矩阵
> $\sum$
- 对角元素是所有变量的方差
- 非对角元素是所有变量组合的协方差

$$
\sum = \begin{pmatrix}
   \sigma_1 & \cdots & cov(x_1, x_N) \\
   \cdots & \sigma_i & \cdots \\
   cov(x_N, x_1) & \cdots & \sigma_N
\end{pmatrix}